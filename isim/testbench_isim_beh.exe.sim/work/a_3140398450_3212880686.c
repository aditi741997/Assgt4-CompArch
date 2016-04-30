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
static const char *ng0 = "D:/Sem4/CompArch/Lab/Assgt4-CompArch/co_src/coMult_Unit.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_3140398450_3212880686_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(55, ng0);

LAB3:    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t1, t4, 5);
    t5 = (t0 + 3656);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 5U);
    xsi_driver_first_trans_fast(t5);

LAB2:    t10 = (t0 + 3560);
    *((int *)t10) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3140398450_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3720);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 48U);
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 3576);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 5973);
    t6 = (t0 + 3720);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 48U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

}


extern void work_a_3140398450_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3140398450_3212880686_p_0,(void *)work_a_3140398450_3212880686_p_1};
	xsi_register_didat("work_a_3140398450_3212880686", "isim/testbench_isim_beh.exe.sim/work/a_3140398450_3212880686.didat");
	xsi_register_executes(pe);
}
