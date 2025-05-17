using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /UnrealEngine.com/Temporary/UI }
using { /Fortnite.com/UI }
using { /UnrealEngine.com/Temporary/SpatialMath }

# See https://dev.epicgames.com/documentation/en-us/uefn/create-your-own-device-in-verse for how to create a verse device.
# A Verse-authored creative device that can be placed in a level

Shop := class():

    var ShopCanvas : canvas = canvas{}#商店的背景画布
    var MaterialsSubCanvas : canvas = canvas{}  # 新增：材料子菜单画布

    var Item1Button : button_loud = button_loud{}#商店的购物按钮
    var Item2Button : button_loud = button_loud{}
    var Item3Button : button_loud = button_loud{}
    var Item4Button : button_loud = button_loud{}
    # 材料子按钮
    var WoodButton : button_loud = button_loud{}
    var MetalButton : button_loud = button_loud{}
    var RockButton : button_loud = button_loud{}
    var BackButton : button_loud = button_loud{}

    var Item1Conditional : conditional_button_device = conditional_button_device{}
    var Item1Remover : item_remover_device = item_remover_device{}
    var Item1Granter : item_granter_device = item_granter_device{}

    var Item2Conditional : conditional_button_device = conditional_button_device{}
    var Item2Remover : item_remover_device = item_remover_device{}
    var Item2Granter : item_granter_device = item_granter_device{}

    var Item3Conditional : conditional_button_device = conditional_button_device{}
    var Item3Remover : item_remover_device = item_remover_device{}
    var Item3Granter : item_granter_device = item_granter_device{}

    var Item4Conditional : conditional_button_device = conditional_button_device{}
    var Item4Remover : item_remover_device = item_remover_device{}
    var Item4Granter : item_granter_device = item_granter_device{}

    var ExitButton : button_loud = button_loud{}

    var ShopBackground : texture_block = texture_block{DefaultImage := image_ui}#商店的背景图片
    var MaterialsBackground : texture_block = texture_block{DefaultImage := image_ui}#材料菜单背景
    
    GetShopUI():canvas=
        
        ShopCanvas.AddWidget(canvas_slot:
            Widget := ShopBackground
            Anchors := anchors{Minimum := vector2{X:= 0.0, Y:= 0.0} , Maximum := vector2{X := 0.0 , Y := 0.0}}
            Offsets := margin{Left := -8.162643, Top := -2.827306, Right := 3089.929688 , Bottom := 1311.032715}
            Alignment := vector2{X := 0.0 , Y := 0.0}
            SizeToContent := false
            ZOrder := 0
        )

        ShopCanvas.AddWidget(canvas_slot:
            Widget := Item1Button
            Anchors := anchors{Minimum := vector2{X:= 0.0, Y:= 0.0} , Maximum := vector2{X := 0.0 , Y := 0.0}}
            Offsets := margin{Left := 326.008118, Top := 488.857697, Right := 277.644348 , Bottom := 255.174835}
            Alignment := vector2{X := 0.0 , Y := 0.0}
            SizeToContent := false
            ZOrder := 1
        )

        ShopCanvas.AddWidget(canvas_slot:
            Widget := Item2Button
            Anchors := anchors{Minimum := vector2{X:= 0.0, Y:= 0.0} , Maximum := vector2{X := 0.0 , Y := 0.0}}
            Offsets := margin{Left := 656.0, Top := 488.857697, Right := 277.644348 , Bottom := 255.174835}
            Alignment := vector2{X := 0.0 , Y := 0.0}
            SizeToContent := false
            ZOrder := 1
        )

        ShopCanvas.AddWidget(canvas_slot:
            Widget := Item3Button
            Anchors := anchors{Minimum := vector2{X:= 0.0, Y:= 0.0} , Maximum := vector2{X := 0.0 , Y := 0.0}}
            Offsets := margin{Left := 984.0, Top := 488.857697, Right := 277.644348 , Bottom := 255.174835}
            Alignment := vector2{X := 0.0 , Y := 0.0}
            SizeToContent := false
            ZOrder := 1
        )

        ShopCanvas.AddWidget(canvas_slot:
            Widget := Item4Button
            Anchors := anchors{Minimum := vector2{X:= 0.0, Y:= 0.0} , Maximum := vector2{X := 0.0 , Y := 0.0}}
            Offsets := margin{Left := 1300.0, Top := 488.857697, Right := 277.644348 , Bottom := 255.174835}
            Alignment := vector2{X := 0.0 , Y := 0.0}
            SizeToContent := false
            ZOrder := 1
        )

        ShopCanvas.AddWidget(canvas_slot:
            Widget := ExitButton
            Anchors := anchors{Minimum := vector2{X:= 0.0, Y:= 0.0} , Maximum := vector2{X := 0.0 , Y := 0.0}}
            Offsets := margin{Left := 1252.0, Top := 884.0, Right := 317.67688 , Bottom := 95.044731}
            Alignment := vector2{X := 0.0 , Y := 0.0}
            SizeToContent := false
            ZOrder := 1
        )
        #新按钮

        # 材料子菜单UI
        MaterialsSubCanvas.AddWidget(canvas_slot:
            Widget := MaterialsBackground
            Anchors := anchors{Minimum := vector2{X:= 0.0, Y:= 0.0}, Maximum := vector2{X := 0.0, Y := 0.0}}
            Offsets := margin{Left := -8.162643, Top := -2.827306, Right := 3089.929688, Bottom := 1311.032715}
            Alignment := vector2{X := 0.0, Y := 0.0}
            SizeToContent := false
            ZOrder := 0
        )

        MaterialsSubCanvas.AddWidget(canvas_slot:
            Widget := WoodButton
            Anchors := anchors{Minimum := vector2{X:= 0.0, Y:= 0.0}, Maximum := vector2{X := 0.0, Y := 0.0}}
            Offsets := margin{Left := 326.008118, Top := 388.857697, Right := 277.644348, Bottom := 255.174835}
            Alignment := vector2{X := 0.0, Y := 0.0}
            SizeToContent := false
            ZOrder := 1
        )

        MaterialsSubCanvas.AddWidget(canvas_slot:
            Widget := MetalButton
            Anchors := anchors{Minimum := vector2{X:= 0.0, Y:= 0.0}, Maximum := vector2{X := 0.0, Y := 0.0}}
            Offsets := margin{Left := 656.0, Top := 388.857697, Right := 277.644348, Bottom := 255.174835}
            Alignment := vector2{X := 0.0, Y := 0.0}
            SizeToContent := false
            ZOrder := 1
        )

        MaterialsSubCanvas.AddWidget(canvas_slot:
            Widget := RockButton
            Anchors := anchors{Minimum := vector2{X:= 0.0, Y:= 0.0}, Maximum := vector2{X := 0.0, Y := 0.0}}
            Offsets := margin{Left := 984.0, Top := 388.857697, Right := 277.644348, Bottom := 255.174835}
            Alignment := vector2{X := 0.0, Y := 0.0}
            SizeToContent := false
            ZOrder := 1
        )

        MaterialsSubCanvas.AddWidget(canvas_slot:
            Widget := BackButton
            Anchors := anchors{Minimum := vector2{X:= 0.0, Y:= 0.0}, Maximum := vector2{X := 0.0, Y := 0.0}}
            Offsets := margin{Left := 1252.0, Top := 884.0, Right := 317.67688, Bottom := 95.044731}
            Alignment := vector2{X := 0.0, Y := 0.0}
            SizeToContent := false
            ZOrder := 1
        )

        ExitButton.OnClick().Subscribe(handleExit)
        Item1Button.OnClick().Subscribe(ShowMaterialsMenu)#新
        Item2Button.OnClick().Subscribe(BuyItem2)
        Item3Button.OnClick().Subscribe(BuyItem3)
        Item4Button.OnClick().Subscribe(BuyItem4)
        #新
        WoodButton.OnClick().Subscribe(BuyWood)
        MetalButton.OnClick().Subscribe(BuyMetal)
        RockButton.OnClick().Subscribe(BuyRock)
        BackButton.OnClick().Subscribe(ShowMainMenu)


        Item1Button.SetText(StringToMessage("Materials"))
        Item2Button.SetText(StringToMessage("Weapons"))
        Item3Button.SetText(StringToMessage("Utilities"))
        Item4Button.SetText(StringToMessage("Junk"))
        ExitButton.SetText(StringToMessage("close"))
        #新
        WoodButton.SetText(StringToMessage("Wood (100p)"))
        MetalButton.SetText(StringToMessage("Metal (150p)"))
        RockButton.SetText(StringToMessage("Rock (80p)"))
        BackButton.SetText(StringToMessage("Back"))
        return ShopCanvas
    
    StringToMessage<localizes>(String : string) : message = "{String}"

    #新
    ShowMaterialsMenu(Message : widget_message):void=
        Player := Message.Player
        if(PlayerUI := GetPlayerUI[Player]):
            PlayerUI.RemoveWidget(ShopCanvas)
            PlayerUI.AddWidget(MaterialsSubCanvas, player_ui_slot{InputMode := ui_input_mode.All})

    ShowMainMenu(Message : widget_message):void=
        Player := Message.Player
        if(PlayerUI := GetPlayerUI[Player]):
            PlayerUI.RemoveWidget(MaterialsSubCanvas)
            PlayerUI.AddWidget(ShopCanvas, player_ui_slot{InputMode := ui_input_mode.All})

    BuyWood(Message : widget_message):void=
        Player := Message.Player
        if(Item1Conditional.HasAllItems[Player]):
            Item1Remover.Remove(Player)
            Item1Granter.GrantItem(Player)
            ShowMainMenu(Message)

    BuyMetal(Message : widget_message):void=
        Player := Message.Player
        if(Item1Conditional.HasAllItems[Player]):
            Item1Remover.Remove(Player)
            Item1Granter.GrantItem(Player)
            ShowMainMenu(Message)

    BuyRock(Message : widget_message):void=
        Player := Message.Player
        if(Item1Conditional.HasAllItems[Player]):
            Item1Remover.Remove(Player)
            Item1Granter.GrantItem(Player)
            ShowMainMenu(Message)
    
    #旧
    handleExit(Message : widget_message):void=
        Player := Message.Player
        if(PlayerUI := GetPlayerUI[Player]):
            PlayerUI.RemoveWidget(ShopCanvas)

    BuyItem1(Message : widget_message):void=
        Player := Message.Player
        if(Item1Conditional.HasAllItems[Player]):
            Item1Remover.Remove(Player)
            Item1Granter.GrantItem(Player)

    BuyItem2(Message : widget_message):void=
        Player := Message.Player
        if(Item2Conditional.HasAllItems[Player]):
            Item2Remover.Remove(Player)
            Item2Granter.GrantItem(Player)

    BuyItem3(Message : widget_message):void=
        Player := Message.Player
        if(Item3Conditional.HasAllItems[Player]):
            Item3Remover.Remove(Player)
            Item3Granter.GrantItem(Player)

    BuyItem4(Message : widget_message):void=
        Player := Message.Player
        if(Item4Conditional.HasAllItems[Player]):
            Item4Remover.Remove(Player)
            Item4Granter.GrantItem(Player)


