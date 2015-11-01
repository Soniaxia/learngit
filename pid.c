#include<stdio.h>
#include<unistd.h>
#include<sys/wait.h>
#include<sys/types.h>
int main()
{
	pid_t pr,child_pid1,child_pid2;
	int child_status;

	if((child_pid1=fork())<0)
	{
		printf("The chiled1 is error!\n");
		exit(1);
	}
	else if(child_pid1==0)
	{
		printf("This is child1 process with pid of %d\n",getpid());
		sleep(1);
	}
	else
	{
		if((child_pid2=fork())<0)
		{
			printf("The child2 is error!\n");
			exit(1);
		}
		else if(child_pid2==0)
		{
			printf("This is child2 process with pid of %d\n",getpid());
			sleep(1);
		}
		else
		{
			pr=wait(NULL);
			printf("This is parent process with pid of %d\n",getpid());
			
		}
	}
	return 0;
}
