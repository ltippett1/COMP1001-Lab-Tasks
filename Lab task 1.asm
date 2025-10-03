; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	; define your variables here
	sum SDWORD 0

.code ; code segment 

main PROC ; main procedure
	; write your assembly code here

	mov eax, 15  ; move literal value 15 to eax
	mov ebx, 5  ; move literal value 5 to ebx
	mov ecx, 4  ; movve literal value 4 to ecx
	mov edx, 3  ; move literal value 3 to edx

	add eax, ebx; add eax and ebx and put value in eax
	add ecx, edx; add ecx and edx and put value in ecx

	sub eax, ecx; subtract eax and ecx and put value in eax

	mov sum, eax

	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling
