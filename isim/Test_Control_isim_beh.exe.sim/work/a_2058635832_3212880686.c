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
static const char *ng0 = "D:/Sem4/CompArch/Lab/Assgt4-CompArch/src/shift4.vhd";



static void work_a_2058635832_3212880686_p_0(char *t0)
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
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(69, ng0);
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
LAB2:    xsi_set_current_line(46, ng0);
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
LAB10:    xsi_set_current_line(66, ng0);
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

LAB6:    xsi_set_current_line(49, ng0);
    t17 = (t0 + 4879);
    t19 = (4U != 4U);
    if (t19 == 1)
        goto LAB16;

LAB17:    t20 = (t0 + 3072);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t17, 4U);
    xsi_driver_first_trans_delta(t20, 28U, 4U, 0LL);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t25 = (31 - 27);
    t26 = (t25 * 1U);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t5 = (t0 + 3072);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 28U);
    xsi_driver_first_trans_delta(t5, 0U, 28U, 0LL);
    goto LAB5;

LAB7:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 4883);
    t3 = (4U != 4U);
    if (t3 == 1)
        goto LAB18;

LAB19:    t5 = (t0 + 3072);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_delta(t5, 0U, 4U, 0LL);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t25 = (31 - 31);
    t26 = (t25 * 1U);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t5 = (t0 + 3072);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 28U);
    xsi_driver_first_trans_delta(t5, 4U, 28U, 0LL);
    goto LAB5;

LAB8:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t7 = (31 - 31);
    t25 = (t7 * -1);
    t26 = (1U * t25);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3072);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = t3;
    xsi_driver_first_trans_delta(t5, 0U, 1, 0LL);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t7 = (31 - 31);
    t25 = (t7 * -1);
    t26 = (1U * t25);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3072);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = t3;
    xsi_driver_first_trans_delta(t5, 1U, 1, 0LL);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t7 = (31 - 31);
    t25 = (t7 * -1);
    t26 = (1U * t25);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3072);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = t3;
    xsi_driver_first_trans_delta(t5, 2U, 1, 0LL);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t7 = (31 - 31);
    t25 = (t7 * -1);
    t26 = (1U * t25);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 3072);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = t3;
    xsi_driver_first_trans_delta(t5, 3U, 1, 0LL);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t25 = (31 - 31);
    t26 = (t25 * 1U);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t5 = (t0 + 3072);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 28U);
    xsi_driver_first_trans_delta(t5, 4U, 28U, 0LL);
    goto LAB5;

LAB9:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t25 = (31 - 3);
    t26 = (t25 * 1U);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t5 = (t0 + 3072);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_delta(t5, 0U, 4U, 0LL);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t25 = (31 - 31);
    t26 = (t25 * 1U);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t5 = (t0 + 3072);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 28U);
    xsi_driver_first_trans_delta(t5, 4U, 28U, 0LL);
    goto LAB5;

LAB15:;
LAB16:    xsi_size_not_matching(4U, 4U, 0);
    goto LAB17;

LAB18:    xsi_size_not_matching(4U, 4U, 0);
    goto LAB19;

}


extern void work_a_2058635832_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2058635832_3212880686_p_0};
	xsi_register_didat("work_a_2058635832_3212880686", "isim/Test_Control_isim_beh.exe.sim/work/a_2058635832_3212880686.didat");
	xsi_register_executes(pe);
}
