package org.bouncycastle.util.encoders;

import java.io.ByteArrayOutputStream;
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final c f56267a = new b();

    public static byte[] a(byte[] bArr) {
        return b(bArr, 0, bArr.length);
    }

    public static byte[] b(byte[] bArr, int i9, int i10) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(((i10 + 2) / 3) * 4);
        try {
            f56267a.a(bArr, i9, i10, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new EncoderException("exception encoding base64 string: " + e10.getMessage(), e10);
        }
    }
}
