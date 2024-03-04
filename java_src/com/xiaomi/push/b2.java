package com.xiaomi.push;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Random;
/* loaded from: classes5.dex */
public class b2 {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f36382a = "&quot;".toCharArray();

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f36383b = "&apos;".toCharArray();

    /* renamed from: c  reason: collision with root package name */
    private static final char[] f36384c = "&amp;".toCharArray();

    /* renamed from: d  reason: collision with root package name */
    private static final char[] f36385d = "&lt;".toCharArray();

    /* renamed from: e  reason: collision with root package name */
    private static final char[] f36386e = "&gt;".toCharArray();

    /* renamed from: f  reason: collision with root package name */
    private static Random f36387f = new Random();

    /* renamed from: g  reason: collision with root package name */
    private static char[] f36388g = "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();

    public static String a(int i9) {
        if (i9 < 1) {
            return null;
        }
        char[] cArr = new char[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            cArr[i10] = f36388g[f36387f.nextInt(71)];
        }
        return new String(cArr);
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        StringBuilder sb2 = new StringBuilder((int) (length * 1.3d));
        int i9 = 0;
        int i10 = 0;
        while (i9 < length) {
            char c10 = charArray[i9];
            if (c10 <= '>') {
                if (c10 == '<') {
                    if (i9 > i10) {
                        sb2.append(charArray, i10, i9 - i10);
                    }
                    i10 = i9 + 1;
                    sb2.append(f36385d);
                } else if (c10 == '>') {
                    if (i9 > i10) {
                        sb2.append(charArray, i10, i9 - i10);
                    }
                    i10 = i9 + 1;
                    sb2.append(f36386e);
                } else if (c10 == '&') {
                    if (i9 > i10) {
                        sb2.append(charArray, i10, i9 - i10);
                    }
                    int i11 = i9 + 5;
                    if (length <= i11 || charArray[i9 + 1] != '#' || !Character.isDigit(charArray[i9 + 2]) || !Character.isDigit(charArray[i9 + 3]) || !Character.isDigit(charArray[i9 + 4]) || charArray[i11] != ';') {
                        i10 = i9 + 1;
                        sb2.append(f36384c);
                    }
                } else if (c10 == '\"') {
                    if (i9 > i10) {
                        sb2.append(charArray, i10, i9 - i10);
                    }
                    i10 = i9 + 1;
                    sb2.append(f36382a);
                } else if (c10 == '\'') {
                    if (i9 > i10) {
                        sb2.append(charArray, i10, i9 - i10);
                    }
                    i10 = i9 + 1;
                    sb2.append(f36383b);
                }
            }
            i9++;
        }
        if (i10 == 0) {
            return str;
        }
        if (i9 > i10) {
            sb2.append(charArray, i10, i9 - i10);
        }
        return sb2.toString();
    }

    public static final String c(String str, String str2, String str3) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(str2, 0);
        if (indexOf < 0) {
            return str;
        }
        char[] charArray = str.toCharArray();
        char[] charArray2 = str3.toCharArray();
        int length = str2.length();
        StringBuilder sb2 = new StringBuilder(charArray.length);
        sb2.append(charArray, 0, indexOf);
        sb2.append(charArray2);
        int i9 = indexOf + length;
        while (true) {
            int indexOf2 = str.indexOf(str2, i9);
            if (indexOf2 <= 0) {
                sb2.append(charArray, i9, charArray.length - i9);
                return sb2.toString();
            }
            sb2.append(charArray, i9, indexOf2 - i9);
            sb2.append(charArray2);
            i9 = indexOf2 + length;
        }
    }

    public static String d(byte[] bArr) {
        return String.valueOf(b.e(bArr));
    }

    public static final String e(String str) {
        return c(c(c(c(c(str, "&lt;", "<"), "&gt;", ">"), "&quot;", "\""), "&apos;", "'"), "&amp;", ContainerUtils.FIELD_DELIMITER);
    }
}
