import { LanguageFn } from "highlight.js";

import module from "module";
var require = module.createRequire(import.meta.url);

const pathToRoot = '../../..';

export type PortableLanguageObject = {
    name: string,
    factory: (hljs: LanguageFn) => any,
    community: boolean,
}

export const communityLanguages: Array<PortableLanguageObject> = [
    {
        name: "4d",
        factory: require(`${pathToRoot}/vendor/highlightjs-4d/src/4d`),
        community: true,
    },
    {
        name: "cshtml-razor",
        factory: require(`${pathToRoot}/vendor/highlightjs-cshtml-razor/src/languages/cshtml-razor.js`),
        community: true,
    },
    {
        name: "curl",
        factory: require(`${pathToRoot}/vendor/highlightjs-curl/src/languages/curl.js`),
        community: true,
    },
    {
        name: "cypher",
        factory: require(`${pathToRoot}/vendor/highlightjs-cypher/src/cypher.js`),
        community: true,
    },
    {
        name: "dylan",
        factory: require(`${pathToRoot}/vendor/highlightjs-dylan/src/dylan.js`),
        community: true,
    },
    {
        name: "gdscript",
        factory: require(`${pathToRoot}/vendor/highlightjs-gdscript/src/languages/gdscript.js`).definer,
        community: true,
    },
    {
        name: "gn",
        factory: require(`${pathToRoot}/vendor/highlightjs-GN/gn.js`).definer,
        community: true,
    },
    {
        name: "hakaru",
        factory: require(`${pathToRoot}/vendor/highlightjs-hakaru/src/hakaru.js`),
        community: true,
    },
    {
        name: "minecraft-lang",
        factory: require(`${pathToRoot}/vendor/highlightjs-lang/src/languages/lang.js`),
        community: true,
    },
    {
        name: "mde-atl",
        factory: require(`${pathToRoot}/vendor/highlightjs-mde-languages/src/atl.js`),
        community: true,
    },
    {
        name: "mde-ocl",
        factory: require(`${pathToRoot}/vendor/highlightjs-mde-languages/src/ocl.js`),
        community: true,
    },
    {
        name: "mde-xcore",
        factory: require(`${pathToRoot}/vendor/highlightjs-mde-languages/src/xcore.js`),
        community: true,
    },
    {
        name: "mirc",
        factory: require(`${pathToRoot}/vendor/highlightjs-mirc/mirc.js`),
        community: true,
    },
    {
        name: "oz",
        factory: require(`${pathToRoot}/vendor/highlightjs-oz/src/oz.js`),
        community: true,
    },
    {
        name: "robot",
        factory: require(`${pathToRoot}/vendor/highlightjs-robot/robot.js`).definer,
        community: true,
    },
    {
        name: "robot-txt",
        factory: require(`${pathToRoot}/vendor/highlightjs-robots-txt/src/robots-txt.js`),
        community: true,
    },
    {
        name: "rpm-specfile",
        factory: require(`${pathToRoot}/vendor/highlightjs-rpm-specfile/rpm-specfile.js`).definer,
        community: true,
    },
    {
        name: "abap",
        factory: require(`${pathToRoot}/vendor/highlightjs-sap-abap/src/abap.js`),
        community: true,
    },
    {
        name: "shexc",
        factory: require(`${pathToRoot}/vendor/highlightjs-shexc/src/shexc.js`),
        community: true,
    },
    {
        name: "solidity",
        factory: require(`${pathToRoot}/vendor/highlightjs-solidity/src/languages/solidity.js`),
        community: true,
    },
    {
        name: "yul",
        factory: require(`${pathToRoot}/vendor/highlightjs-solidity/src/languages/yul.js`),
        community: true,
    },
    {
        name: "iecst",
        factory: require(`${pathToRoot}/vendor/highlightjs-structured-text/src/iecst.js`),
        community: true,
    },
    {
        name: "supercollider",
        factory: require(`${pathToRoot}/vendor/highlightjs-supercollider/supercollider.js`).definer,
        community: true,
    },
    {
        name: "terraform",
        factory: require(`${pathToRoot}/vendor/highlightjs-terraform/terraform.js`).definer,
        community: true,
    },
    {
        name: "vue",
        factory: require(`${pathToRoot}/vendor/highlightjs-vue/vue.js`).definer,
        community: true,
    },
    {
        name: "zenscript",
        factory: require(`${pathToRoot}/vendor/highlightjs-zenscript/src/zenscript.js`),
        community: true,
    },
];
