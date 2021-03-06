-- 返回 STEP_SUCCEED 流程继续
-- 返回 STEP_FAILED 流程终止
local function logic_notify_player_op_logic_func(stPlayer, msg)
    LOG_DEBUG("Run LogicStep notify_player_op_logic_func")

    local stPlayerBlockState = LibGameLogic:GetPlayerBlockState(stPlayer:GetChairID())

    -- no timeout
    CSMessage.NotifyPlayerAskBlock(stPlayer, stPlayerBlockState:GetReuslt(), false)

    local bIsQuick = stPlayer:IsTrust() or stPlayer:IsWin()
    CSMessage.NotifyAskPlay(stPlayer, bIsQuick)

    -- if stPlayer:IsWin() == false and stPlayerBlockState:IsCanTing() then
    --     -- CSMessage.NotifyWinHint(stPlayer, stPlayerBlockState:GetTingGroupAll())
    -- end
    return STEP_SUCCEED
end



return logic_notify_player_op_logic_func
