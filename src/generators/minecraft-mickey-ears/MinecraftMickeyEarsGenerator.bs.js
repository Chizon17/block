// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var React = require("react");
var Generator = require("../../builder/modules/Generator.bs.js");
var Minecraft = require("../Minecraft.bs.js");
var Caml_option = require("rescript/lib/js/caml_option.js");
var Generator_Markdown = require("../../builder/views/Generator_Markdown.bs.js");

function requireImage(id) {
  return require("./images/" + id + ".png");
}

function requireTexture(id) {
  return require("./textures/" + id + ".png");
}

var id = "minecraft-mickey-ears";

var name = "Minecraft Mickey Ears";

var history = ["Originally developed by ArgentiCityZen14."];

var instructions = "\n## How to use the Minecraft Mickey Ears Generator?\n\n1. Select your Minecraft skin file.\n2. Choose the your Minecraft skin file model type.\n3. Download and print your Mickey Ears papercraft.\n";

var thumbnail = {
  url: require("./thumbnail/v2-thumbnail-256.jpeg")
};

var images = [
  {
    id: "Background",
    url: requireImage("Background")
  },
  {
    id: "Tabs",
    url: requireImage("Tabs")
  },
  {
    id: "Folds",
    url: requireImage("Folds")
  },
  {
    id: "Minnie Bow",
    url: requireImage("Minnie-Bow")
  }
];

var textures = [
  {
    id: "Skin 1",
    url: requireTexture("Original"),
    standardWidth: 64,
    standardHeight: 64
  },
  {
    id: "Original",
    url: requireTexture("Original"),
    standardWidth: 64,
    standardHeight: 64
  },
  {
    id: "Steve",
    url: requireTexture("Steve"),
    standardWidth: 64,
    standardHeight: 64
  },
  {
    id: "Alex",
    url: requireTexture("Alex"),
    standardWidth: 64,
    standardHeight: 64
  },
  {
    id: "Zombie",
    url: requireTexture("Zombie"),
    standardWidth: 64,
    standardHeight: 64
  },
  {
    id: "Enderman",
    url: requireTexture("Enderman"),
    standardWidth: 64,
    standardHeight: 64
  },
  {
    id: "Skeleton",
    url: requireTexture("Skeleton"),
    standardWidth: 64,
    standardHeight: 64
  },
  {
    id: "Wither Skeleton",
    url: requireTexture("Wither_Skeleton"),
    standardWidth: 64,
    standardHeight: 64
  },
  {
    id: "Creeper",
    url: requireTexture("Creeper"),
    standardWidth: 64,
    standardHeight: 64
  },
  {
    id: "Blaze",
    url: requireTexture("Blaze"),
    standardWidth: 64,
    standardHeight: 64
  },
  {
    id: "R2-D2",
    url: requireTexture("R2-D2"),
    standardWidth: 64,
    standardHeight: 64
  },
  {
    id: "Mickey",
    url: requireTexture("Mickey"),
    standardWidth: 64,
    standardHeight: 64
  },
  {
    id: "EPCOT",
    url: requireTexture("Epcot"),
    standardWidth: 64,
    standardHeight: 64
  }
];

function script(param) {
  for(var i = 1; i <= 1; ++i){
    Generator.defineTextureInput("Skin " + i.toString(), {
          standardWidth: 64,
          standardHeight: 64,
          choices: [
            "Original",
            "Steve",
            "Alex",
            "Zombie",
            "Enderman",
            "Skeleton",
            "Wither Skeleton",
            "Creeper",
            "Blaze",
            "R2-D2",
            "Mickey",
            "EPCOT"
          ]
        });
  }
  var showFolds = Generator.defineAndGetBooleanInput("Show Folds", true);
  var actionFigure = Generator.defineAndGetBooleanInput("Minnie Bow", false);
  var steve = Minecraft.Character.steve;
  Generator.drawImage("Background", [
        0,
        0
      ]);
  var textureId = "Skin 1";
  var x = 99;
  var y = 79;
  var x$1 = x - 64 | 0;
  var y$1 = y - 64 | 0;
  if (!Generator.hasTexture(textureId)) {
    return ;
  }
  Generator.drawImage("Tabs", [
        x$1 - 26 | 0,
        y$1 - 1 | 0
      ]);
  var showOverlay = Generator.getBooleanInputValueWithDefault("Show " + textureId + " Overlay", true);
  Generator.defineRegionInput([
        x$1,
        y$1,
        256,
        192
      ], (function (param) {
          Generator.setBooleanInputValue("Show " + textureId + " Overlay", !showOverlay);
        }));
  Minecraft.drawCuboid(textureId, steve.base.head, [
        x$1,
        y$1
      ], [
        64,
        64,
        64
      ], undefined, undefined, undefined);
  if (showOverlay) {
    Minecraft.drawCuboid(textureId, steve.overlay.head, [
          x$1,
          y$1
        ], [
          64,
          64,
          64
        ], undefined, undefined, undefined);
  }
  if (showFolds) {
    Generator.drawImage("Folds", [
          x$1 - 26 | 0,
          y$1 - 1 | 0
        ]);
  }
  if (actionFigure) {
    return Generator.drawImage("Minnie Bow", [
                x$1 + 64 | 0,
                y$1 + 128 | 0
              ]);
  }
  
}

var generator_thumbnail = thumbnail;

var generator_instructions = Caml_option.some(React.createElement(Generator_Markdown.make, {
          children: instructions
        }));

var generator = {
  id: id,
  name: name,
  history: history,
  thumbnail: generator_thumbnail,
  video: undefined,
  instructions: generator_instructions,
  images: images,
  textures: textures,
  script: script
};

exports.requireImage = requireImage;
exports.requireTexture = requireTexture;
exports.id = id;
exports.name = name;
exports.history = history;
exports.instructions = instructions;
exports.thumbnail = thumbnail;
exports.images = images;
exports.textures = textures;
exports.script = script;
exports.generator = generator;
/* thumbnail Not a pure module */
