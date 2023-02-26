#
# actions called by the main callback()
# provide one function for each intent, defined in the Snips/Rhasspy
# console.
#
# ... and link the function with the intent name as shown in config.jl
#
# The functions will be called by the main callback function with
# 2 arguments:
# + MQTT-Topic as String
# + MQTT-Payload (The JSON part) as a nested dictionary, with all keys
#   as Symbols (Julia-style).
#




"""
    Susi_SetWakeupTime_action(topic, payload)

Generated dummy action for the intent Susi:SetWakeupTime.
This function will be executed when the intent is recognized.
"""
function Susi_SetWakeupTime_action(topic, payload)

    print_log("action Susi_SetWakeupTime_action() started.")
    publish_say(:skill_echo, get_intent(payload))

    if ask_yes_or_no(:ask_echo_slots)

        slot_value = extract_slot_value(SLOT_DAY, payload, default=:no_slot)
        publish_say(:slot_echo_1, SLOT_DAY, :slot_echo_2, slot_value)

        slot_value = extract_slot_value(SLOT_HOUR, payload, default=:no_slot)
        publish_say(:slot_echo_1, SLOT_HOUR, :slot_echo_2, slot_value)

        slot_value = extract_slot_value(SLOT_MINUTE, payload, default=:no_slot)
        publish_say(:slot_echo_1, SLOT_MINUTE, :slot_echo_2, slot_value)

        slot_value = extract_slot_value(SLOT_SOUND, payload, default=:no_slot)
        publish_say(:slot_echo_1, SLOT_SOUND, :slot_echo_2, slot_value)
    else   # ask returns false
        # do nothing
    end

    publish_end_session(:end_say)
    return true
end




"""
    Susi_PlayWakeupMusic_action(topic, payload)

Generated dummy action for the intent Susi:PlayWakeupMusic.
This function will be executed when the intent is recognized.
"""
function Susi_PlayWakeupMusic_action(topic, payload)

    print_log("action Susi_PlayWakeupMusic_action() started.")
    publish_say(:skill_echo, get_intent(payload))

    if ask_yes_or_no(:ask_echo_slots)

        slot_value = extract_slot_value(SLOT_SOUND, payload, default=:no_slot)
        publish_say(:slot_echo_1, SLOT_SOUND, :slot_echo_2, slot_value)
    else   # ask returns false
        # do nothing
    end

    publish_end_session(:end_say)
    return true
end




"""
    Susi_DeleteWakeup_action(topic, payload)

Generated dummy action for the intent Susi:DeleteWakeup.
This function will be executed when the intent is recognized.
"""
function Susi_DeleteWakeup_action(topic, payload)

    print_log("action Susi_DeleteWakeup_action() started.")
    publish_say(:skill_echo, get_intent(payload))

    if ask_yes_or_no(:ask_echo_slots)
publish_say(:no_slot)
    else   # ask returns false
        # do nothing
    end

    publish_end_session(:end_say)
    return true
end
