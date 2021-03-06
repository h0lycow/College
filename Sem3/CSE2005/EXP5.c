#include <stdio.h>
#include <sys/time.h> 
#include <unistd.h> 
#include <assert.h>
long add(long a,long b){
  return(a+b); 
}
long nanosec(struct timeval t){
  return((t.tv_sec*1000000+t.tv_usec)*1000); 
}

int main(){ 
  long i,j,res; 
  long N_iterations=1000000; 
  float avgTimeSysCall, avgTimeFuncCall; 
  struct timeval t1, t2; 
  res=gettimeofday(&t1,NULL); assert(res==0); 
  for (i=0;i<N_iterations; i++){ 
    j=getpid(); 
  } 
  res=gettimeofday(&t2,NULL);   assert(res==0); 
  avgTimeSysCall = (nanosec(t2) - nanosec(t1))/(N_iterations*1.0);
  res=gettimeofday(&t1,NULL);  assert(res==0); 
  for (i=0;i<N_iterations; i++){ 
    j=add(i,j); 
  } 
  res=gettimeofday(&t2,NULL);   assert(res==0); 
  avgTimeFuncCall = (nanosec(t2) - nanosec(t1))/(N_iterations*1.0); 
 
  printf("Average time for System call getpid : %f\n",avgTimeSysCall); 
  printf("Average time for Function call : %f\n",avgTimeFuncCall); 
  return 0;
}
