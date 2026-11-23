# 💢 YouTube should fire whoever made their LiveStreaming chat API

The live streaming YouTube chat API requires polling of HTTP and easily exhausts all of the tokens they'll give you for the quota within 2 hours just to read messages so that you see them ever 5 seconds. It's total crap! Don't even bother. It's amazing how stupid the engineers were who made this decision, like they never even watched a Twitch stream before making it.

`#youtube #fails #livestreaming`

## Transcription

[00:00:00] All right, get ready. I'm going to swear and I'm going to rant, but I want to warn everybody
[00:00:03] out there before you decide to do any kind of applications development with regard to
[00:00:10] live streaming and integration and stuff. Just put YouTube out of your head. Just put it
[00:00:18] out of your head. Out of your head. Do not use YouTube. Here, YouTube requires you. You
[00:00:26] only get 10,000 thing. Unisprick day or whatever. So you get maybe two hours. If you wanted
[00:00:31] to get every YouTube message that comes into your chat, you'd have to wait for five seconds
[00:00:38] each one and you would exhaust your entire quarter for the day in the first two and a
[00:00:44] half hours. And you have to pull. There has to be an HTTP pull to get all the most recent
[00:00:50] chat messages. You have to paginate where you were last time and you have to pull it in.
[00:00:54] It's absolute shit. It is, I mean, whoever thought of it was so fucking brain dead. I
[00:01:01] mean, so brain dead. How are they supposed to handle 10,000 incoming messages? Really?
[00:01:06] How are they supposed to do it? Do they like even think about like, and didn't even watch
[00:01:11] Husanabi on Twitch and see how they were going to have to deal with incoming chat messages?
[00:01:16] Whoever designed it should be fired and blacklisted from working anywhere ever. This is like the
[00:01:22] worst possible architecture. I'm sorry. I had to rant. I'm really angry. But if at least
[00:01:27] one person out there hears me from YouTube and tries to fix this shit, they shouldn't
[00:01:32] have an event submodel with a web socket open client so that I can pull and drop as many
[00:01:37] messages I want in real time without a quota. Make it happen. So there.
