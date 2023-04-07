export type StringObject<T> = { [key: string]: T };

export function expand<T>(arrays: T[][]): T[] {
  const result: T[] = [];

  for (const arr of arrays) {
    result.push(...arr);
  }

  return result;
}
