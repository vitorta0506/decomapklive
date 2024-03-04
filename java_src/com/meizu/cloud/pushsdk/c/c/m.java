package com.meizu.cloud.pushsdk.c.c;

import java.io.Closeable;
import java.net.IDN;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Pattern;
/* loaded from: classes4.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f28458a = new byte[0];

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f28459b = new String[0];

    /* renamed from: c  reason: collision with root package name */
    public static final Charset f28460c = Charset.forName("UTF-8");

    /* renamed from: d  reason: collision with root package name */
    public static final TimeZone f28461d = TimeZone.getTimeZone("GMT");

    /* renamed from: e  reason: collision with root package name */
    private static final Pattern f28462e = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    public static int a(String str, int i9, int i10) {
        while (i9 < i10) {
            char charAt = str.charAt(i9);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i9;
            }
            i9++;
        }
        return i10;
    }

    public static int a(String str, int i9, int i10, char c10) {
        while (i9 < i10) {
            if (str.charAt(i9) == c10) {
                return i9;
            }
            i9++;
        }
        return i10;
    }

    public static int a(String str, int i9, int i10, String str2) {
        while (i9 < i10) {
            if (str2.indexOf(str.charAt(i9)) != -1) {
                return i9;
            }
            i9++;
        }
        return i10;
    }

    public static String a(String str) {
        try {
            String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
            if (lowerCase.isEmpty()) {
                return null;
            }
            if (b(lowerCase)) {
                return null;
            }
            return lowerCase;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static <T> List<T> a(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static void a(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static int b(String str, int i9, int i10) {
        for (int i11 = i10 - 1; i11 >= i9; i11--) {
            char charAt = str.charAt(i11);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i11 + 1;
            }
        }
        return i9;
    }

    private static boolean b(String str) {
        for (int i9 = 0; i9 < str.length(); i9++) {
            char charAt = str.charAt(i9);
            if (charAt <= 31 || charAt >= 127 || " #%/:?@[\\]".indexOf(charAt) != -1) {
                return true;
            }
        }
        return false;
    }
}
