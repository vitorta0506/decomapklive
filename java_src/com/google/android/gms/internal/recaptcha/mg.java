package com.google.android.gms.internal.recaptcha;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class mg {

    /* renamed from: a  reason: collision with root package name */
    static final Charset f8878a = Charset.forName("UTF-8");

    /* renamed from: b  reason: collision with root package name */
    static final Charset f8879b = Charset.forName("ISO-8859-1");

    /* renamed from: c  reason: collision with root package name */
    public static final byte[] f8880c;

    /* renamed from: d  reason: collision with root package name */
    public static final ByteBuffer f8881d;

    /* renamed from: e  reason: collision with root package name */
    public static final bf f8882e;

    static {
        byte[] bArr = new byte[0];
        f8880c = bArr;
        f8881d = ByteBuffer.wrap(bArr);
        int i9 = bf.f8534e;
        f8882e = bf.g(bArr, 0, 0, false);
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
    public static <T> T e(T t10) {
        Objects.requireNonNull(t10);
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T f(T t10, String str) {
        Objects.requireNonNull(t10, str);
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object g(Object obj, Object obj2) {
        return ((gh) obj).f().C0((gh) obj2).F();
    }

    public static String h(byte[] bArr) {
        return new String(bArr, f8878a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean i(gh ghVar) {
        if (ghVar instanceof he) {
            he heVar = (he) ghVar;
            throw null;
        }
        return false;
    }

    public static boolean j(byte[] bArr) {
        return aj.e(bArr);
    }
}
