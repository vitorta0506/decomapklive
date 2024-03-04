package com.google.re2j;

import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
abstract class p {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f15549a = new int[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i9, int i10) {
        int i11 = i9 < 0 ? 5 : 0;
        if (i9 == 10) {
            i11 |= 1;
        }
        if (i10 < 0) {
            i11 |= 10;
        }
        if (i10 == 10) {
            i11 |= 2;
        }
        return c(i9) != c(i10) ? i11 | 16 : i11 | 32;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(StringBuilder sb2, int i9) {
        if (n.c(i9)) {
            if ("\\.+*?()|[]{}^$".indexOf((char) i9) >= 0) {
                sb2.append(IOUtils.DIR_SEPARATOR_WINDOWS);
            }
            sb2.appendCodePoint(i9);
        } else if (i9 == 12) {
            sb2.append("\\f");
        } else if (i9 == 13) {
            sb2.append("\\r");
        } else if (i9 == 34) {
            sb2.append("\\\"");
        } else if (i9 != 92) {
            switch (i9) {
                case 8:
                    sb2.append("\\b");
                    return;
                case 9:
                    sb2.append("\\t");
                    return;
                case 10:
                    sb2.append("\\n");
                    return;
                default:
                    String hexString = Integer.toHexString(i9);
                    if (i9 < 256) {
                        sb2.append("\\x");
                        if (hexString.length() == 1) {
                            sb2.append('0');
                        }
                        sb2.append(hexString);
                        return;
                    }
                    sb2.append("\\x{");
                    sb2.append(hexString);
                    sb2.append('}');
                    return;
            }
        } else {
            sb2.append("\\\\");
        }
    }

    static boolean c(int i9) {
        return (65 <= i9 && i9 <= 90) || (97 <= i9 && i9 <= 122) || ((48 <= i9 && i9 <= 57) || i9 == 95);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(int i9) {
        return (48 <= i9 && i9 <= 57) || (65 <= i9 && i9 <= 90) || (97 <= i9 && i9 <= 122);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e(int i9) {
        char c10 = (char) i9;
        return i9 == c10 ? String.valueOf(c10) : new String(Character.toChars(c10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] f(String str) {
        int length = str.length();
        int i9 = 0;
        int[] iArr = new int[str.codePointCount(0, length)];
        int i10 = 0;
        while (i9 < length) {
            int codePointAt = str.codePointAt(i9);
            iArr[i10] = codePointAt;
            i9 += Character.charCount(codePointAt);
            i10++;
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] g(int[] iArr, int i9, int i10) {
        int[] iArr2 = new int[i10 - i9];
        for (int i11 = i9; i11 < i10; i11++) {
            iArr2[i11 - i9] = iArr[i11];
        }
        return iArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(int i9) {
        if (48 > i9 || i9 > 57) {
            int i10 = 97;
            if (97 > i9 || i9 > 102) {
                i10 = 65;
                if (65 > i9 || i9 > 70) {
                    return -1;
                }
            }
            return (i9 - i10) + 10;
        }
        return i9 - 48;
    }
}
