package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class e9 {

    /* renamed from: a  reason: collision with root package name */
    static final Charset f8049a = Charset.forName("US-ASCII");

    /* renamed from: b  reason: collision with root package name */
    static final Charset f8050b = Charset.forName("UTF-8");

    /* renamed from: c  reason: collision with root package name */
    static final Charset f8051c = Charset.forName("ISO-8859-1");

    /* renamed from: d  reason: collision with root package name */
    public static final byte[] f8052d;

    /* renamed from: e  reason: collision with root package name */
    public static final ByteBuffer f8053e;

    /* renamed from: f  reason: collision with root package name */
    public static final c8 f8054f;

    static {
        byte[] bArr = new byte[0];
        f8052d = bArr;
        f8053e = ByteBuffer.wrap(bArr);
        int i9 = c8.f7996a;
        a8 a8Var = new a8(bArr, 0, 0, false, null);
        try {
            a8Var.c(0);
            f8054f = a8Var;
        } catch (zzko e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static int a(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static int b(byte[] bArr) {
        int length = bArr.length;
        int d10 = d(length, bArr, 0, length);
        if (d10 == 0) {
            return 1;
        }
        return d10;
    }

    public static int c(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(int i9, byte[] bArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            i9 = (i9 * 31) + bArr[i12];
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object e(Object obj) {
        Objects.requireNonNull(obj);
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object f(Object obj, String str) {
        Objects.requireNonNull(obj, str);
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object g(Object obj, Object obj2) {
        return ((z9) obj).b().j1((z9) obj2).p0();
    }

    public static String h(byte[] bArr) {
        return new String(bArr, f8050b);
    }

    public static boolean i(byte[] bArr) {
        return rb.e(bArr);
    }
}
