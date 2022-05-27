module Builder = Generator_Builder
module PageSize = Generator_PageSize
module Markdown = Generator_Markdown

@val external requireImage: string => string = "require"

type imageDef = Builder.imageDef
type textureDef = Builder.textureDef
type generatorDef = Builder.generatorDef
type thumnbnailDef = Builder.thumnbnailDef
type videoDef = Builder.videoDef
type instructionsDef = Builder.instructionsDef

let model = ref(Builder.Model.make())

let setModel = newModel => {
  model := newModel
}

let getModel = () => model.contents

let getPagePixelColor = (id, x, y) => {
  Builder.getPagePixelColor(model.contents, id, x, y)
}

let getCurrentPagePixelColor = (x, y) => {
  Builder.getCurrentPagePixelColor(model.contents, x, y)
}

let getTexturePixelColor = (id, x, y) => {
  Builder.getTexturePixelColor(model.contents, id, x, y)
}

let getImagePixelColor = (id, x, y) => {
  Builder.getImagePixelColor(model.contents, id, x, y)
}

let clearStringInputValues = () => {
  model := Builder.clearStringInputValues(model.contents)
}

let defineButtonInput = (id, onClick) => {
  model := Builder.defineButtonInput(model.contents, id, onClick)
}

let defineRegionInput = (region, callback) => {
  model := Builder.defineRegionInput(model.contents, region, callback)
}

let defineCustomStringInput = (id, fn) => {
  model := Builder.defineCustomStringInput(model.contents, id, fn)
}

let getStringInputValue = (id: string) => {
  Builder.getStringInputValue(model.contents, id)
}

let setStringInputValue = (id: string, value: string) => {
  model := Builder.setStringInputValue(model.contents, id, value)
}

let getBooleanInputValue = (id: string) => {
  Builder.getBooleanInputValue(model.contents, id)
}

let setBooleanInputValue = (id, value) => {
  model := Builder.setBooleanInputValue(model.contents, id, value)
}

let defineBooleanInput = (id, initial) => {
  model := Builder.defineBooleanInput(model.contents, id, initial)
}

let defineAndGetBooleanInput = (id, initial) => {
  defineBooleanInput(id, initial)
  getBooleanInputValue(id)
}

let getBooleanInputValueWithDefault = (id: string, default: bool) => {
  Builder.getBooleanInputValueWithDefault(model.contents, id, default)
}

let setSelectInputValue = (id, value) => {
  model := Builder.setSelectInputValue(model.contents, id, value)
}

let getSelectInputValue = (id: string) => {
  Builder.getSelectInputValue(model.contents, id)
}

let defineSelectInput = (id, options) => {
  model := Builder.defineSelectInput(model.contents, id, options)
}

let defineAndGetSelectInput = (id, options) => {
  defineSelectInput(id, options)
  getSelectInputValue(id)
}

let getRangeInputValue = (id: string) => {
  Builder.getRangeInputValue(model.contents, id)
}

let defineRangeInput = (id: string, options) => {
  model := Builder.defineRangeInput(model.contents, id, options)
}

let defineAndGetRangeInput = (id: string, options) => {
  defineRangeInput(id, options)
  getRangeInputValue(id)
}

let defineTextureInput = (id: string, options) => {
  model := Builder.defineTextureInput(model.contents, id, options)
}

let defineText = (text: string) => {
  model := Builder.defineText(model.contents, text)
}

let usePage = id => {
  model := Builder.usePage(model.contents, id)
}

let fillBackgroundColor = (color: string) => {
  model := Generator_Builder.fillBackgroundColor(model.contents, color)
}

let fillBackgroundColorWithWhite = () => {
  model := Generator_Builder.fillBackgroundColor(model.contents, "#ffffff")
}

let drawLine = (
  from: Builder.position,
  to: Builder.position,
  ~color: string="#000000",
  ~width: float=1.0,
  ~pattern: array<int>=[],
  ~offset: int=0,
  (),
) => {
  model := Generator_Builder.drawLine(model.contents, from, to, ~color, ~width, ~pattern, ~offset)
}

let drawLinePath = (
  points: array<Builder.position>,
  ~color: string="#000000",
  ~width: float=1.0,
  ~pattern: array<int>=[],
  ~offset: int=0,
  ~close: bool=false,
  (),
) => {
  model :=
    Generator_Builder.drawPath(model.contents, points, ~color, ~width, ~pattern, ~offset, ~close)
}

let drawLineRect = (
  dest: Builder.rectangle,
  ~color: string="#000000",
  ~width: float=1.0,
  ~pattern: array<int>=[],
  ~offset: int=0,
  (),
) => {
  let (x, y, w, h) = dest
  model :=
    Generator_Builder.drawPath(
      model.contents,
      [(x, y), (x + w, y), (x + w, y + h), (x - 1, y + h), (x - 1, y)],
      ~color,
      ~width,
      ~pattern,
      ~offset,
      ~close=false,
    )
}

