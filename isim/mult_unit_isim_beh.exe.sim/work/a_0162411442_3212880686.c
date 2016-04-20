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
static const char *ng0 = "D:/Sem4/CompArch/Lab/Assgt4-CompArch/src/shift2.vhd";



static void work_a_0162411442_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 3072);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 4871);
    t7 = xsi_mem_cmp(t1, t5, 2U);
    if (t7 == 1)
        goto LAB6;

LAB11:    t8 = (t0 + 4873);
    t10 = xsi_mem_cmp(t8, t5, 2U);
    if (t10 == 1)
        goto LAB7;

LAB12:    t11 = (t0 + 4875);
    t13 = xsi_mem_cmp(t11, t5, 2U);
    if (t13 == 1)
        goto LAB8;

LAB13:    t14 = (t0 + 4877);
    t16 = xsi_mem_cmp(t14, t5, 2U);
    if (t16 == 1)
        goto LAB9;

LAB14:
LAB10:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 3072);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(50, ng0);
    t17 = (t0 + 3072);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_delta(t17, 31U, 1, 0LL);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3072);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 30U, 1, 0LL);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t22 = (31 - 29);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t5 = (t0 + 3072);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 30U);
    xsi_driver_first_trans_delta(t5, 0U, 30U, 0LL);
    goto LAB5;

LAB7:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3072);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 3072);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 1U, 1, 0LL);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t22 = (31 - 31);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t5 = (t0 + 3072);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 30U);
    xsi_driver_first_trans_delta(t5, 2U, 30U, 0LL);
    goto LAB5;

LAB8:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t7 = (31 - 31);
    t22 = (t7 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3072);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = t3;
    xsi_driver_first_trans_delta(t5, 0U, 1, 0LL);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t7 = (31 - 31);
    t22 = (t7 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3072);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = t3;
    xsi_driver_first_trans_delta(t5, 1U, 1, 0LL);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t22 = (31 - 31);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t5 = (t0 + 3072);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 30U);
    xsi_driver_first_trans_delta(t5, 2U, 30U, 0LL);
    goto LAB5;

LAB9:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t22 = (31 - 1);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t5 = (t0 + 3072);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_delta(t5, 0U, 2U, 0LL);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t22 = (31 - 31);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t1 = (t2 + t24);
    t5 = (t0 + 3072);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 30U);
    xsi_driver_first_trans_delta(t5, 2U, 30U, 0LL);
    goto LAB5;

LAB15:;
}


extern void work_a_0162411442_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0162411442_3212880686_p_0};
	xsi_register_didat("work_a_0162411442_3212880686", "isim/mult_unit_isim_beh.exe.sim/work/a_0162411442_3212880686.didat");
	xsi_register_executes(pe);
}
