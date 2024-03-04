package org.light.device;
/* loaded from: classes7.dex */
class CPUYearList {
    private static final long KHZ = 1000;
    private static final int START_CORE_YEAR = 2012;
    private static final int START_YEAR = 2013;
    private static final long[] SCPU_Freq = {1520000, 1620000, 1780000, 2000000, 2200000, 2600000};
    private static final int[] SCORES_NUM = {2, 3, 7};

    CPUYearList() {
    }

    public static int getCPUOclock(long j10) {
        int length = SCPU_Freq.length;
        while (true) {
            length--;
            if (length < 0) {
                return 2013;
            }
            if (SCPU_Freq[length] < j10) {
                return length + 2013;
            }
        }
    }

    public static int getCoreNumYear(int i9) {
        int length = SCORES_NUM.length;
        while (true) {
            length--;
            if (length < 0) {
                return 2012;
            }
            if (SCORES_NUM[length] < i9) {
                return length + 2012;
            }
        }
    }
}
