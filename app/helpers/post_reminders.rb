# vincent
# This method belongs to the model Reminder

def post_reminders()

    # Say, the Reminder model has the only hash database like:
    #
    # Reminder.channel_hash = {"@yawen":  ["@yawen", 30, "finish the README file",
    #                          "@ivy": ["@myles", 3 * 24 * 60, "plan the timelines"}
    #

    new_channel_hash = {}

    Reminder.channel_hash.each do |key, value|
        from_channel = key
        to_channel = value[0]
        duration = value[1] - 1
        action = value[2]
        if duration == 0
            # connect to Slack API
            # assume SlactAPI has method post taking two arguments:
            #   the channel where it posts to: to_channel
            #   the message to be posted: message
            SlackAPI.post(to_channel, "{from_channel} wanted you to know: {action}")
        else
            new_channel_hash[from_channel] = [to_channel, duration, action]
        end
    end

    Reminder.channel_hash = new_channel_hash

end
