/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2007 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

/* This file is designed for use with ISim build 0x734844ce */

#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//vmware-host/Shared Folders/SharedXM/EE533Lab6/PipelinedDatapath/ProgCountVerilog.v";
static unsigned int ng1[] = {0U, 0U, 0U, 0U};
static unsigned int ng2[] = {4U, 0U, 0U, 0U};



static void A11_0(char *t0)
{
    char t12[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;

LAB0:    t1 = (t0 + 1604U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(11, ng0);
    t2 = (t0 + 1784);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(11, ng0);

LAB5:    xsi_set_current_line(12, ng0);
    t3 = (t0 + 728U);
    t4 = *((char **)t3);
    t3 = (t4 + 4U);
    t5 = *((unsigned int *)t3);
    t6 = (~(t5));
    t7 = *((unsigned int *)t4);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(14, ng0);
    t2 = (t0 + 816U);
    t3 = *((char **)t2);
    t2 = (t3 + 4U);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t3);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 1128);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t10 = ((char*)((ng2)));
    xsi_vlog_unsigned_add(t12, 64, t4, 64, t10, 64);
    t11 = (t0 + 1128);
    xsi_vlogvar_generic_wait_assign_value(t11, t12, 2, 0, 0, 64, 0LL);

LAB11:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(13, ng0);
    t10 = ((char*)((ng1)));
    t11 = (t0 + 1128);
    xsi_vlogvar_generic_wait_assign_value(t11, t10, 2, 0, 0, 64, 0LL);
    goto LAB8;

LAB9:    xsi_set_current_line(15, ng0);
    t4 = (t0 + 904U);
    t10 = *((char **)t4);
    t4 = (t0 + 1128);
    xsi_vlogvar_generic_wait_assign_value(t4, t10, 2, 0, 0, 64, 0LL);
    goto LAB11;

}


extern void work_m_00000000001600986457_2887323381_init()
{
	static char *pe[] = {(void *)A11_0};
	xsi_register_didat("work_m_00000000001600986457_2887323381", "isim/_tmp/work/m_00000000001600986457_2887323381.didat");
	xsi_register_executes(pe);
}
