vr.redis.error <-
function(jobid) {

 key = paste("r:jobs:jobid",jobid,sep=":")
 redisConnect()
 redisHSet(key, "err", charToRaw("1"))
 redisHSet(key, "status", charToRaw("ERROR"))
 redisHSet(key, "perc", charToRaw("0"))
 redisClose()

}

