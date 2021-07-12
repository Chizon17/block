// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Generator = require("../../builder/modules/Generator.bs.js");

function requireImage(id) {
  return require("./images/" + id + ".png");
}

function requireTexture(id) {
  return require("./textures/" + id + ".png");
}

var id = "minecraft-cat-character";

var name = "Minecraft Cat Character";

var thumbnail = {
  url: require("./thumbnail.jpg")
};

var images = [
  {
    id: "Background",
    url: requireImage("Background")
  },
  {
    id: "Folds",
    url: requireImage("Folds")
  }
];

var textures = [{
    id: "Skin",
    url: requireTexture("Skin"),
    standardWidth: 64,
    standardHeight: 64
  }];

function script(param) {
  Generator.defineTextureInput("Skin", {
        standardWidth: 64,
        standardHeight: 64,
        choices: []
      });
  Generator.defineBooleanInput("Show Folds", true);
  var showFolds = Generator.getBooleanInputValue("Show Folds");
  Generator.drawImage("Background", [
        0,
        0
      ]);
  Generator.drawTextureLegacy("Skin", {
        x: 0,
        y: 8,
        w: 8,
        h: 8
      }, {
        x: 40,
        y: 73,
        w: 40,
        h: 32
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 16,
        y: 0,
        w: 8,
        h: 8
      }, {
        x: 80,
        y: 105,
        w: 40,
        h: 40
      }, "Vertical", undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 16,
        y: 8,
        w: 8,
        h: 8
      }, {
        x: 120,
        y: 73,
        w: 40,
        h: 32
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 24,
        y: 8,
        w: 8,
        h: 8
      }, {
        x: 160,
        y: 73,
        w: 40,
        h: 32
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 8,
        y: 0,
        w: 8,
        h: 8
      }, {
        x: 80,
        y: 33,
        w: 40,
        h: 40
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 8,
        y: 8,
        w: 8,
        h: 8
      }, {
        x: 80,
        y: 73,
        w: 40,
        h: 32
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 32,
        y: 8,
        w: 8,
        h: 8
      }, {
        x: 40,
        y: 73,
        w: 40,
        h: 32
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 48,
        y: 0,
        w: 8,
        h: 8
      }, {
        x: 80,
        y: 105,
        w: 40,
        h: 40
      }, "Vertical", undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 48,
        y: 8,
        w: 8,
        h: 8
      }, {
        x: 120,
        y: 73,
        w: 40,
        h: 32
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 56,
        y: 8,
        w: 8,
        h: 8
      }, {
        x: 160,
        y: 73,
        w: 40,
        h: 32
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 40,
        y: 0,
        w: 8,
        h: 8
      }, {
        x: 80,
        y: 33,
        w: 40,
        h: 40
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 40,
        y: 8,
        w: 8,
        h: 8
      }, {
        x: 80,
        y: 73,
        w: 40,
        h: 32
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 40,
        y: 20,
        w: 16,
        h: 12
      }, {
        x: 251,
        y: 248,
        w: 64,
        h: 32
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 44,
        y: 16,
        w: 4,
        h: 4
      }, {
        x: 267,
        y: 232,
        w: 16,
        h: 16
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 48,
        y: 16,
        w: 4,
        h: 4
      }, {
        x: 267,
        y: 280,
        w: 16,
        h: 16
      }, "Vertical", undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 40,
        y: 36,
        w: 16,
        h: 12
      }, {
        x: 251,
        y: 248,
        w: 64,
        h: 32
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 44,
        y: 32,
        w: 4,
        h: 4
      }, {
        x: 267,
        y: 232,
        w: 16,
        h: 16
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 48,
        y: 32,
        w: 4,
        h: 4
      }, {
        x: 267,
        y: 280,
        w: 16,
        h: 16
      }, "Vertical", undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 32,
        y: 52,
        w: 16,
        h: 12
      }, {
        x: 340,
        y: 248,
        w: 64,
        h: 32
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 36,
        y: 48,
        w: 4,
        h: 4
      }, {
        x: 356,
        y: 232,
        w: 16,
        h: 16
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 40,
        y: 48,
        w: 4,
        h: 4
      }, {
        x: 356,
        y: 280,
        w: 16,
        h: 16
      }, "Vertical", undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 48,
        y: 52,
        w: 16,
        h: 12
      }, {
        x: 340,
        y: 248,
        w: 64,
        h: 32
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 52,
        y: 48,
        w: 4,
        h: 4
      }, {
        x: 356,
        y: 232,
        w: 16,
        h: 16
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 56,
        y: 48,
        w: 4,
        h: 4
      }, {
        x: 356,
        y: 280,
        w: 16,
        h: 16
      }, "Vertical", undefined, undefined, undefined);
  var ob = 88;
  Generator.drawTextureLegacy("Skin", {
        x: 0,
        y: 20,
        w: 16,
        h: 12
      }, {
        x: 251,
        y: ob + 248 | 0,
        w: 64,
        h: 32
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 4,
        y: 16,
        w: 4,
        h: 4
      }, {
        x: 267,
        y: ob + 232 | 0,
        w: 16,
        h: 16
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 8,
        y: 16,
        w: 4,
        h: 4
      }, {
        x: 267,
        y: ob + 280 | 0,
        w: 16,
        h: 16
      }, "Vertical", undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 0,
        y: 36,
        w: 16,
        h: 12
      }, {
        x: 251,
        y: ob + 248 | 0,
        w: 64,
        h: 32
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 4,
        y: 32,
        w: 4,
        h: 4
      }, {
        x: 267,
        y: ob + 232 | 0,
        w: 16,
        h: 16
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 8,
        y: 32,
        w: 4,
        h: 4
      }, {
        x: 267,
        y: ob + 280 | 0,
        w: 16,
        h: 16
      }, "Vertical", undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 16,
        y: 52,
        w: 16,
        h: 12
      }, {
        x: 340,
        y: ob + 248 | 0,
        w: 64,
        h: 32
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 20,
        y: 48,
        w: 4,
        h: 4
      }, {
        x: 356,
        y: ob + 232 | 0,
        w: 16,
        h: 16
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 24,
        y: 48,
        w: 4,
        h: 4
      }, {
        x: 356,
        y: ob + 280 | 0,
        w: 16,
        h: 16
      }, "Vertical", undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 0,
        y: 52,
        w: 16,
        h: 12
      }, {
        x: 340,
        y: ob + 248 | 0,
        w: 64,
        h: 32
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 4,
        y: 48,
        w: 4,
        h: 4
      }, {
        x: 356,
        y: ob + 232 | 0,
        w: 16,
        h: 16
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 8,
        y: 48,
        w: 4,
        h: 4
      }, {
        x: 356,
        y: ob + 280 | 0,
        w: 16,
        h: 16
      }, "Vertical", undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 0,
        y: 20,
        w: 16,
        h: 6
      }, {
        x: 469,
        y: 294,
        w: 32,
        h: 64
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 0,
        y: 26,
        w: 16,
        h: 6
      }, {
        x: 541,
        y: 294,
        w: 32,
        h: 64
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 5,
        y: 17,
        w: 1,
        h: 1
      }, {
        x: 477,
        y: 358,
        w: 8,
        h: 8
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 9,
        y: 17,
        w: 1,
        h: 1
      }, {
        x: 549,
        y: 358,
        w: 8,
        h: 8
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 0,
        y: 36,
        w: 16,
        h: 6
      }, {
        x: 469,
        y: 294,
        w: 32,
        h: 64
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 0,
        y: 42,
        w: 16,
        h: 6
      }, {
        x: 541,
        y: 294,
        w: 32,
        h: 64
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 5,
        y: 33,
        w: 1,
        h: 1
      }, {
        x: 477,
        y: 358,
        w: 8,
        h: 8
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 9,
        y: 33,
        w: 1,
        h: 1
      }, {
        x: 549,
        y: 358,
        w: 8,
        h: 8
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 10,
        y: 13,
        w: 4,
        h: 3
      }, {
        x: 256,
        y: 84,
        w: 24,
        h: 12
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 10,
        y: 13,
        w: 4,
        h: 1
      }, {
        x: 256,
        y: 76,
        w: 24,
        h: 8
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 13,
        y: 13,
        w: 1,
        h: 3
      }, {
        x: 280,
        y: 84,
        w: 8,
        h: 12
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 10,
        y: 15,
        w: 4,
        h: 1
      }, {
        x: 256,
        y: 96,
        w: 24,
        h: 8
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 10,
        y: 13,
        w: 1,
        h: 3
      }, {
        x: 248,
        y: 84,
        w: 8,
        h: 12
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 42,
        y: 13,
        w: 4,
        h: 3
      }, {
        x: 256,
        y: 84,
        w: 24,
        h: 12
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 42,
        y: 13,
        w: 4,
        h: 1
      }, {
        x: 256,
        y: 76,
        w: 24,
        h: 8
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 45,
        y: 13,
        w: 1,
        h: 3
      }, {
        x: 280,
        y: 84,
        w: 8,
        h: 12
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 42,
        y: 15,
        w: 4,
        h: 1
      }, {
        x: 256,
        y: 96,
        w: 24,
        h: 8
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 42,
        y: 13,
        w: 1,
        h: 3
      }, {
        x: 248,
        y: 84,
        w: 8,
        h: 12
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 16,
        y: 20,
        w: 4,
        h: 12
      }, {
        x: 40,
        y: 241,
        w: 48,
        h: 128
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 20,
        y: 20,
        w: 8,
        h: 12
      }, {
        x: 88,
        y: 241,
        w: 32,
        h: 128
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 28,
        y: 20,
        w: 4,
        h: 12
      }, {
        x: 120,
        y: 241,
        w: 48,
        h: 128
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 32,
        y: 20,
        w: 8,
        h: 12
      }, {
        x: 168,
        y: 241,
        w: 32,
        h: 128
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 20,
        y: 16,
        w: 8,
        h: 4
      }, {
        x: 88,
        y: 193,
        w: 32,
        h: 48
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 28,
        y: 16,
        w: 8,
        h: 4
      }, {
        x: 88,
        y: 369,
        w: 32,
        h: 48
      }, "Vertical", undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 16,
        y: 36,
        w: 4,
        h: 12
      }, {
        x: 40,
        y: 241,
        w: 48,
        h: 128
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 20,
        y: 36,
        w: 8,
        h: 12
      }, {
        x: 88,
        y: 241,
        w: 32,
        h: 128
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 28,
        y: 36,
        w: 4,
        h: 12
      }, {
        x: 120,
        y: 241,
        w: 48,
        h: 128
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 32,
        y: 36,
        w: 8,
        h: 12
      }, {
        x: 168,
        y: 241,
        w: 32,
        h: 128
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 20,
        y: 32,
        w: 8,
        h: 4
      }, {
        x: 88,
        y: 193,
        w: 32,
        h: 48
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 28,
        y: 32,
        w: 8,
        h: 4
      }, {
        x: 88,
        y: 369,
        w: 32,
        h: 48
      }, "Vertical", undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 9,
        y: 1,
        w: 1,
        h: 1
      }, {
        x: 168,
        y: 168,
        w: 24,
        h: 16
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 9,
        y: 0,
        w: 1,
        h: 1
      }, {
        x: 168,
        y: 152,
        w: 24,
        h: 16
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 14,
        y: 1,
        w: 1,
        h: 1
      }, {
        x: 245,
        y: 169,
        w: 24,
        h: 16
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 14,
        y: 0,
        w: 1,
        h: 1
      }, {
        x: 245,
        y: 153,
        w: 24,
        h: 16
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 41,
        y: 1,
        w: 1,
        h: 1
      }, {
        x: 168,
        y: 168,
        w: 24,
        h: 16
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 41,
        y: 0,
        w: 1,
        h: 1
      }, {
        x: 168,
        y: 152,
        w: 24,
        h: 16
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 46,
        y: 1,
        w: 1,
        h: 1
      }, {
        x: 245,
        y: 169,
        w: 24,
        h: 16
      }, undefined, undefined, undefined, undefined);
  Generator.drawTextureLegacy("Skin", {
        x: 46,
        y: 0,
        w: 1,
        h: 1
      }, {
        x: 245,
        y: 153,
        w: 24,
        h: 16
      }, undefined, undefined, undefined, undefined);
  Generator.drawImage("Background", [
        0,
        0
      ]);
  if (showFolds) {
    return Generator.drawImage("Folds", [
                0,
                0
              ]);
  }
  
}

var generator_thumbnail = thumbnail;

var generator = {
  id: id,
  name: name,
  thumbnail: generator_thumbnail,
  video: undefined,
  instructions: undefined,
  images: images,
  textures: textures,
  script: script
};

exports.requireImage = requireImage;
exports.requireTexture = requireTexture;
exports.id = id;
exports.name = name;
exports.thumbnail = thumbnail;
exports.images = images;
exports.textures = textures;
exports.script = script;
exports.generator = generator;
/* thumbnail Not a pure module */
