# DO NOT CHANGE THE FOLLOWING 3 LINES UNLESS YOU KNOW
# WHAT YOU ARE DOING!
# set CONTINUE_WO_HOTWORD to true to be able to chain
# commands without need of a hotword in between:
#
const CONTINUE_WO_HOTWORD = false

# set a local const LANG:
#
const LANG = get_language()



# Slots:
# Name of slots to be extracted from intents:
#
const SLOT_DAY = "day"
const SLOT_HOUR = "hour"
const SLOT_MINUTE = "minute"
const SLOT_SOUND = "sound"


# name of entries in config.ini:
#

#
# link between actions and intents:
# intent is linked to action::Funktion
#
# Susi.register_intent_action("TEMPLATE_SKILL", TEMPLATE_INTENT_action)
# Susi.register_on_off_action(TEMPLATE_INTENT_action)
register_intent_action("Susi:SetWakeupTime", Susi_SetWakeupTime_action)
register_intent_action("Susi:PlayWakeupMusic", Susi_PlayWakeupMusic_action)
register_intent_action("Susi:DeleteWakeup", Susi_DeleteWakeup_action)
