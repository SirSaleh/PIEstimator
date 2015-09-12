# Here is a simple R function to estimate PIE number via Monte Carlo Method

# n is size of sample whick we taken!
#as the n grows bigger your codes takes more time to run!
#But it will be more accurate estimate of pie

MCEstimator <- function(n = 10000){



	#circ counts number of samples which are in the circle!
	circ=0


	for (i in c(1:n)){
		x=runif(1,-1,1)
		y=runif(1,-1,1)
		if ((x^2+y^2)<=1){
			circ=circ+1
		}
	}	
	pai=(circ/n)*4
	return (pai)
}

##using function

n = 80000;

pai = MCEstimator(n)

print (paste("Monte Carlo estimate of PIE with",n,"samples is:",pai),quote=FALSE)


