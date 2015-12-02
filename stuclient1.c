#include <unistd.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <stdio.h>
#define PORT 		1234
#define MAXDATASIZE	10000
#pragma pack(push, 1)
struct Stu
{
	char stuno[20];
	char stuname[2000];
	int age;
	int datalen;
};
#pragma pack(pop)
int main(int argc, char *argv[])
{
	int fd, numbytes;
	char 		buf[MAXDATASIZE];
	struct hostent *	he;
	struct sockaddr_in server;
	struct Stu student;
	char remark[100];
	int stuage;
	int len;
	
	if (argc != 2)
	{
		printf("Usage: %s  <IP address>\n", argv[0]);
		exit(-1);
	}
	if ((he = gethostbyname(argv[1])) == NULL) {
		perror("gethostbyname error.");
		exit(1);
	}

	if ((fd = socket(AF_INET, SOCK_STREAM, 0)) == -1) {
		perror("Create socket failed.");
		exit(1);
	}

	bzero(&server, sizeof(server));
	server.sin_family = AF_INET;
	server.sin_port = htons(PORT);
	server.sin_addr = *((struct in_addr *) he->h_addr);
	
	if (connect(fd, (struct sockaddr *)&server, sizeof(struct sockaddr)) == -1) {
		perror("connect failed.");
		exit(1);
	}
	while(1)
	{
		memset(buf,0,sizeof(buf));
		memset(&student,0,sizeof(student));
		memset(remark,0,sizeof(remark));
		printf("请输入学号，姓名，年龄，备注（以空格隔开）：");
		scanf("%s%s%d%s",&student.stuno,&student.stuname,&stuage,remark);
		student.age=htonl(stuage);

		len= strlen(remark);
		student.datalen=htonl(len);
		memcpy(buf,&student,sizeof(student));
		memcpy(buf+sizeof(student),remark,len);
		write(fd,buf,sizeof(student)+len);
	}
	close(fd);
}

