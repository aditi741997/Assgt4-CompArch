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
static const char *ng0 = "C:/Users/Shreyan/Desktop/LOL/Assgt4-CompArch/co_src/coShiftLR_Nml.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_0243096240_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    unsigned char t21;
    int t22;
    int t23;
    unsigned char t24;
    unsigned char t25;
    int t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    int t35;
    int t36;
    int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    int t41;
    int t42;
    int t43;
    unsigned int t44;
    unsigned int t45;
    int t46;
    char *t47;
    int t48;
    int t49;
    int t50;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (27 - 27);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (26 - 27);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 4120);
    t2 = (t1 + 56U);
    t9 = *((char **)t2);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 25;
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2408U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(70, ng0);

LAB8:    t1 = (t0 + 2408U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t18 = (t8 == (unsigned char)2);
    if (t18 == 1)
        goto LAB12;

LAB13:    t7 = (unsigned char)0;

LAB14:    if (t7 != 0)
        goto LAB9;

LAB11:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2408U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t8 = (t7 == (unsigned char)2);
    if (t8 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 4184);
    t2 = (t1 + 56U);
    t9 = *((char **)t2);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t14 = (26 - t3);
    t1 = (t0 + 4056);
    t9 = (t1 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((int *)t12) = t14;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 2288U);
    t9 = *((char **)t1);
    t3 = *((int *)t9);
    t4 = (27 - t3);
    xsi_vhdl_check_range_of_slice(27, 0, -1, t3, 0, -1);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t10 = (t0 + 2288U);
    t11 = *((char **)t10);
    t14 = *((int *)t11);
    t22 = (26 - t14);
    t23 = (t22 - 26);
    t15 = (t23 * -1);
    t15 = (t15 + 1);
    t16 = (1U * t15);
    t10 = (t0 + 2288U);
    t12 = *((char **)t10);
    t26 = *((int *)t12);
    t27 = (0 - t26);
    t17 = (t27 * -1);
    t17 = (t17 + 1);
    t28 = (1U * t17);
    t7 = (t16 != t28);
    if (t7 == 1)
        goto LAB21;

LAB22:    t29 = (26 - 26);
    t30 = (1U * t29);
    t31 = (0U + t30);
    t10 = (t0 + 4248);
    t13 = (t10 + 56U);
    t19 = *((char **)t13);
    t20 = (t19 + 56U);
    t32 = *((char **)t20);
    t33 = (t0 + 2288U);
    t34 = *((char **)t33);
    t35 = *((int *)t34);
    t36 = (26 - t35);
    t37 = (t36 - 26);
    t38 = (t37 * -1);
    t38 = (t38 + 1);
    t39 = (1U * t38);
    memcpy(t32, t1, t39);
    t33 = (t0 + 2288U);
    t40 = *((char **)t33);
    t41 = *((int *)t40);
    t42 = (26 - t41);
    t43 = (t42 - 26);
    t44 = (t43 * -1);
    t44 = (t44 + 1);
    t45 = (1U * t44);
    xsi_driver_first_trans_delta(t10, t31, t45, 0LL);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 2288U);
    t9 = *((char **)t1);
    t3 = *((int *)t9);
    t14 = (25 - t3);
    t4 = (26 - t14);
    xsi_vhdl_check_range_of_slice(26, 0, -1, t14, 0, -1);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t10 = (t0 + 2288U);
    t11 = *((char **)t10);
    t22 = *((int *)t11);
    t23 = (25 - t22);
    t26 = (0 - t23);
    t15 = (t26 * -1);
    t15 = (t15 + 1);
    t16 = (1U * t15);
    t10 = (t0 + 2288U);
    t12 = *((char **)t10);
    t27 = *((int *)t12);
    t35 = (25 - t27);
    t36 = (0 - t35);
    t17 = (t36 * -1);
    t17 = (t17 + 1);
    t28 = (1U * t17);
    t7 = (t16 != t28);
    if (t7 == 1)
        goto LAB23;