let drawFold = (from: Builder.position, to: Builder.position) => {
  model :=
    Generator_Builder.drawLine(
      model.contents,
      from,
      to,
      ~color="#7b7b7b",
      ~width=1.0,
      ~pattern=[2, 2],
      ~offset=3,
    )
}

let drawFoldPath = (points: array<Builder.position>, ~close: bool=false, ()) => {
  model :=
    Generator_Builder.drawPath(
      model.contents,
      points,
      ~color="#7b7b7b",
      ~width=1.0,
      ~pattern=[2, 2],
      ~offset=3,
      ~close,
    )
}

let drawFoldRect = (dest: Builder.rectangle) => {
  let (x, y, w, h) = dest
  model :=
    Generator_Builder.drawPath(
      model.contents,
      [(x, y), (x + w, y), (x + w, y + h), (x - 1, y + h), (x - 1, y)],
      ~color="#7b7b7b",
      ~width=1.0,
      ~pattern=[2, 2],
      ~offset=3,
      ~close=false,
    )
}

let drawTexture = (
  id: string,
  source: Builder.rectangle,
  dest: Builder.rectangle,
  ~flip: Generator_Texture.flip=#None,
  ~blend: Generator_Texture.blend=#None,
  ~rotateLegacy: float=0.0,
  ~rotate: float=0.0,
  ~pixelate: bool=false,
  (),
) => {
  let rotate = if rotateLegacy !== 0.0 {
    #Corner(rotateLegacy)
  } else if rotate !== 0.0 {
    #Center(rotate)
  } else {
    #None
  }
  model :=
    Builder.drawTexture(model.contents, id, source, dest, ~flip, ~rotate, ~blend, ~pixelate, ())
}

@deprecated("Use Generator.drawTexture")
let drawTextureLegacy = (
  id: string,
  source: Builder.rectangleLegacy,
  dest: Builder.rectangleLegacy,
  ~flip: Generator_Texture.flip=#None,
  ~rotateLegacy: float=0.0,
  ~pixelate: bool=false,
  (),
) => {
  drawTexture(
    id,
    (source.x, source.y, source.w, source.h),
    (dest.x, dest.y, dest.w, dest.h),
    ~flip,
    ~rotateLegacy,
    ~pixelate,
    (),
  )
}

let drawCuboid = (
  id,
  sp: Builder.position,
  ss: (int, int, int),
  dp: Builder.position,
  ds: (int, int, int),
  ~isLeftSide: bool=false,
  (),
) => {
  let (sx, sy) = sp
  let (sw, sh, sl) = ss
  let (dx, dy) = dp
  let (dw, dh, dl) = ds

  if !isLeftSide {
    drawTexture(id, (sx + sl, sy + sl, sw, sh), (dx + dl, dy + dl, dw, dh), ()) // Front
    drawTexture(id, (sx + sl + sw, sy + sl, sl, sh), (dx + dl + dw, dy + dl, dl, dh), ()) // Left
    drawTexture(id, (sx, sy + sl, sl, sh), (dx, dy + dl, dl, dh), ()) // Right
    drawTexture(id, (sx + sl * 2 + sw, sy + sl, sw, sh), (dx + dl * 2 + dw, dy + dl, dw, dh), ()) // Back
    drawTexture(id, (sx + sl, sy, sw, sl), (dx + dl, dy, dw, dl), ()) // Top
    drawTexture(
      id,
      (sx + sl + sw, sy, sw, sl),
      (dx + dl, dy + dl + dh, dw, dl),
      ~flip=#Vertical,
      (),
    ) // Bottom
  } else {
    drawTexture(id, (sx + sl, sy + sl, sw, sh), (dx + dl + dw, dy + dl, dw, dh), ()) // Front
    drawTexture(id, (sx + sl + sw, sy + sl, sl, sh), (dx + dl + dw * 2, dy + dl, dl, dh), ()) // Left
    drawTexture(id, (sx, sy + sl, sl, sh), (dx + dw, dy + dl, dl, dh), ()) // Right
    drawTexture(id, (sx + sl * 2 + sw, sy + sl, sw, sh), (dx, dy + dl, dw, dh), ()) // Back
    drawTexture(id, (sx + sl, sy, sw, sl), (dx + dl + dw, dy, dw, dl), ()) // Top
    drawTexture(
      id,
      (sx + sl + sw, sy, sw, sl),
      (dx + dl + dw, dy + dl + dh, dw, dl),
      ~flip=#Vertical,
      (),
    ) // Bottom
  }
}

let drawImage = (id: string, position: Builder.position) => {
  model := Builder.drawImage(model.contents, id, position)
}

let hasImage = (id: string) => {
  Builder.hasImage(model.contents, id)
}

let hasTexture = (id: string) => {
  Builder.hasTexture(model.contents, id)
}
