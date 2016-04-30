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
static const char *ng0 = "C:/Users/Shreyan/Desktop/LOL/Assgt4-CompArch/co_src/coShiftR_ALU.vhd";



static void work_a_1098225424_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = (t0 + 4080);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 3968);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1098225424_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    char *t5;
    int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    int t23;
    int t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned char t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    int t38;
    int t39;
    int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    int t44;
    int t45;
    int t46;
    unsigned int t47;
    unsigned int t48;

LAB0:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (t3 > 27);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t6 = *((int *)t5);
    t7 = (t6 > 0);
    if (t7 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t12 = (26 - 26);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t5 = (t0 + 4144);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t15 = (t9 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 27U);
    xsi_driver_first_trans_delta(t5, 0U, 27U, 0LL);

LAB6:
LAB3:    t1 = (t0 + 3984);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    goto LAB3;

LAB5:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1992U);
    t8 = *((char **)t1);
    t1 = (t0 + 1512U);
    t9 = *((char **)t1);
    t10 = *((int *)t9);
    t11 = (t10 - 1);
    t12 = (26 - t11);
    xsi_vhdl_check_range_of_slice(26, 0, -1, t11, 0, -1);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t8 + t14);
    t15 = (t0 + 1512U);
    t16 = *((char **)t15);
    t17 = *((int *)t16);
    t18 = (27 - t17);
    t19 = (t18 - 26);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t21 = (1U * t20);
    t15 = (t0 + 1512U);
    t22 = *((char **)t15);
    t23 = *((int *)t22);
    t24 = (t23 - 1);
    t25 = (0 - t24);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t27 = (1U * t26);
    t28 = (t21 != t27);
    if (t28 == 1)
        goto LAB8;

LAB9:    t29 = (26 - 26);
    t30 = (1U * t29);
    t31 = (0U + t30);
    t15 = (t0 + 4144);
    t32 = (t15 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t0 + 1512U);
    t37 = *((char **)t36);
    t38 = *((int *)t37);
    t39 = (27 - t38);
    t40 = (t39 - 26);
    t41 = (t40 * -1);
    t41 = (t41 + 1);
    t42 = (1U * t41);
    memcpy(t35, t1, t42);
    t36 = (t0 + 1512U);
    t43 = *((char **)t36);
    t44 = *((int *)t43);
    t45 = (27 - t44);
    t46 = (t45 - 26);
    t47 = (t46 * -1);
    t47 = (t47 + 1);
    t48 = (1U * t47);
    xsi_driver_first_trans_delta(t15, t31, t48, 0LL);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t12 = (26 - 26);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t3 = *((int *)t5);
    t6 = (1 + t3);
    xsi_vhdl_check_range_of_slice(26, 0, -1, 26, t6, -1);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t8 = (t0 + 1512U);
    t9 = *((char **)t8);
    t10 = *((int *)t9);
    t11 = (26 - t10);
    t17 = (1 - t11);
    t20 = (t17 * -1);
    t20 = (t20 + 1);
    t21 = (1U * t20);
    t8 = (t0 + 1512U);
    t15 = *((char **)t8);
    t18 = *((int *)t15);
    t19 = (1 + t18);
    t23 = (t19 - 26);
    t26 = (t23 * -1);
    t26 = (t26 + 1);
    t27 = (1U * t26);
    t4 = (t21 != t27);
    if (t4 == 1)
        goto LAB10;

LAB11:    t8 = (t0 + 1512U);
    t16 = *((char **)t8);
    t24 = *((int *)t16);
    t25 = (26 - t24);
    t29 = (26 - t25);
    t30 = (1U * t29);
    t31 = (0U + t30);
    t8 = (t0 + 4144);
    t22 = (t8 + 56U);
    t32 = *((char **)t22);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t0 + 1512U);
    t36 = *((char **)t35);
    t38 = *((int *)t36);
    t39 = (26 - t38);
    t40 = (1 - t39);
    t41 = (t40 * -1);
    t41 = (t41 + 1);
    t42 = (1U * t41);
    memcpy(t34, t1, t42);
    t35 = (t0 + 1512U);
    t37 = *((char **)t35);
    t44 = *((int *)t37);
    t45 = (26 - t44);
    t46 = (1 - t45);
    t47 = (t46 * -1);
    t47 = (t47 + 1);
    t48 = (1U * t47);
    xsi_driver_first_trans_delta(t8, t31, t48, 0LL);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t3 = *((int *)t5);
    t12 = (26 - t3);
    xsi_vhdl_check_range_of_slice(26, 0, -1, t3, 0, -1);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t8 = (t0 + 1512U);
    t9 = *((char **)t8);
    t6 = *((int *)t9);
    t10 = (0 - t6);
    t20 = (t10 * -1);
    t20 = (t20 + 1);
    t21 = (1U * t20);
    t8 = (t0 + 1992U);
    t15 = *((char **)t8);
    t8 = (t0 + 1512U);
    t16 = *((char **)t8);
    t11 = *((int *)t16);
    t26 = (26 - t11);
    xsi_vhdl_check_range_of_slice(26, 0, -1, t11, 0, -1);
    t27 = (t26 * 1U);
    t29 = (0 + t27);
    t8 = (t15 + t29);
    t22 = (t0 + 1512U);
    t32 = *((char **)t22);
    t17 = *((int *)t32);
    t18 = (0 - t17);
    t30 = (t18 * -1);
    t30 = (t30 + 1);
    t31 = (1U * t30);
    t4 = 1;
    if (t21 == t31)
        goto LAB15;

LAB16:    t4 = 0;

LAB17:    if (t4 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4144);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 26U, 1, 0LL);

LAB13:    goto LAB6;

LAB8:    xsi_size_not_matching(t21, t27, 0);
    goto LAB9;

LAB10:    xsi_size_not_matching(t21, t27, 0);
    goto LAB11;

LAB12:    xsi_set_current_line(62, ng0);
    t34 = (t0 + 4144);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    t37 = (t36 + 56U);
    t43 = *((char **)t37);
    *((unsigned char *)t43) = (unsigned char)2;
    xsi_driver_first_trans_delta(t34, 26U, 1, 0LL);
    goto LAB13;

LAB15:    t41 = 0;

LAB18:    if (t41 < t21)
        goto LAB19;
    else
        goto LAB17;

LAB19:    t22 = (t1 + t41);
    t33 = (t8 + t41);
    if (*((unsigned char *)t22) != *((unsigned char *)t33))
        goto LAB16;

LAB20:    t41 = (t41 + 1);
    goto LAB18;

}

static void work_a_1098225424_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(72, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 4208);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 27U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4000);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1098225424_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1098225424_3212880686_p_0,(void *)work_a_1098225424_3212880686_p_1,(void *)work_a_1098225424_3212880686_p_2};
	xsi_register_didat("work_a_1098225424_3212880686", "isim/testbench_isim_beh.exe.sim/work/a_1098225424_3212880686.didat");
	xsi_register_executes(pe);
}
