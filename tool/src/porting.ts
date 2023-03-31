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
 * Recursively takes all of the references from [nonCircularObject] and adds them into [commonSet]
 * 
 * When first called, circularObj needs to be the same as nonCircularObj
*/
export function expandRefs(circularObj: Object, commonSet = new Set<String>(), nonCircularObject: Object | undefined,): void {
  if (nonCircularObject == undefined) {
    nonCircularObject = circularObj;
  }

  if (typeof nonCircularObject === "string") {
    if (commonSet.has(nonCircularObject)) {
      return;
    }
    if (nonCircularObject.startsWith("~")) {
      commonSet.add(nonCircularObject);
      let lodashGetKey: PropertyPath = getLodashGetKey(nonCircularObject);

      expandRefs(circularObj, commonSet, _.get(circularObj, lodashGetKey));
    }
  }

  if (nonCircularObject == null) {
    return;
  }

  Object.entries(nonCircularObject).forEach(([k, v]) => {
    switch (k) {
      case "starts":
        expandRefs(circularObj, commonSet, v);
        break;
      case "contains":
      case "variants":
        if (v == null) {
        } else if (Array.isArray(v)) {
          v.forEach(m => {
            expandRefs(circularObj, commonSet, m);
          });
        } else if (typeof v === "string") {
          expandRefs(circularObj, commonSet, v);
          return;
        } else {
          throw "should not be here";
        }
    }
  });
}