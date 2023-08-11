# use the following funciton to determine if a given number is under the number line or not

chnops_line <- function(x){
	
	md = abs(x - floor(x))
    
	if(md <= (x * 0.00112 + 0.01953)) {
		return(TRUE)
	}else{
		return(FALSE)
	}
}