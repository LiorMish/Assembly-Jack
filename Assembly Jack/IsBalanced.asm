// sum1=0, sum2=0, i=0
// k=n/2 -> midlle of the array
// while (i<k){
// 	sum1+=array[i]
//	i++
// }
// while (i<n){
// 	sum1+=array[i]
//	i++
// }
// if (sum1-sum2 == 0) return 1
// else return 0

///////////////////////////////////// Assembly

@sum1
M=0
//sum1=0
@sum2
M=0
//sum2=0
@i
M=0
//i=0

//////find the midlle of the array, use Div.asm by n2=n, m=2
@k
M=0 
//M[k]=0
@m
M=0
M=M+1
M=M+1
//m=2
@n
D=M
@n2
M=D
//copy n to n2
(start_Div_prog) 
@n2
D=M 
//D=M[n2]
@m
D=D-M 
//D=M[n2]-M[m]
@n2
M=D 
//M[n2]=M[n2]-M[m]
@end_Div_prog
D;JLT 
@k
M=M+1 
@start_Div_prog
0;JMP 
(end_Div_prog)
//////k=midlle of the array, k=M[0]

(start_first_while)
@k
D=M
@i
D=D-M
// k-i < 0
@end_first_while
D;JLE
@array
D=M
@i
A=D+M
D=M
//D=array[i]
@sum1
M=D+M
// sum1+=array[i]
@i
M=M+1
// i++
@start_first_while
0;JMP
(end_first_while)

(start_second_while)
@n
D=M
@i
D=D-M
// i-n < 0
@end_second_while
D;JLE
@array
D=M
@i
A=D+M
D=M
//D=array[i]
@sum2
M=D+M
// sum2+=array[i]
@i
M=M+1
// i++
@start_second_while
0;JMP
(end_second_while)

@sum1
D=M
@sum2
D=D-M
// D=sum1-sum2
@returnTrue
D;JEQ
//returnFalse
@balanced
M=0
@end_prog
0;JMP
(returnTrue)
@balanced
M=1
(end_prog)
@end_prog
0;JMP