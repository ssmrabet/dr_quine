#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>

int main()
{
	int fd;
	char name[10];
	int i = 5;
	if (i < 0) return 0;
	sprintf(name,"Sully_%d.c",i);
	if ((fd = open(name, O_RDONLY)) != -1) {close(fd); i--;}
	char *s = "#include <stdio.h>%1$c#include <stdlib.h>%1$c#include <fcntl.h>%1$c#include <unistd.h>%1$c%1$cint main()%1$c{%1$c%2$cint fd;%1$c%2$cchar name[10];%1$c%2$cint i = %3$d;%1$c%2$cif (i < 0) return 0;%1$c%2$csprintf(name,%4$cSully_%6$cd.c%4$c,i);%1$c%2$cif ((fd = open(name, O_RDONLY)) != -1) {close(fd); i--;}%1$c%2$cchar *s = %4$c%5$s%4$c;%1$c%2$csprintf(name,%4$cSully_%6$cd.c%4$c,i);%1$c%2$cfd = open(name, O_RDWR | O_CREAT, 0600);%1$c%2$cif (fd == -1) exit(1);%1$c%2$cdprintf(fd,s,10,9,i,34,s,37);%1$c%2$cclose(fd);%1$c%2$cchar cmd[50];%1$c%2$csprintf(cmd,%4$cgcc -Wall -Wextra -Werror -o Sully_%6$cd Sully_%6$cd.c%4$c,i,i);%1$c%2$csystem(cmd);%1$c%2$csprintf(name,%4$c./Sully_%6$cd%4$c,i);%1$c%2$cif (i >= 0) system(name);%1$c%2$creturn (0);%1$c}%1$c";
	sprintf(name,"Sully_%d.c",i);
	fd = open(name, O_RDWR | O_CREAT, 0600);
	if (fd == -1) exit(1);
	dprintf(fd,s,10,9,i,34,s,37);
	close(fd);
	char cmd[50];
	sprintf(cmd,"gcc -Wall -Wextra -Werror -o Sully_%d Sully_%d.c",i,i);
	system(cmd);
	sprintf(name,"./Sully_%d",i);
	if (i >= 0) system(name);
	return (0);
}
