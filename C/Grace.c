/*
	A comment
*/

#include <stdio.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>

#define param "w+"
#define code "/*%c%cA comment%c*/%c%c#include <stdio.h>%c#include <fcntl.h>%c#include <string.h>%c#include <unistd.h>%c%c#define param %cw+%c%c#define code %c%s%c%c#define FT(x) int main(){ fprintf(fopen(x, param),code,10,9,10,10,10,10,10,10,10,10,34,34,10,34,code,34,10,10,34,34,10); return (0); }%cFT(%cGrace_kid.c%c)%c"
#define FT(x) int main(){ fprintf(fopen(x, param),code,10,9,10,10,10,10,10,10,10,10,34,34,10,34,code,34,10,10,34,34,10); return (0); }
FT("Grace_kid.c")
