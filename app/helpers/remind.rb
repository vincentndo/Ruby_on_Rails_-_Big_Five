def remind(channel, text, sender)
    if text.match(/remind (\S+) to (.+) ((?:in) .+|tomorrow)$/)
        who = text.match(/remind (\S+) to (.+) ((?:in) .+|tomorrow)$/)[1]
        message = text.match(/remind (\S+) to (.+) ((?:in) .+|tomorrow)$/)[2]
        duration = text.match(/remind (\S+) to (.+) ((?:in) .+|tomorrow)$/)[3]
        time = Chronic.parse(duration)
        if time.nil?
            return "{sender}: Sorry, I don't understand that time."
        end
        if (time - Time.now) < 0
            return "{sender}: Uh, that's in the past."
        end
        new_reminder = Reminder.new(sender, who, message, time)
        return "#{sender}: Okay, I'll let #{who} know in around #{duration}."
    end
end