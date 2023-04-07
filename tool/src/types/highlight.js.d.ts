// This is a placeholder so that we can import the below module that has no type information.
// declare module 'highlight.js' {
//
// export interface Foo {
// }
// }


//     interface ModeCallbacks {
//         "on:end"?: Function,
//         "on:begin"?: ModeCallback
//     }
//
//     interface ModeDetails {
//         begin?: RegExp | string | (RegExp | string)[]
//         match?: RegExp | string | (RegExp | string)[]
//         end?: RegExp | string | (RegExp | string)[]
//         // deprecated in favor of `scope`
//         className?: string
//         scope?: string | Record<number, string>
//         beginScope?: string | Record<number, string>
//         endScope?: string | Record<number, string>
//         contains?: ("self" | Mode)[]
//         endsParent?: boolean
//         endsWithParent?: boolean
//         endSameAsBegin?: boolean
//         skip?: boolean
//         excludeBegin?: boolean
//         excludeEnd?: boolean
//         returnBegin?: boolean
//         returnEnd?: boolean
//         __beforeBegin?: Function
//         parent?: Mode
//         starts?:Mode
//         lexemes?: string | RegExp
//         keywords?: Record<string, any> | string
//         beginKeywords?: string
//         relevance?: number
//         illegal?: string | RegExp | Array<string | RegExp>
//         variants?: Mode[]
//         cachedVariants?: Mode[]
//         // parsed
//         subLanguage?: string | string[]
//         isCompiled?: boolean
//         label?: string
//     }
//
// export interface Mode extends ModeCallbacks, ModeDetails {}
