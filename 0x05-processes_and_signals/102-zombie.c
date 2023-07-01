#include<stdio.h>
#include<stdlib.h>
#include<sys/types.h>
#include<unistd.h>

/**
 * infinite_while - A function that runs an infinite loop.
 * Return: return 0 on success
*/

int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - The entry point of the program.
 * creates 5 child processes
 * using the fork() system call. Each child process immediately exits,
 * becoming a zombie process.
 * The program then calls the infinite_while() function to run an
 * infinite loop, allowing the zombie processes to be observed in
 * the process list.
 *
 * Return: 0 on success.
*/

int main(void)
{
	pid_t pid;
	int i;

	for (i = 0; i < 5; i++)
	{
		pid = fork();
		if (pid == 0)
		{
			exit(0);
		} else if (pid > 0)
		{
			printf("Zombie process created, PID: %d\n", pid);
		} else
		{
			perror("fork");
			exit(1);
		}
	}
	infinite_while();
	return (0);
}
