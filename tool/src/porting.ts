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
 * Recursively takes all of the references from [rootObject] and adds them into [commonSet]
*/
export function expandRefs(rootObject: Object, commonSet = new Set<String>()): void {
  expandRefsInternal(rootObject, commonSet, rootObject);
}

function expandRefsInternal(rootObject: Object, commonSet = new Set<String>(), currentObject: Object): void {

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

  if (currentObject == null) {
    return;
  }

  Object.entries(currentObject).forEach(([k, v]) => {
    switch (k) {
      case "starts":
        expandRefsInternal(rootObject, commonSet, v);
        break;
      case "contains":
      case "variants":
        if (v == null) {
        } else if (Array.isArray(v)) {
          v.forEach(m => {
            expandRefsInternal(rootObject, commonSet, m);
          });
        } else if (typeof v === "string") {
          expandRefsInternal(rootObject, commonSet, v);
          return;
        } else {
          throw "should not be here";
        }
    }
  });
}
