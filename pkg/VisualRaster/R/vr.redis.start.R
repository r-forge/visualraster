vr.redis.start <-
function(jobid) {

 key = paste("r:jobs:jobid",jobid,sep=":")
 redisConnect()
 redisHSet(key, "err", charToRaw("0"))
 redisHSet(key, "status", charToRaw("RUNNING"))
 redisHSet(key, "perc", charToRaw("0"))
 redisClose()
}

