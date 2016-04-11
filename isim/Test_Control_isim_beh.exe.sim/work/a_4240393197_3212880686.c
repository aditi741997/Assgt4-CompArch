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
static const char *ng0 = "C:/Users/Shreyan/Desktop/LOL/Assgt4-CompArch/src/InMem.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_4240393197_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 10112U);
    t3 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t1);
    t4 = (t0 + 6312);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t3;
    xsi_driver_first_trans_fast(t4);

LAB2:    t9 = (t0 + 6216);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4240393197_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, t4);
    t7 = (32U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = (t0 + 6376);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 6232);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4240393197_3212880686_p_2(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(54, ng0);

LAB3:    t1 = (t0 + 42988);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 6440);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_delta(t4, 0U, 32U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB6;

}

static void work_a_4240393197_3212880686_p_3(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(55, ng0);

LAB3:    t1 = (t0 + 43020);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 6504);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_delta(t4, 32U, 32U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB6;

}

static void work_a_4240393197_3212880686_p_4(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(56, ng0);

LAB3:    t1 = (t0 + 43052);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 6568);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_delta(t4, 64U, 32U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB6;

}

static void work_a_4240393197_3212880686_p_5(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(57, ng0);

LAB3:    t1 = (t0 + 43084);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 6632);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_delta(t4, 96U, 32U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB6;

}

static void work_a_4240393197_3212880686_p_6(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(58, ng0);

LAB3:    t1 = (t0 + 43116);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 6696);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_delta(t4, 128U, 32U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB6;

}

static void work_a_4240393197_3212880686_p_7(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(59, ng0);

LAB3:    t1 = (t0 + 43148);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 6760);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_delta(t4, 160U, 32U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB6;

}

static void work_a_4240393197_3212880686_p_8(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(60, ng0);

LAB3:    t1 = (t0 + 43180);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 6824);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_delta(t4, 192U, 32U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB6;

}

static void work_a_4240393197_3212880686_p_9(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t1 = (t0 + 43212);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 6888);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_delta(t4, 224U, 32U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB6;

}

static void work_a_4240393197_3212880686_p_10(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(62, ng0);

LAB3:    t1 = (t0 + 43244);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 6952);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_delta(t4, 256U, 32U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB6;

}

static void work_a_4240393197_3212880686_p_11(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(63, ng0);

LAB3:    t1 = (t0 + 43276);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 7016);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_delta(t4, 288U, 32U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB6;

}

static void work_a_4240393197_3212880686_p_12(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(64, ng0);

LAB3:    t1 = (t0 + 43308);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 7080);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_delta(t4, 320U, 32U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB6;

}

static void work_a_4240393197_3212880686_p_13(char *t0)
{
    char *t1;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(65, ng0);

LAB3:    t1 = (t0 + 43340);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t4 = (t0 + 7144);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_delta(t4, 352U, 32U, 0LL);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB6;

}


extern void work_a_4240393197_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4240393197_3212880686_p_0,(void *)work_a_4240393197_3212880686_p_1,(void *)work_a_4240393197_3212880686_p_2,(void *)work_a_4240393197_3212880686_p_3,(void *)work_a_4240393197_3212880686_p_4,(void *)work_a_4240393197_3212880686_p_5,(void *)work_a_4240393197_3212880686_p_6,(void *)work_a_4240393197_3212880686_p_7,(void *)work_a_4240393197_3212880686_p_8,(void *)work_a_4240393197_3212880686_p_9,(void *)work_a_4240393197_3212880686_p_10,(void *)work_a_4240393197_3212880686_p_11,(void *)work_a_4240393197_3212880686_p_12,(void *)work_a_4240393197_3212880686_p_13};
	xsi_register_didat("work_a_4240393197_3212880686", "isim/Test_Control_isim_beh.exe.sim/work/a_4240393197_3212880686.didat");
	xsi_register_executes(pe);
}