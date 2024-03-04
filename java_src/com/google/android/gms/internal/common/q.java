package com.google.android.gms.internal.common;

import org.jspecify.nullness.NullMarked;
@NullMarked
/* loaded from: classes2.dex */
public final class q {
    public static int a(int i9, int i10, String str) {
        String a10;
        if (i9 < 0 || i9 >= i10) {
            if (i9 < 0) {
                a10 = r.a("%s (%s) must not be negative", "index", Integer.valueOf(i9));
            } else if (i10 < 0) {
                throw new IllegalArgumentException("negative size: " + i10);
            } else {
                a10 = r.a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i9), Integer.valueOf(i10));
            }
            throw new IndexOutOfBoundsException(a10);
        }
        return i9;
    }

    public static int b(int i9, int i10, String str) {
        if (i9 < 0 || i9 > i10) {
            throw new IndexOutOfBoundsException(d(i9, i10, "index"));
        }
        return i9;
    }

    public static void c(int i9, int i10, int i11) {
        String d10;
        if (i9 < 0 || i10 < i9 || i10 > i11) {
            if (i9 >= 0 && i9 <= i11) {
                d10 = (i10 < 0 || i10 > i11) ? d(i10, i11, "end index") : r.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i10), Integer.valueOf(i9));
            } else {
                d10 = d(i9, i11, "start index");
            }
            throw new IndexOutOfBoundsException(d10);
        }
    }

    private static String d(int i9, int i10, String str) {
        if (i9 < 0) {
            return r.a("%s (%s) must not be negative", str, Integer.valueOf(i9));
        }
        if (i10 >= 0) {
            return r.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i9), Integer.valueOf(i10));
        }
        throw new IllegalArgumentException("negative size: " + i10);
    }
}
