package com.meizu.cloud.pushsdk.c.g;

import java.nio.charset.Charset;
/* loaded from: classes4.dex */
final class o {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f28509a = Charset.forName("UTF-8");

    public static void a(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException(String.format("size=%s offset=%s byteCount=%s", Long.valueOf(j10), Long.valueOf(j11), Long.valueOf(j12)));
        }
    }

    public static void a(Throwable th2) {
        b(th2);
    }

    public static boolean a(byte[] bArr, int i9, byte[] bArr2, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            if (bArr[i12 + i9] != bArr2[i12 + i10]) {
                return false;
            }
        }
        return true;
    }

    private static <T extends Throwable> void b(Throwable th2) throws Throwable {
        throw th2;
    }
}
