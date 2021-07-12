let requireImage = id => Generator.requireImage("./images/" ++ id ++ ".png")
let requireTexture = id => Generator.requireImage("./textures/" ++ id ++ ".png")

let id = "minecraft-enderman-character"

let name = "Minecraft Enderman Character"

let thumbnail: Generator.thumnbnailDef = {
  url: Generator.requireImage("./thumbnail.jpg"),
}

let images: array<Generator.imageDef> = [
  {
    id: "Background",
    url: requireImage("Background"),
  },
  {
    id: "Folds",
    url: requireImage("Folds"),
  },
]

let textures: array<Generator.textureDef> = [
  {
    id: "Skin",
    url: requireTexture("Steve"),
    standardWidth: 64,
    standardHeight: 64,
  },
]

let steve = TextureMap.MinecraftCharacterLegacy.steve

let script = () => {
  // Define input textures
  Generator.defineTextureInput("Skin", {standardWidth: 64, standardHeight: 64, choices: []})

  // Define user variables
  Generator.defineBooleanInput("Show Folds", true)

  // Get user variables
  let showFolds = Generator.getBooleanInputValue("Show Folds")

  // Background
  Generator.drawImage("Background", (0, 0))

  // Head
  Generator.drawTextureLegacy("Skin", steve.base.head.right, {x: 74, y: 89, w: 64, h: 64}, ()) // Right
  Generator.drawTextureLegacy("Skin", steve.base.head.front, {x: 138, y: 89, w: 64, h: 64}, ()) // Face
  Generator.drawTextureLegacy("Skin", steve.base.head.left, {x: 202, y: 89, w: 64, h: 64}, ()) // Left
  Generator.drawTextureLegacy("Skin", steve.base.head.back, {x: 266, y: 89, w: 64, h: 64}, ()) // Back
  Generator.drawTextureLegacy("Skin", steve.base.head.top, {x: 138, y: 25, w: 64, h: 64}, ()) // Top
  Generator.drawTextureLegacy(
    "Skin",
    steve.base.head.bottom,
    {x: 138, y: 153, w: 64, h: 64},
    ~flip=#Vertical,
    (),
  ) // Bottom

  // Hat layer
  Generator.drawTextureLegacy("Skin", steve.overlay.head.right, {x: 74, y: 89, w: 64, h: 64}, ()) // Right
  Generator.drawTextureLegacy("Skin", steve.overlay.head.front, {x: 138, y: 89, w: 64, h: 64}, ()) // Face
  Generator.drawTextureLegacy("Skin", steve.overlay.head.left, {x: 202, y: 89, w: 64, h: 64}, ()) // Left
  Generator.drawTextureLegacy("Skin", steve.overlay.head.back, {x: 266, y: 89, w: 64, h: 64}, ()) // Back
  Generator.drawTextureLegacy("Skin", steve.overlay.head.top, {x: 138, y: 25, w: 64, h: 64}, ()) // Top
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.head.bottom,
    {x: 138, y: 153, w: 64, h: 64},
    ~flip=#Vertical,
    (),
  ) // Bottom

  // Body
  Generator.drawTextureLegacy("Skin", steve.base.body.right, {x: 268, y: 233, w: 32, h: 96}, ()) // Right
  Generator.drawTextureLegacy("Skin", steve.base.body.front, {x: 300, y: 233, w: 64, h: 96}, ()) // Face
  Generator.drawTextureLegacy("Skin", steve.base.body.left, {x: 364, y: 233, w: 32, h: 96}, ()) // Left
  Generator.drawTextureLegacy("Skin", steve.base.body.back, {x: 396, y: 233, w: 64, h: 96}, ()) // Back
  Generator.drawTextureLegacy("Skin", steve.base.body.top, {x: 300, y: 201, w: 64, h: 32}, ()) // Top
  Generator.drawTextureLegacy(
    "Skin",
    steve.base.body.bottom,
    {x: 300, y: 329, w: 64, h: 32},
    ~flip=#Vertical,
    (),
  ) // Bottom

  // Jacket
  Generator.drawTextureLegacy("Skin", steve.overlay.body.right, {x: 268, y: 233, w: 32, h: 96}, ()) // Right
  Generator.drawTextureLegacy("Skin", steve.overlay.body.front, {x: 300, y: 233, w: 64, h: 96}, ()) // Face
  Generator.drawTextureLegacy("Skin", steve.overlay.body.left, {x: 364, y: 233, w: 32, h: 96}, ()) // Left
  Generator.drawTextureLegacy("Skin", steve.overlay.body.back, {x: 396, y: 233, w: 64, h: 96}, ()) // Back
  Generator.drawTextureLegacy("Skin", steve.overlay.body.top, {x: 300, y: 201, w: 64, h: 32}, ()) // Top
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.body.bottom,
    {x: 300, y: 329, w: 64, h: 32},
    ~flip=#Vertical,
    (),
  ) // Bottom

  // Right arm
  Generator.drawTextureLegacy("Skin", steve.base.rightArm.right, {x: 96, y: 400, w: 16, h: 238}, ()) // Right
  Generator.drawTextureLegacy(
    "Skin",
    steve.base.rightArm.front,
    {x: 112, y: 400, w: 16, h: 238},
    (),
  ) // Face
  Generator.drawTextureLegacy("Skin", steve.base.rightArm.left, {x: 128, y: 400, w: 16, h: 238}, ()) // Left
  Generator.drawTextureLegacy("Skin", steve.base.rightArm.back, {x: 144, y: 400, w: 16, h: 238}, ()) // Back
  Generator.drawTextureLegacy("Skin", steve.base.rightArm.top, {x: 112, y: 384, w: 16, h: 16}, ()) // Top
  Generator.drawTextureLegacy(
    "Skin",
    steve.base.rightArm.bottom,
    {x: 112, y: 638, w: 16, h: 16},
    ~flip=#Vertical,
    (),
  ) // Bottom

  // Right Sleeve
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.rightArm.right,
    {x: 96, y: 400, w: 16, h: 238},
    (),
  ) // Right
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.rightArm.front,
    {x: 112, y: 400, w: 16, h: 238},
    (),
  ) // Face
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.rightArm.left,
    {x: 128, y: 400, w: 16, h: 238},
    (),
  ) // Left
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.rightArm.back,
    {x: 144, y: 400, w: 16, h: 238},
    (),
  ) // Back
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.rightArm.top,
    {x: 112, y: 384, w: 16, h: 16},
    (),
  ) // Top
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.rightArm.bottom,
    {x: 112, y: 638, w: 16, h: 16},
    ~flip=#Vertical,
    (),
  ) // Bottom

  // Left arm
  Generator.drawTextureLegacy("Skin", steve.base.leftArm.right, {x: 190, y: 400, w: 16, h: 238}, ()) // Right
  Generator.drawTextureLegacy("Skin", steve.base.leftArm.front, {x: 206, y: 400, w: 16, h: 238}, ()) // Face
  Generator.drawTextureLegacy("Skin", steve.base.leftArm.left, {x: 222, y: 400, w: 16, h: 238}, ()) // Left
  Generator.drawTextureLegacy("Skin", steve.base.leftArm.back, {x: 174, y: 400, w: 16, h: 238}, ()) // Back
  Generator.drawTextureLegacy("Skin", steve.base.leftArm.top, {x: 206, y: 384, w: 16, h: 16}, ()) // Top
  Generator.drawTextureLegacy(
    "Skin",
    steve.base.leftArm.bottom,
    {x: 206, y: 638, w: 16, h: 16},
    ~flip=#Vertical,
    (),
  ) // Bottom

  // Left Sleeve
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.leftArm.right,
    {x: 190, y: 400, w: 16, h: 238},
    (),
  ) // Right
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.leftArm.front,
    {x: 206, y: 400, w: 16, h: 238},
    (),
  ) // Face
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.leftArm.front,
    {x: 222, y: 400, w: 16, h: 238},
    (),
  ) // Left
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.leftArm.back,
    {x: 174, y: 400, w: 16, h: 238},
    (),
  ) // Back
  Generator.drawTextureLegacy("Skin", steve.overlay.leftArm.top, {x: 206, y: 384, w: 16, h: 16}, ()) // Top
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.leftArm.bottom,
    {x: 206, y: 638, w: 16, h: 16},
    ~flip=#Vertical,
    (),
  ) // Bottom

  // Right leg
  Generator.drawTextureLegacy(
    "Skin",
    steve.base.rightLeg.right,
    {x: 276, y: 400, w: 16, h: 238},
    (),
  ) // Right
  Generator.drawTextureLegacy(
    "Skin",
    steve.base.rightLeg.front,
    {x: 292, y: 400, w: 16, h: 238},
    (),
  ) // Face
  Generator.drawTextureLegacy("Skin", steve.base.rightLeg.left, {x: 308, y: 400, w: 16, h: 238}, ()) // Left
  Generator.drawTextureLegacy("Skin", steve.base.rightLeg.back, {x: 324, y: 400, w: 16, h: 238}, ()) // Back
  Generator.drawTextureLegacy("Skin", steve.base.rightLeg.top, {x: 292, y: 384, w: 16, h: 16}, ()) // Top
  Generator.drawTextureLegacy(
    "Skin",
    steve.base.rightLeg.bottom,
    {x: 292, y: 638, w: 16, h: 16},
    ~flip=#Vertical,
    (),
  ) // Bottom

  // Right Pant
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.rightLeg.right,
    {x: 276, y: 400, w: 16, h: 238},
    (),
  ) // Right
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.rightLeg.front,
    {x: 292, y: 400, w: 16, h: 238},
    (),
  ) // Face
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.rightLeg.left,
    {x: 308, y: 400, w: 16, h: 238},
    (),
  ) // Left
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.rightLeg.back,
    {x: 324, y: 400, w: 16, h: 238},
    (),
  ) // Back
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.rightLeg.top,
    {x: 292, y: 384, w: 16, h: 16},
    (),
  ) // Top
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.rightLeg.bottom,
    {x: 292, y: 638, w: 16, h: 16},
    ~flip=#Vertical,
    (),
  ) // Bottom

  // Left Leg
  Generator.drawTextureLegacy("Skin", steve.base.leftLeg.right, {x: 369, y: 400, w: 16, h: 238}, ()) // Right
  Generator.drawTextureLegacy("Skin", steve.base.leftLeg.front, {x: 385, y: 400, w: 16, h: 238}, ()) // Face
  Generator.drawTextureLegacy("Skin", steve.base.leftLeg.left, {x: 401, y: 400, w: 16, h: 238}, ()) // Left
  Generator.drawTextureLegacy("Skin", steve.base.leftLeg.back, {x: 353, y: 400, w: 16, h: 238}, ()) // Back
  Generator.drawTextureLegacy("Skin", steve.base.leftLeg.top, {x: 385, y: 384, w: 16, h: 16}, ()) // Top
  Generator.drawTextureLegacy(
    "Skin",
    steve.base.leftLeg.bottom,
    {x: 385, y: 638, w: 16, h: 16},
    ~flip=#Vertical,
    (),
  ) // Bottom

  // Left Pant
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.leftLeg.right,
    {x: 369, y: 400, w: 16, h: 238},
    (),
  ) // Right
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.leftLeg.front,
    {x: 385, y: 400, w: 16, h: 238},
    (),
  ) // Face
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.leftLeg.left,
    {x: 401, y: 400, w: 16, h: 238},
    (),
  ) // Left
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.leftLeg.back,
    {x: 353, y: 400, w: 16, h: 238},
    (),
  ) // Back
  Generator.drawTextureLegacy("Skin", steve.overlay.leftLeg.top, {x: 385, y: 384, w: 16, h: 16}, ()) // Top
  Generator.drawTextureLegacy(
    "Skin",
    steve.overlay.leftLeg.bottom,
    {x: 385, y: 638, w: 16, h: 16},
    ~flip=#Vertical,
    (),
  ) // Bottom

  // Fold Lines
  if showFolds {
    Generator.drawImage("Folds", (0, 0))
  }
}

let generator: Generator.generatorDef = {
  id: id,
  name: name,
  thumbnail: Some(thumbnail),
  video: None,
  instructions: None,
  images: images,
  textures: textures,
  script: script,
}
