/*
** EPITECH PROJECT, 2023
** CHOCOLATINE
** File description:
** print_hello
*/

#include <unistd.h>

void print_hello(void)
{
    write(1, "hello!", 6);
}
