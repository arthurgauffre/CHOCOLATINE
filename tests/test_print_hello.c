/*
** EPITECH PROJECT, 2022
** print_hello_test
** File description:
** print_hello_test
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include "header.h"

void redirect_print_hello(void)
{
    cr_redirect_stdout();
    cr_redirect_stderr();
}

Test(print_hello, hello, .init = redirect_print_hello) {
    print_hello();
    cr_assert_stdout_eq_str("hello!");
}
