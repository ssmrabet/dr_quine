#include <stdio.h>
/*
	Hello World !
*/

void	void_fct(void){};

int		main(void)
{
	/*
		A comment
	*/
	char *s="#include <stdio.h>%c/*%c%cHello World !%c*/%c%cvoid%cvoid_fct(void){};%c%cint%c%cmain(void)%c{%c%c/*%c%c%cA comment%c%c*/%c%cchar *s=%c%s%c;%c%cprintf(s,10,10,9,10,10,10,9,10,10,9,9,10,10,9,10,9,9,10,9,10,9,34,s,34,10,9,10,9,10,9,10,10);%c%cvoid_fct();%c%creturn (0);%c}%c";
	printf(s,10,10,9,10,10,10,9,10,10,9,9,10,10,9,10,9,9,10,9,10,9,34,s,34,10,9,10,9,10,9,10,10);
	void_fct();
	return (0);
}
