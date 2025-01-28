---@class InteractOption
---@field label string
---@field icon string
---@field groups? string | string[] | table<string, number>
---@field items? string | string[] | table<string, number>
---@field anyItem? boolean
---@field remove? boolean
---@field canInteract? fun(id: any, entity?: number, coords: vector3, distance: number)
---@field onSelect? fun(data: Interaction)
---@field export? string
---@field event? string
---@field serverEvent? string
---@field command? string

---@class InteractionData
---@field cooldown number
---@field renderDistance number
---@field activeDistance number
---@field resource string
---@field bone? string

---@class Interaction
---@field id string unique identifier for the interaction
---@field allowInVehicle boolean
---@field options InteractOption[]
---@field renderDistance number
---@field activeDistance number
---@field currentDistance number
---@field sprite? { dict?: string, txt?: string, color?: vector4 }
---@field cooldown number
---@field removeWhenDead boolean
---@field DuiOptions {text: string, icon: string}
---@field getCoords fun(data: self): vector3
---@field getDistance fun(data: self): number
---@field shouldRender fun(data: self): boolean
---@field shouldBeActive fun(data: self): boolean
---@field isActive boolean
---@field isDestroyed boolean
---@field resource string
---@field globalType? string
---@field private lastActionTime number

---@class CoordsInteraction: Interaction
---@field coords vector3 | vector3[]
---@field onEnter fun(data: CPoint)
---@field onExit fun(data: CPoint)
---@field nearby fun(data: CPoint)
---@field private point CPoint

---@class LocalEntityInteraction: Interaction
---@field entity number
---@field offset vector3
---@field bone string

---@class NetEntityInteraction: LocalEntityInteraction
---@field netId number
