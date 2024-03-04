package com.google.gson.internal;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* loaded from: classes2.dex */
public class PreJava9DateFormatProvider {
    private static String getDateFormatPattern(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 == 3) {
                        return "M/d/yy";
                    }
                    throw new IllegalArgumentException("Unknown DateFormat style: " + i9);
                }
                return "MMM d, y";
            }
            return "MMMM d, y";
        }
        return "EEEE, MMMM d, y";
    }

    private static String getDatePartOfDateTimePattern(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 == 3) {
                        return "M/d/yy";
                    }
                    throw new IllegalArgumentException("Unknown DateFormat style: " + i9);
                }
                return "MMM d, yyyy";
            }
            return "MMMM d, yyyy";
        }
        return "EEEE, MMMM d, yyyy";
    }

    private static String getTimePartOfDateTimePattern(int i9) {
        if (i9 == 0 || i9 == 1) {
            return "h:mm:ss a z";
        }
        if (i9 != 2) {
            if (i9 == 3) {
                return "h:mm a";
            }
            throw new IllegalArgumentException("Unknown DateFormat style: " + i9);
        }
        return "h:mm:ss a";
    }

    public static DateFormat getUSDateFormat(int i9) {
        return new SimpleDateFormat(getDateFormatPattern(i9), Locale.US);
    }

    public static DateFormat getUSDateTimeFormat(int i9, int i10) {
        return new SimpleDateFormat(getDatePartOfDateTimePattern(i9) + " " + getTimePartOfDateTimePattern(i10), Locale.US);
    }
}
