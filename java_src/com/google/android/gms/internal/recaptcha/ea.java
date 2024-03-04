package com.google.android.gms.internal.recaptcha;

import java.nio.ByteOrder;
import kotlin.UByte;
/* loaded from: classes2.dex */
final class ea {

    /* renamed from: a  reason: collision with root package name */
    private static final ba f8642a;

    static {
        ba baVar = aa.INSTANCE;
        try {
            if ("amd64".equals(System.getProperty("os.arch"))) {
                if (ByteOrder.nativeOrder().equals(ByteOrder.LITTLE_ENDIAN)) {
                    baVar = da.UNSAFE_LITTLE_ENDIAN;
                } else {
                    baVar = da.UNSAFE_BIG_ENDIAN;
                }
            }
        } catch (Throwable unused) {
        }
        f8642a = baVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i9) {
        return ((bArr[i9 + 3] & UByte.MAX_VALUE) << 24) | (bArr[i9] & UByte.MAX_VALUE) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(byte[] bArr, int i9) {
        return f8642a.a(bArr, i9);
    }
}