LAB24:    t10 = (t0 + 2288U);
    t13 = *((char **)t10);
    t37 = *((int *)t13);
    t41 = (25 - t37);
    t29 = (26 - t41);
    t30 = (1U * t29);
    t31 = (0U + t30);
    t10 = (t0 + 4248);
    t19 = (t10 + 56U);
    t20 = *((char **)t19);
    t32 = (t20 + 56U);
    t33 = *((char **)t32);
    t34 = (t0 + 2288U);
    t40 = *((char **)t34);
    t42 = *((int *)t40);
    t43 = (25 - t42);
    t46 = (0 - t43);
    t38 = (t46 * -1);
    t38 = (t38 + 1);
    t39 = (1U * t38);
    memcpy(t33, t1, t39);
    t34 = (t0 + 2288U);
    t47 = *((char **)t34);
    t48 = *((int *)t47);
    t49 = (25 - t48);
    t50 = (0 - t49);
    t44 = (t50 * -1);
    t44 = (t44 + 1);
    t45 = (1U * t44);
    xsi_driver_first_trans_delta(t10, t31, t45, 0LL);

LAB19:
LAB6:
LAB3:    t1 = (t0 + 3960);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t9 = (t0 + 4056);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = 1;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 4120);
    t2 = (t1 + 56U);
    t9 = *((char **)t2);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 4184);
    t2 = (t1 + 56U);
    t9 = *((char **)t2);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = (27 - 27);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t9 = (t0 + 4248);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 26U);
    xsi_driver_first_trans_delta(t9, 0U, 26U, 0LL);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (1 - 27);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t14 = (0 - 27);
    t15 = (t14 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t9 = (t10 + t17);
    t8 = *((unsigned char *)t9);
    t18 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t7, t8);
    t11 = (t0 + 4248);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t19 = (t13 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t18;
    xsi_driver_first_trans_delta(t11, 26U, 1, 0LL);
    goto LAB3;

LAB5:    xsi_set_current_line(62, ng0);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t15 = (27 - 26);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t9 = (t10 + t17);
    t11 = (t0 + 4248);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t19 = (t13 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t9, 27U);
    xsi_driver_first_trans_delta(t11, 0U, 27U, 0LL);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 4056);
    t2 = (t1 + 56U);
    t9 = *((char **)t2);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4184);
    t2 = (t1 + 56U);
    t9 = *((char **)t2);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 4120);
    t2 = (t1 + 56U);
    t9 = *((char **)t2);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

LAB9:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1032U);
    t10 = *((char **)t1);
    t1 = (t0 + 2288U);
    t11 = *((char **)t1);
    t22 = *((int *)t11);
    t23 = (t22 - 27);
    t4 = (t23 * -1);
    xsi_vhdl_check_range_of_index(27, 0, -1, t22);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t10 + t6);
    t24 = *((unsigned char *)t1);
    t25 = (t24 == (unsigned char)3);
    if (t25 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t14 = (t3 - 1);
    t1 = (t0 + 2288U);
    t9 = *((char **)t1);
    t1 = (t9 + 0);
    *((int *)t1) = t14;

LAB16:    goto LAB8;

LAB10:;
LAB12:    t1 = (t0 + 2288U);
    t9 = *((char **)t1);
    t3 = *((int *)t9);
    t14 = (-(1));
    t21 = (t3 > t14);
    t7 = t21;
    goto LAB14;

LAB15:    xsi_set_current_line(72, ng0);
    t12 = (t0 + 2408U);
    t13 = *((char **)t12);
    t12 = (t13 + 0);
    *((unsigned char *)t12) = (unsigned char)3;
    goto LAB16;

LAB18:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 4184);
    t9 = (t1 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 4056);
    t2 = (t1 + 56U);
    t9 = *((char **)t2);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 4248);
    t9 = (t1 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 27U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB19;

LAB21:    xsi_size_not_matching(t16, t28, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(t16, t28, 0);
    goto LAB24;

}

static void work_a_0243096240_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(91, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = (t0 + 4312);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 3976);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0243096240_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0243096240_3212880686_p_0,(void *)work_a_0243096240_3212880686_p_1};
	xsi_register_didat("work_a_0243096240_3212880686", "isim/testbench_isim_beh.exe.sim/work/a_0243096240_3212880686.didat");
	xsi_register_executes(pe);
}
