text1 = "CHEAP TOOLS 17/1 AT `2MFQQ"
text2 = "CHEAP TOOLS 17/1 AT `4MFQQ"
spamworld = "BUYSURGS"
delayworld = "AKULAHSANGRAJA69"
emot = "/love"
delay = 4000

while true do
    getBot():warp(spamworld)
    sleep(7000)
    getBot():findPath(63,46)
    sleep(1000)
    for i=11,1,-1 do
        getBot():say(text1)
        sleep(delay)
        getBot():say(text2)
        sleep(delay)
        getBot():say(text1)
        sleep(delay)
        getBot():say(emot)
        sleep(5100)
    end
    getBot():warp(delayworld)
    sleep(6000)
end