# Ruby on Rails - Big Five: Remind me

## Team name: 
Big Five

## Team Members: 
Anika Bagga, Myles Domingo, Vincent Ninh, Ivy Nguyen, Yawen Sun

## Prompt: 
Slack bot

## Abstract:
- Slack bot that allows users to set reminders. Users can ping the bot to remind themselves or others to do something. When the time comes up, the bot will send a notification to the requested person.

- Example for Reminder

    @yawen: @BotName remind me to finish the README file in 30 minutes
    @BotName: Okay, I’ll let yawen know in around 30 minutes from now
    @BotName: @yawen wanted you to know: finish the README file

    @ivy: @BotName remind @myles to plan the timelines in 3 days
    @BotName: Okay, I’ll let myles know in around 3 days from now
    @BotName: @ivy wanted you to know: plan the timelines

## Models:
- User: has name, and email
- Reminder: has sender, who, message, time, channel


## Features:
- Create profile for bot - do it once when you set up
- Remind self based on time input and message
- Remind other users based on time input and message


## Ambition Features:
- Interact with Slack’s API


## Division of Labor:
- create bot with slack API - Myles, Yawen
- parse messages and return responses - Ivy
- install database models for users and events - Anika
- implement timed notifications - Vincent


## database:
- database of the remind me app uses the reminder model and stores information including the sender, the recipient, the time, and message to remind

