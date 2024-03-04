package com.guochao.faceshow.aaspring.utils;

import java.util.Calendar;
/* loaded from: classes3.dex */
public class CalenderUtils {
    public static int getDaysBetween(Calendar calendar, Calendar calendar2) {
        if (!calendar.after(calendar2)) {
            calendar2 = calendar;
            calendar = calendar2;
        }
        int i9 = calendar.get(6) - calendar2.get(6);
        int i10 = calendar.get(1);
        if (calendar2.get(1) != i10) {
            Calendar calendar3 = (Calendar) calendar2.clone();
            do {
                i9 += calendar3.getActualMaximum(6);
                calendar3.add(1, 1);
            } while (calendar3.get(1) != i10);
            return i9;
        }
        return i9;
    }
}
