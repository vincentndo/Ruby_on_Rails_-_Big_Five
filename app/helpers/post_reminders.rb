# vincent
# This method belongs to the model Reminder

def post_reminders()

    # Say, the Reminder model has the only hash database like:
    #
    # Reminder.user_hash = {"@yawen":  ["@yawen", 30, "finish the README file",
    #                          "@ivy": ["@myles", 3 * 24 * 60, "plan the timelines"}
    #

    new_user_hash = {}

    Reminder.user_hash.each do |key, value|
        from_user = key
        to_user = value[0]
        duration = value[1] - 1
        action = value[2]
        if duration == 0
            # connect to Slack API
            # assume SlactAPI has method post taking two arguments:
            #   the user where it posts to: to_user
            #   the message to be posted: message
            SlackAPI.post(to_user, "{from_channel} wanted you to know: {action}")
        else
            new_user_hash[from_user] = [to_user, duration, action]
        end
    end

    Reminder.user_hash = new_user_hash

end
