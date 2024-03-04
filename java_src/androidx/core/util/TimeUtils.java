package androidx.core.util;

import androidx.annotation.RestrictTo;
import java.io.PrintWriter;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class TimeUtils {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final Object sFormatSync = new Object();
    private static char[] sFormatStr = new char[24];

    private TimeUtils() {
    }

    private static int accumField(int i9, int i10, boolean z10, int i11) {
        if (i9 > 99 || (z10 && i11 >= 3)) {
            return i10 + 3;
        }
        if (i9 > 9 || (z10 && i11 >= 2)) {
            return i10 + 2;
        }
        if (z10 || i9 > 0) {
            return i10 + 1;
        }
        return 0;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j10, StringBuilder sb2) {
        synchronized (sFormatSync) {
            sb2.append(sFormatStr, 0, formatDurationLocked(j10, 0));
        }
    }

    private static int formatDurationLocked(long j10, int i9) {
        char c10;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        long j11 = j10;
        if (sFormatStr.length < i9) {
            sFormatStr = new char[i9];
        }
        char[] cArr = sFormatStr;
        int i15 = (j11 > 0L ? 1 : (j11 == 0L ? 0 : -1));
        if (i15 == 0) {
            int i16 = i9 - 1;
            while (i16 > 0) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        if (i15 > 0) {
            c10 = '+';
        } else {
            c10 = '-';
            j11 = -j11;
        }
        int i17 = (int) (j11 % 1000);
        int floor = (int) Math.floor(j11 / 1000);
        if (floor > 86400) {
            i10 = floor / 86400;
            floor -= 86400 * i10;
        } else {
            i10 = 0;
        }
        if (floor > 3600) {
            i11 = floor / 3600;
            floor -= i11 * 3600;
        } else {
            i11 = 0;
        }
        if (floor > 60) {
            int i18 = floor / 60;
            i12 = floor - (i18 * 60);
            i13 = i18;
        } else {
            i12 = floor;
            i13 = 0;
        }
        if (i9 != 0) {
            int accumField = accumField(i10, 1, false, 0);
            int accumField2 = accumField + accumField(i11, 1, accumField > 0, 2);
            int accumField3 = accumField2 + accumField(i13, 1, accumField2 > 0, 2);
            int accumField4 = accumField3 + accumField(i12, 1, accumField3 > 0, 2);
            i14 = 0;
            for (int accumField5 = accumField4 + accumField(i17, 2, true, accumField4 > 0 ? 3 : 0) + 1; accumField5 < i9; accumField5++) {
                cArr[i14] = ' ';
                i14++;
            }
        } else {
            i14 = 0;
        }
        cArr[i14] = c10;
        int i19 = i14 + 1;
        boolean z10 = i9 != 0;
        int printField = printField(cArr, i10, 'd', i19, false, 0);
        int printField2 = printField(cArr, i11, 'h', printField, printField != i19, z10 ? 2 : 0);
        int printField3 = printField(cArr, i13, 'm', printField2, printField2 != i19, z10 ? 2 : 0);
        int printField4 = printField(cArr, i12, 's', printField3, printField3 != i19, z10 ? 2 : 0);
        int printField5 = printField(cArr, i17, 'm', printField4, true, (!z10 || printField4 == i19) ? 0 : 3);
        cArr[printField5] = 's';
        return printField5 + 1;
    }

    private static int printField(char[] cArr, int i9, char c10, int i10, boolean z10, int i11) {
        int i12;
        if (z10 || i9 > 0) {
            if ((!z10 || i11 < 3) && i9 <= 99) {
                i12 = i10;
            } else {
                int i13 = i9 / 100;
                cArr[i10] = (char) (i13 + 48);
                i12 = i10 + 1;
                i9 -= i13 * 100;
            }
            if ((z10 && i11 >= 2) || i9 > 9 || i10 != i12) {
                int i14 = i9 / 10;
                cArr[i12] = (char) (i14 + 48);
                i12++;
                i9 -= i14 * 10;
            }
            cArr[i12] = (char) (i9 + 48);
            int i15 = i12 + 1;
            cArr[i15] = c10;
            return i15 + 1;
        }
        return i10;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j10, PrintWriter printWriter, int i9) {
        synchronized (sFormatSync) {
            printWriter.print(new String(sFormatStr, 0, formatDurationLocked(j10, i9)));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j10, PrintWriter printWriter) {
        formatDuration(j10, printWriter, 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j10, long j11, PrintWriter printWriter) {
        if (j10 == 0) {
            printWriter.print("--");
        } else {
            formatDuration(j10 - j11, printWriter, 0);
        }
    }
}
