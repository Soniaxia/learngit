#include <unistd.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <ctype.h>

#define PORT 	1234
#define BACKLOG	1
#define MAXDATASIZE 900000
#pragma pack(push, 1)
struct Stu
{
	char stuno[20];
	char stuname[2000];
	int age;
	int datalen;
};
#pragma pack(pop) 

int main(void)
{
	int	listenfd, connectfd;
	struct sockaddr_in  server;    
	struct sockaddr_in client;
	int  sin_size;
	FILE *file1;
	if((listenfd=socket(AF_INET, SOCK_STREAM, 0))==-1)
	{
		perror("Create socket failed");
		exit(-1);
	}
	int opt = SO_REUSEADDR;
	setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt));
	bzero(&server, sizeof(server));
	server.sin_family = AF_INET;
	server.sin_port = htons(PORT);
	server.sin_addr.s_addr = htonl(INADDR_ANY); 

	if (bind(listenfd, (struct sockaddr *)&server, sizeof(struct sockaddr))==-1)
	{
		perror("Bind error");
		exit(-1);
	}

	if (listen(listenfd, BACKLOG) == -1) {
		perror("listen error");
		exit(-1);
	}

	sin_size = sizeof(struct sockaddr_in);
	if ((connectfd = accept(listenfd, (struct sockaddr *)&client, &sin_size)) == -1) {
		perror("accept error");
		exit(-1);
	}	
	while(1)
	 {
	char buf[MAXDATASIZE];
	printf("you get a connection from %s,%d\n", inet_ntoa(client.sin_addr),ntohs(client.sin_port));
	//memset(buf,0,sizeof(buf));
	int s=read(connectfd,buf,MAXDATASIZE);
	if (s==0)
	{
		printf("s=%d",s);
		close(connectfd);
		exit(0);                
	}
	if (s<0)
	{
		printf("s<0:%d",s);
		close(connectfd);
		exit(1);
	}
	if(s<sizeof(struct Stu))
	{
		printf("The recevied data is not enough");
		continue;
	}
	struct Stu *pStu =(struct Stu *)buf;
	printf("stuno=%s\n",pStu->stuno);
	printf("stuname=%s\n",pStu->stuname);
	printf("stuage=%d\n",ntohl(pStu->age)); 
	int datalen = ntohl(pStu->datalen);
	if(s>=(sizeof(struct Stu)+datalen))
	{
		char databuf[100];
		memset(databuf,0,sizeof(databuf));
		if(datalen<100)
		{
			memcpy(databuf,buf+sizeof(struct Stu),datalen);
			printf("remark=%s\n",databuf);
		}
		pStu->age=ntohl(pStu->age);
		file1=fopen("student","a");
		fputs(pStu->stuno,file1);
		fputc(' ',file1);
		fputs(pStu->stuname,file1);
		fputc(' ',file1);
		char str[2];

		sprintf(str,"%d",pStu->age);
		fwrite(str,sizeof(str),1,file1);
		fputc(' ',file1);
		fputs(databuf,file1);
		fputs("\n",file1);
		fclose(file1);      
    }
	}

	close(listenfd);
}


