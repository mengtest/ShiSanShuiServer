-- 返回 STEP_SUCCEED 流程继续
-- 返回 STEP_FAILED 流程终止
local function logic_send_all_table_info(player, msg)
    LOG_DEBUG("Run LogicStep send_all_table_info")

    
    return STEP_SUCCEED
end


return logic_send_all_table_info
