package org.bouncycastle.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import kotlin.UByte;
import org.light.utils.IOUtils;
/* loaded from: classes7.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static String f56279a;

    /* loaded from: classes7.dex */
    static class a implements PrivilegedAction<String> {
        a() {
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public String run() {
            return System.getProperty("line.separator");
        }
    }

    static {
        try {
            try {
                f56279a = (String) AccessController.doPrivileged(new a());
            } catch (Exception unused) {
                f56279a = String.format("%n", new Object[0]);
            }
        } catch (Exception unused2) {
            f56279a = IOUtils.LINE_SEPARATOR_UNIX;
        }
    }

    public static char[] a(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i9 = 0; i9 != length; i9++) {
            cArr[i9] = (char) (bArr[i9] & UByte.MAX_VALUE);
        }
        return cArr;
    }

    public static String b(byte[] bArr) {
        return new String(a(bArr));
    }

    public static String c(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        int b10 = org.bouncycastle.util.encoders.f.b(bArr, cArr);
        if (b10 >= 0) {
            return new String(cArr, 0, b10);
        }
        throw new IllegalArgumentException("Invalid UTF-8 input");
    }

    public static String d() {
        return f56279a;
    }

    public static byte[] e(String str) {
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i9 = 0; i9 != length; i9++) {
            bArr[i9] = (byte) str.charAt(i9);
        }
        return bArr;
    }

    public static String f(String str) {
        char[] charArray = str.toCharArray();
        boolean z10 = false;
        for (int i9 = 0; i9 != charArray.length; i9++) {
            char c10 = charArray[i9];
            if ('A' <= c10 && 'Z' >= c10) {
                charArray[i9] = (char) ((c10 - 'A') + 97);
                z10 = true;
            }
        }
        return z10 ? new String(charArray) : str;
    }

    public static void g(char[] cArr, OutputStream outputStream) throws IOException {
        int i9;
        char c10;
        int i10 = 0;
        while (i10 < cArr.length) {
            char c11 = cArr[i10];
            char c12 = c11;
            if (c11 >= 128) {
                if (c11 < 2048) {
                    i9 = (c11 >> 6) | 192;
                } else if (c11 < 55296 || c11 > 57343) {
                    outputStream.write((c11 >> '\f') | 224);
                    i9 = ((c11 >> 6) & 63) | 128;
                } else {
                    i10++;
                    if (i10 >= cArr.length) {
                        throw new IllegalStateException("invalid UTF-16 codepoint");
                    }
                    char c13 = cArr[i10];
                    if (c11 > 56319) {
                        throw new IllegalStateException("invalid UTF-16 codepoint");
                    }
                    int i11 = (((c11 & 1023) << 10) | (c13 & 1023)) + 65536;
                    outputStream.write((i11 >> 18) | 240);
                    outputStream.write(((i11 >> 12) & 63) | 128);
                    outputStream.write(((i11 >> 6) & 63) | 128);
                    c10 = i11;
                    c12 = (c10 & 63) | 128;
                }
                outputStream.write(i9);
                c10 = c11;
                c12 = (c10 & 63) | 128;
            }
            outputStream.write(c12);
            i10++;
        }
    }

    public static byte[] h(char[] cArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            g(cArr, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            throw new IllegalStateException("cannot encode string to byte array!");
        }
    }

    public static String i(String str) {
        char[] charArray = str.toCharArray();
        boolean z10 = false;
        for (int i9 = 0; i9 != charArray.length; i9++) {
            char c10 = charArray[i9];
            if ('a' <= c10 && 'z' >= c10) {
                charArray[i9] = (char) ((c10 - 'a') + 65);
                z10 = true;
            }
        }
        return z10 ? new String(charArray) : str;
    }
}
