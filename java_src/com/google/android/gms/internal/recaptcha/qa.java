package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
/* loaded from: classes2.dex */
public abstract class qa {

    /* renamed from: a  reason: collision with root package name */
    private static final qa f9003a = new oa("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');

    /* renamed from: b  reason: collision with root package name */
    private static final qa f9004b = new oa("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');

    /* renamed from: c  reason: collision with root package name */
    private static final qa f9005c = new pa("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');

    /* renamed from: d  reason: collision with root package name */
    private static final qa f9006d = new pa("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');

    /* renamed from: e  reason: collision with root package name */
    private static final qa f9007e = new na("base16()", "0123456789ABCDEF");

    public static qa d() {
        return f9007e;
    }

    abstract void a(Appendable appendable, byte[] bArr, int i9, int i10) throws IOException;

    abstract int b(int i9);

    public abstract qa c();

    public final String e(byte[] bArr, int i9, int i10) {
        z7.h(0, i10, bArr.length);
        StringBuilder sb2 = new StringBuilder(b(i10));
        try {
            a(sb2, bArr, 0, i10);
            return sb2.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }
}
