package org.bouncycastle.util.encoders;

import java.io.ByteArrayOutputStream;
import org.bouncycastle.util.i;
/* loaded from: classes7.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final e f56271a = new e();

    public static byte[] a(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f56271a.b(str, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new DecoderException("exception decoding Hex string: " + e10.getMessage(), e10);
        }
    }

    public static byte[] b(String str) {
        try {
            return f56271a.c(str, 0, str.length());
        } catch (Exception e10) {
            throw new DecoderException("exception decoding Hex string: " + e10.getMessage(), e10);
        }
    }

    public static byte[] c(String str, int i9, int i10) {
        try {
            return f56271a.c(str, i9, i10);
        } catch (Exception e10) {
            throw new DecoderException("exception decoding Hex string: " + e10.getMessage(), e10);
        }
    }

    public static byte[] d(byte[] bArr) {
        return e(bArr, 0, bArr.length);
    }

    public static byte[] e(byte[] bArr, int i9, int i10) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f56271a.a(bArr, i9, i10, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new EncoderException("exception encoding Hex string: " + e10.getMessage(), e10);
        }
    }

    public static String f(byte[] bArr) {
        return g(bArr, 0, bArr.length);
    }

    public static String g(byte[] bArr, int i9, int i10) {
        return i.b(e(bArr, i9, i10));
    }
}
