local uiCtrl = require_ex('UI/Panels/Base/UICtrl')
local PANEL_ID = PanelId.GachaWeaponInsufficient
GachaWeaponInsufficientCtrl = HL.Class('GachaWeaponInsufficientCtrl', uiCtrl.UICtrl)
GachaWeaponInsufficientCtrl.s_messages = HL.StaticField(HL.Table) << {}
GachaWeaponInsufficientCtrl.OnCreate = HL.Override(HL.Any) << function(self, arg)
    self.view.mask.onClick:AddListener(function()
        self:PlayAnimationOutAndClose()
    end)
    self.view.confirmButton.onClick:AddListener(function()
        self:PlayAnimationOutAndClose()
    end)
    self.view.exploreEntranceBtn.onClick:AddListener(function()
        self:PlayAnimationOutAndClose()
        PhaseManager:GoToPhase(PhaseId.GachaPool)
    end)
    self.view.noMoneyEntranceBtn.onClick:AddListener(function()
        self:PlayAnimationOutAndClose()
        PhaseManager:OpenPhase(PhaseId.CommonMoneyExchange, { sourceId = Tables.globalConst.diamondItemId, targetId = Tables.globalConst.gachaWeaponItemId })
    end)
end
HL.Commit(GachaWeaponInsufficientCtrl)