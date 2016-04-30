/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Shreyan/Desktop/LOL/Assgt4-CompArch/co_src/coMultiplier.vhd";



static void work_a_0364751592_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(66, ng0);

LAB3:    t1 = (t0 + 13440U);
    t2 = *((char **)t1);
    t1 = (t0 + 26944);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 24U);
    xsi_driver_first_trans_delta(t1, 24U, 24U, 0LL);

LAB2:    t7 = (t0 + 26832);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0364751592_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(67, ng0);

LAB3:    t1 = (t0 + 48680);
    t3 = (24U != 24U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 27008);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 24U);
    xsi_driver_first_trans_delta(t4, 0U, 24U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(24U, 24U, 0);
    goto LAB6;

}

static void work_a_0364751592_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(69, ng0);

LAB3:    t1 = (t0 + 13600U);
    t2 = *((char **)t1);
    t1 = (t0 + 27072);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 24U);
    xsi_driver_first_trans_delta(t1, 24U, 24U, 0LL);

LAB2:    t7 = (t0 + 26848);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0364751592_3212880686_p_3(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(70, ng0);

LAB3:    t1 = (t0 + 48704);
    t3 = (24U != 24U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 27136);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 24U);
    xsi_driver_first_trans_delta(t4, 0U, 24U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(24U, 24U, 0);
    goto LAB6;

}

static void work_a_0364751592_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(82, ng0);

LAB3:    t1 = (t0 + 14240U);
    t2 = *((char **)t1);
    t3 = (47 - 47);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 27200);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 28U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 26864);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0364751592_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0364751592_3212880686_p_0,(void *)work_a_0364751592_3212880686_p_1,(void *)work_a_0364751592_3212880686_p_2,(void *)work_a_0364751592_3212880686_p_3,(void *)work_a_0364751592_3212880686_p_4};
	xsi_register_didat("work_a_0364751592_3212880686", "isim/testbench_isim_beh.exe.sim/work/a_0364751592_3212880686.didat");
	xsi_register_executes(pe);
}
