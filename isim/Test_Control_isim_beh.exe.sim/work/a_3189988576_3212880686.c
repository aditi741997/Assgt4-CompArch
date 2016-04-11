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
static const char *ng0 = "C:/Users/Shreyan/Desktop/LOL/Assgt4-CompArch/src/ALU_Basic.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_3189988576_3212880686_p_0(char *t0)
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
    unsigned char t11;
    unsigned char t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    int t24;
    int t25;
    int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = (1 - 1);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 2288U);
    t9 = *((char **)t1);
    t1 = (t9 + 0);
    *((unsigned char *)t1) = t7;

LAB3:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = (0 - 1);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 2408U);
    t9 = *((char **)t1);
    t1 = (t9 + 0);
    *((unsigned char *)t1) = t7;

LAB6:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 2408U);
    t9 = *((char **)t1);
    t8 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t8);
    t1 = (t0 + 2288U);
    t10 = *((char **)t1);
    t12 = *((unsigned char *)t10);
    t1 = (t0 + 2408U);
    t13 = *((char **)t1);
    t14 = *((unsigned char *)t13);
    t15 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t12, t14);
    t1 = (t0 + 1352U);
    t16 = *((char **)t1);
    t17 = *((unsigned char *)t16);
    t18 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t15, t17);
    t19 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t11, t18);
    t1 = (t0 + 3792);
    t20 = (t1 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = t19;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6001);
    t3 = xsi_mem_cmp(t1, t2, 2U);
    if (t3 == 1)
        goto LAB9;

LAB14:    t10 = (t0 + 6003);
    t24 = xsi_mem_cmp(t10, t2, 2U);
    if (t24 == 1)
        goto LAB10;

LAB15:    t16 = (t0 + 6005);
    t25 = xsi_mem_cmp(t16, t2, 2U);
    if (t25 == 1)
        goto LAB11;

LAB16:    t21 = (t0 + 6007);
    t26 = xsi_mem_cmp(t21, t2, 2U);
    if (t26 == 1)
        goto LAB12;

LAB17:
LAB13:    xsi_set_current_line(65, ng0);

LAB8:    t1 = (t0 + 3712);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t9 = (t0 + 2288U);
    t10 = *((char **)t9);
    t9 = (t10 + 0);
    *((unsigned char *)t9) = (unsigned char)2;
    goto LAB3;

LAB5:    xsi_set_current_line(55, ng0);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t11 = *((unsigned char *)t10);
    t12 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t11);
    t9 = (t0 + 2408U);
    t13 = *((char **)t9);
    t9 = (t13 + 0);
    *((unsigned char *)t9) = t12;
    goto LAB6;

LAB9:    xsi_set_current_line(61, ng0);
    t23 = (t0 + 2288U);
    t27 = *((char **)t23);
    t7 = *((unsigned char *)t27);
    t23 = (t0 + 2408U);
    t28 = *((char **)t23);
    t8 = *((unsigned char *)t28);
    t11 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t8);
    t23 = (t0 + 3856);
    t29 = (t23 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    *((unsigned char *)t32) = t11;
    xsi_driver_first_trans_fast_port(t23);
    goto LAB8;

LAB10:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 2408U);
    t9 = *((char **)t1);
    t8 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t7, t8);
    t1 = (t0 + 3856);
    t10 = (t1 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t20 = *((char **)t16);
    *((unsigned char *)t20) = t11;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB11:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 2408U);
    t9 = *((char **)t1);
    t8 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t7, t8);
    t1 = (t0 + 3856);
    t10 = (t1 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t20 = *((char **)t16);
    *((unsigned char *)t20) = t11;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB12:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 2408U);
    t9 = *((char **)t1);
    t8 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t7, t8);
    t1 = (t0 + 1352U);
    t10 = *((char **)t1);
    t12 = *((unsigned char *)t10);
    t14 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t11, t12);
    t1 = (t0 + 3856);
    t13 = (t1 + 56U);
    t16 = *((char **)t13);
    t20 = (t16 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = t14;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB18:;
}


extern void work_a_3189988576_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3189988576_3212880686_p_0};
	xsi_register_didat("work_a_3189988576_3212880686", "isim/Test_Control_isim_beh.exe.sim/work/a_3189988576_3212880686.didat");
	xsi_register_executes(pe);
}
