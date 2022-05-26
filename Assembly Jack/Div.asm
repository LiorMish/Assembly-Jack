//k*m<=n
//while (m>n){
//	k++
//	n=n-m
//}
//return k;


@k
M=0 
//M[k]=0
(start_prog) 
@n
D=M 
//D=M[n]
@m
D=D-M 
//D=M[n]-M[m]
@n
M=D 
//M[n]=M[n]-M[m]
@end_prog
D;JLT 
@k
M=M+1 
@start_prog
0;JMP 
(end_prog) 
@end_prog
0;JMP