ShopUI := class(creative_device):

    @editable OpenButton : button_device = button_device{}

    @editable Item1Conditional : conditional_button_device = conditional_button_device{}
    @editable Item1Remover : item_remover_device = item_remover_device{}
    @editable Item1Granter : item_granter_device = item_granter_device{}

    @editable Item2Conditional : conditional_button_device = conditional_button_device{}
    @editable Item2Remover : item_remover_device = item_remover_device{}
    @editable Item2Granter : item_granter_device = item_granter_device{}

    @editable Item3Conditional : conditional_button_device = conditional_button_device{}
    @editable Item3Remover : item_remover_device = item_remover_device{}
    @editable Item3Granter : item_granter_device = item_granter_device{}

    @editable Item4Conditional : conditional_button_device = conditional_button_device{}
    @editable Item4Remover : item_remover_device = item_remover_device{}
    @editable Item4Granter : item_granter_device = item_granter_device{}
    # Runs when the device is started in a running game
    OnBegin<override>()<suspends>:void=
        # TODO: Replace this with your code
        OpenButton.InteractedWithEvent.Subscribe(OpenShopUI)

    OpenShopUI(Agent:agent) : void=
        if (Player := player[Agent],PlayerUI := GetPlayerUI[Player]):
            
            NewShop : Shop = Shop{
                Item1Conditional := Item1Conditional
                Item1Remover := Item1Remover
                Item1Granter := Item1Granter
                Item2Conditional := Item2Conditional
                Item2Remover := Item2Remover
                Item2Granter := Item2Granter
                Item3Conditional := Item3Conditional
                Item3Remover := Item3Remover
                Item3Granter := Item3Granter
                Item4Conditional := Item4Conditional
                Item4Remover := Item4Remover
                Item4Granter := Item4Granter
                }
            PlayerUI.AddWidget(NewShop.GetShopUI() , player_ui_slot{InputMode := ui_input_mode.All})
