vr.redis.complete <-
function(jobid) {

 key = paste("r:jobs:jobid",jobid,sep=":")
 redisConnect()
 redisHSet(key, "err", charToRaw("0"))
 redisHSet(key, "status", charToRaw("COMPLETE"))
 redisHSet(key, "perc", charToRaw("100"))
 redisClose()

}

