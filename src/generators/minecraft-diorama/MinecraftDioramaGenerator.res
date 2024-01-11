let requireTexture = id => Generator.requireImage("./textures/" ++ id ++ ".png")
module TexturePicker = MinecraftDiorama_TexturePicker
module Textures = MinecraftDiorama_Textures
module Face = MinecraftDiorama_Face
module Types = MinecraftDiorama_Types

let id = "minecraft-diorama"

let name = "Minecraft Diorama"

let history = ["Mystery"]

let thumbnail: Generator.thumnbnailDef = {
  url: Generator.requireImage("./thumbnail/v2-thumbnail-256.jpeg"),
}

let images: array<Generator.imageDef> = [
  {id: "Title", url: Generator.requireImage("./images/Title.png")},
]

let textures: array<Generator.textureDef> = Belt.Array.concat(
  Textures.textures,
  [
    {
      id: "Tab",
      url: requireTexture("Tab"),
      standardWidth: 128,
      standardHeight: 128,
    },
    {
      id: "Tab Left",
      url: requireTexture("TabLeft"),
      standardWidth: 128,
      standardHeight: 128,
    },
    {
      id: "Tab Right",
      url: requireTexture("TabRight"),
      standardWidth: 128,
      standardHeight: 128,
    },
    {
      id: "Tab Middle",
      url: requireTexture("TabMiddle"),
      standardWidth: 128,
      standardHeight: 128,
    },
    {
      id: "Fold",
      url: requireTexture("Fold"),
      standardWidth: 128,
      standardHeight: 128,
    },
    {
      id: "Debug",
      url: requireTexture("debug"),
      standardWidth: 128,
      standardHeight: 128,
    },
  ],
)

let script = () => {
  Generator.defineSelectInput("Version", Textures.versionIds)
  let versionId = Generator.getSelectInputValue("Version")

  Generator.defineCustomStringInput(
    MinecraftDiorama_Constants.currentDioramaTextureId,
    onChange => {
      <TexturePicker versionId={versionId} onChange={onChange} />
    },
  )

  let editMode = Generator.defineAndGetSelectInput("Edit Mode", ["Blocks", "Tabs", "Folds"])

  /* // Decode the selected texture
  let selectedTextureFrame = TexturePicker.SelectedTexture.decode(
    Generator.getStringInputValue("SelectedTextureFrame"),
  )

  // Decode the added textures
  let selectedTextureFrames = TexturePicker.SelectedTexture.decodeArray(
    Generator.getStringInputValue("SelectedTextureFrames"),
  )

  // Show a button which adds the selected texture to the page
  Generator.defineButtonInput("Add Item", () => {
    switch selectedTextureFrame {
    | Some(selectedTextureFrame) => {
        let selectedTextureFrames = Belt.Array.concat(selectedTextureFrames, [selectedTextureFrame])
        Generator.setStringInputValue(
          "SelectedTextureFrames",
          TexturePicker.SelectedTexture.encodeArray(selectedTextureFrames),
        )
      }
    | None => ()
    }
  }) */

  Generator.defineSelectInput("Diorama Size", ["800%", "400%", "200%"])
  let dioramaSize = Generator.getSelectInputValue("Diorama Size")

  let ox = 42
  let oy = 40

  switch dioramaSize {
  | "800%" => Types.Block.draw(ox, oy, 128, 4, 6, editMode)
  | "400%" => Types.Block.draw(ox, oy, 64, 8, 12, editMode)
  | "200%" => Types.Block.draw(ox, oy, 32, 16, 24, editMode)
  | _ => ()
  }

  // Tabs

  switch dioramaSize {
  | "800%" => Types.Tabs.draw(ox, oy, 128, 4, 6, editMode)
  | "400%" => Types.Tabs.draw(ox, oy, 64, 8, 12, editMode)
  | "200%" => Types.Tabs.draw(ox, oy, 32, 16, 24, editMode)
  | _ => ()
  }

  // Folds

  switch dioramaSize {
  | "800%" => Types.Folds.draw(ox, oy, 128, 4, 6, editMode)
  | "400%" => Types.Folds.draw(ox, oy, 64, 8, 12, editMode)
  | "200%" => Types.Folds.draw(ox, oy, 32, 16, 24, editMode)
  | _ => ()
  }

  Generator.defineButtonInput("Clear", () => {
    // Save things we don't want cleared
    let currentTextureChoice = Generator.getStringInputValue(
      MinecraftDiorama_Constants.currentDioramaTextureId,
    )
    let currentVersionId = versionId
    let currentEditMode = editMode
    let currentDioramaSize = dioramaSize

    // Clear everything
    Generator.clearStringInputValues()
    Generator.clearBooleanInputValues()
    Generator.clearSelectInputValues()

    // Restore everything except the blocks, tabs and folds
    Generator.setStringInputValue(
      MinecraftDiorama_Constants.currentDioramaTextureId,
      currentTextureChoice,
    )
    Generator.setSelectInputValue("Version", currentVersionId)
    Generator.setSelectInputValue("Edit Mode", currentEditMode)
    Generator.setSelectInputValue("Diorama Size", currentDioramaSize)
  })

  Generator.drawImage("Title", (0, 0))
  Generator.fillBackgroundColorWithWhite()
}

let generator: Generator.generatorDef = {
  id,
  name,
  history,
  thumbnail: Some(thumbnail),
  video: None,
  instructions: None,
  images,
  textures,
  script,
}
