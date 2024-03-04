package io.grpc.netty.shaded.io.netty.util.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.text.Typography;
import org.light.utils.IOUtils;
/* loaded from: classes5.dex */
public final class b0 {

    /* renamed from: a  reason: collision with root package name */
    public static final String f45033a = c0.c("line.separator", IOUtils.LINE_SEPARATOR_UNIX);

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f45034b = new String[256];

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f45035c = new String[256];

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f45036d;

    static {
        String str;
        int i9 = 0;
        while (true) {
            String[] strArr = f45034b;
            if (i9 < strArr.length) {
                String hexString = Integer.toHexString(i9);
                if (i9 > 15) {
                    str = hexString;
                } else {
                    str = '0' + hexString;
                }
                strArr[i9] = str;
                f45035c[i9] = hexString;
                i9++;
            } else {
                byte[] bArr = new byte[65536];
                f45036d = bArr;
                Arrays.fill(bArr, (byte) -1);
                bArr[48] = 0;
                bArr[49] = 1;
                bArr[50] = 2;
                bArr[51] = 3;
                bArr[52] = 4;
                bArr[53] = 5;
                bArr[54] = 6;
                bArr[55] = 7;
                bArr[56] = 8;
                bArr[57] = 9;
                bArr[65] = 10;
                bArr[66] = 11;
                bArr[67] = 12;
                bArr[68] = 13;
                bArr[69] = 14;
                bArr[70] = 15;
                bArr[97] = 10;
                bArr[98] = 11;
                bArr[99] = 12;
                bArr[100] = 13;
                bArr[101] = 14;
                bArr[102] = 15;
                return;
            }
        }
    }

    public static String a(int i9) {
        return f45034b[i9 & 255];
    }

    public static byte b(CharSequence charSequence, int i9) {
        int c10 = c(charSequence.charAt(i9));
        int c11 = c(charSequence.charAt(i9 + 1));
        if (c10 == -1 || c11 == -1) {
            throw new IllegalArgumentException(String.format("invalid hex byte '%s' at index %d of '%s'", charSequence.subSequence(i9, i9 + 2), Integer.valueOf(i9), charSequence));
        }
        return (byte) ((c10 << 4) + c11);
    }

    public static int c(char c10) {
        return f45036d[c10];
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.CharSequence d(java.lang.CharSequence r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.util.internal.b0.d(java.lang.CharSequence, boolean):java.lang.CharSequence");
    }

    private static int e(CharSequence charSequence, int i9) {
        int i10 = 0;
        while (i10 < i9 && i(charSequence.charAt(i10))) {
            i10++;
        }
        return i10;
    }

    private static int f(CharSequence charSequence, int i9, int i10) {
        int i11 = i10 - 1;
        while (i11 > i9 && i(charSequence.charAt(i11))) {
            i11--;
        }
        return i11;
    }

    private static boolean g(char c10) {
        return c10 == '\"';
    }

    public static boolean h(String str) {
        return str == null || str.isEmpty();
    }

    private static boolean i(char c10) {
        return c10 == ' ' || c10 == '\t';
    }

    public static boolean j(char c10) {
        return c10 >= 55296 && c10 <= 57343;
    }

    private static IllegalArgumentException k(CharSequence charSequence, int i9) {
        return new IllegalArgumentException("invalid escaped CSV field: " + ((Object) charSequence) + " index: " + i9);
    }

    public static String l(Class<?> cls) {
        String name = ((Class) s.h(cls, "clazz")).getName();
        int lastIndexOf = name.lastIndexOf(46);
        return lastIndexOf > -1 ? name.substring(lastIndexOf + 1) : name;
    }

    public static String m(Object obj) {
        return obj == null ? "null_object" : l(obj.getClass());
    }

    public static CharSequence n(CharSequence charSequence) {
        int length = charSequence.length();
        if (length == 0) {
            return charSequence;
        }
        int e10 = e(charSequence, length);
        int f10 = f(charSequence, e10, length);
        return (e10 == 0 && f10 == length + (-1)) ? charSequence : charSequence.subSequence(e10, f10 + 1);
    }

    public static List<CharSequence> o(CharSequence charSequence) {
        ArrayList arrayList = new ArrayList(2);
        StringBuilder q10 = k.e().q();
        int length = charSequence.length() - 1;
        int i9 = 0;
        boolean z10 = false;
        while (i9 <= length) {
            char charAt = charSequence.charAt(i9);
            if (!z10) {
                if (charAt != '\n' && charAt != '\r') {
                    if (charAt != '\"') {
                        if (charAt != ',') {
                            q10.append(charAt);
                        } else {
                            arrayList.add(q10.toString());
                            q10.setLength(0);
                        }
                    } else if (q10.length() == 0) {
                        z10 = true;
                    }
                }
                throw k(charSequence, i9);
            } else if (charAt != '\"') {
                q10.append(charAt);
            } else if (i9 == length) {
                arrayList.add(q10.toString());
                return arrayList;
            } else {
                i9++;
                char charAt2 = charSequence.charAt(i9);
                if (charAt2 == '\"') {
                    q10.append(Typography.quote);
                } else if (charAt2 == ',') {
                    arrayList.add(q10.toString());
                    q10.setLength(0);
                    z10 = false;
                } else {
                    throw k(charSequence, i9 - 1);
                }
            }
            i9++;
        }
        if (!z10) {
            arrayList.add(q10.toString());
            return arrayList;
        }
        throw k(charSequence, length);
    }
}
