//merge(a1[], a2[], n1, n2){
//	a[] = new arr[n1+n2]
//	int i, j, k
//	while(i<n1+n2){
//		if (a1[j]>a2[k] || j>=n1){        
//			a[i]=a2[k]				
//			k++
//			i++
//		}
//		else if (a1[j]<a2[k] || k>=n2){
//			a[i]=a1[j]
//			j++
//			i++
//		}
//	}

//////////////////////////////////////////////////Assembly

//initialize counters
@i
M=0
@j
M=0
@k
M=0

//start merge prog
(start_while)
@n1
D=M
@n2
D=D+M
@i
D=D-M
//D=n1+n2-i
@end_while
D;JLE

///////// if (j>=n1) jump to start_if
@j
D=M
@n1
D=D-M
@check_k_index
D;JLT
@a2
D=M
@k
D=D+M
//D=a2+k
@a2k
M=D
//M[a2k]=a2+k

@start_if
0;JGE

///////// if (k>=n2) jump to start_else
(check_k_index)
@k
D=M
@n2
D=D-M
@start_compare
D;JLT
@a1
D=M
@j
D=D+M
//D=a1+j
@a1j
M=D
//M[aj]=a1+j
@start_else
0;JGE

(start_compare)
@a1
D=M
@j
D=D+M
//D=a1+j
@a1j
M=D
//M[aj]=a1+j
@a2
D=M
@k
D=D+M
//D=a2+k
@a2k
M=D
//M[a2k]=a2+k
@a1j
A=M
D=M
//D=a1[j]
@a2k
A=M
D=D-M
//D=a1[j]-a2[k]
@start_else
D;JLE

(start_if)
@a
D=M
@i
D=D+M
@ai
M=D
//M[ai]=a+i
@a2k
A=M
D=M
//D=a2[k]
@ai
A=M
M=D
//a[i]=a2[k]
@k
M=M+1
//k++
@i
M=M+1
//i++

@start_while
0;JMP

(start_else)
@a
D=M
@i
D=D+M
@ai
M=D
//M[ai]=a+i
@a1j
A=M
D=M
//D=a1[j]
@ai
A=M
M=D
//a[i]=a1[j]
@j
M=M+1
//j++
@i
M=M+1
//i++

(end_else)
@start_while
0;JMP

(end_while)
@end_while
0;JMP



		