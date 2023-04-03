import _, { PropertyPath } from "lodash";

/**
 * Gets the path to the pbject by reference string
 * 
 * @param str reference string  `~contains~0` -> `*.contains[0]`
 * @returns 
 */
export function getLodashGetKey(str: String): PropertyPath {
  let lodashGetKey = "";
  for (let item of str.split("~").slice(1)) {
    if (isNaN(parseInt(item, 10))) {
      lodashGetKey += "." + item;
    } else {
      lodashGetKey += "[" + item + "]";
    }
  }

  lodashGetKey = lodashGetKey.slice(1);
  return lodashGetKey;
}

/**
 * Recursively takes all of the references from [rootObject] and return them in a set.
*/
export function expandRefs(rootObject: Object): Set<String> {
  let commonSet = new Set<String>();
  expandRefsInternal(rootObject, commonSet, rootObject);

  return commonSet;
}

function expandRefsInternal(rootObject: Object, commonSet: Set<String>, currentObject: Object): void {

  if (typeof currentObject === "string") {
    if (commonSet.has(currentObject)) {
      return;
    }
    if (currentObject.startsWith("~")) {
      commonSet.add(currentObject);
      let lodashGetKey: PropertyPath = getLodashGetKey(currentObject);

      expandRefsInternal(rootObject, commonSet, _.get(rootObject, lodashGetKey));
    }
  }

  if (currentObject === null) {
    return;
  }

  let entries = Object.entries(currentObject);

  for (const item of entries) {
    let [k, v] = item;

    switch (k) {
      case "starts":
        expandRefsInternal(rootObject, commonSet, v);
        break;

      case "contains":
      case "variants":
        if (v === null) {
          break;
        }

        if (Array.isArray(v)) {
          for (const m of v) {
            expandRefsInternal(rootObject, commonSet, m);
          }

          break;
        }

        if (typeof v === "string") {
          expandRefsInternal(rootObject, commonSet, v);
          break;
        }

        throw "should not be here";
    }
  }
}
