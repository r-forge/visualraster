vr.redis.update <-
function(jobid,perc) {
 key = paste("r:jobs:jobid",jobid,sep=":")
 redisConnect()
 redisHSet(key, "err", charToRaw("0"))
 redisHSet(key, "status", charToRaw("RUNNING"))
 redisHSet(key, "perc", charToRaw(as.character(perc)))
 redisClose()

}

