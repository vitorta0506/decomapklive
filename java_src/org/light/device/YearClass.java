package org.light.device;

import android.content.Context;
import java.util.ArrayList;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class YearClass {
    public static final int CLASS_UNKNOWN = -1;
    private static final String TAG = "Phone_year";
    private static long mCPUMaxFreq = 0;
    private static int mCoreNum = 0;
    private static long mTotalMem = 0;
    private static volatile Integer mYearCategory = null;
    private static int sBaseYear = 2012;
    private static float sCpuRate = 0.5f;

    private static int categorizeByYear(Context context) {
        float f10;
        int clockSpeedYear = getClockSpeedYear();
        int ramYear = getRamYear(context);
        int i9 = -1;
        if (clockSpeedYear != -1 || -1 != ramYear) {
            int i10 = sBaseYear;
            float f11 = clockSpeedYear >= i10 ? clockSpeedYear * sCpuRate : 0.0f;
            if (f11 <= 0.0f) {
                f10 = ramYear;
            } else {
                f10 = ramYear >= i10 ? (ramYear * (1.0f - sCpuRate)) + f11 : clockSpeedYear;
            }
            i9 = (int) (f10 + 0.5f);
        }
        LightLogUtil.i(TAG, "手机配置所属年份为：" + i9 + ",cpuYear:" + clockSpeedYear + ",ramYear:" + ramYear);
        return i9;
    }

    private static void conditionallyAdd(ArrayList<Integer> arrayList, int i9) {
        if (i9 != -1) {
            arrayList.add(Integer.valueOf(i9));
        }
    }

    public static int get(Context context) {
        if (mYearCategory == null) {
            if (context == null) {
                return -1;
            }
            synchronized (YearClass.class) {
                if (mYearCategory == null) {
                    mYearCategory = Integer.valueOf(categorizeByYear(context));
                }
            }
        }
        return mYearCategory.intValue();
    }

    private static int getClockSpeedYear() {
        mCPUMaxFreq = LightDeviceUtils.getMaxCpuFreq();
        LightLogUtil.i(TAG, "cpuMaxHZ:" + mCPUMaxFreq);
        long j10 = mCPUMaxFreq;
        if (j10 <= 0) {
            return -1;
        }
        return CPUYearList.getCPUOclock(j10);
    }

    private static int getNumCoresYear() {
        mCoreNum = LightDeviceUtils.getNumCores();
        LightLogUtil.i(TAG, "corenum:" + mCoreNum);
        return CPUYearList.getCoreNumYear(mCoreNum);
    }

    public static String getPhonHWInfo() {
        return "CPU core num:" + mCoreNum + ",CPU max freq:" + mCPUMaxFreq + ",total memory:" + mTotalMem;
    }

    private static int getRamYear(Context context) {
        long totalRamMemory = LightDeviceUtils.getTotalRamMemory(context);
        mTotalMem = totalRamMemory;
        LightLogUtil.i(TAG, "ramSize:" + mTotalMem);
        if (mTotalMem <= 0) {
            return -1;
        }
        return RamYearList.getRamYear(totalRamMemory);
    }
}
