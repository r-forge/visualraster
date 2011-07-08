vr.example.2 <-
function(jobid, x, y, n = 10) {

 vr.redis.start(jobid)
 for (i in 1:n) {
	Sys.sleep(1)
	vr.redis.update(jobid, round((100*i)/n))
	}
 vr.redis.complete(jobid)
 x+y
 
}

