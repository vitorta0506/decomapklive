package com.google.android.gms.internal.recaptcha;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes2.dex */
final class f1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzpy a(int i9) {
        ByteBuffer order = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN);
        order.putInt(i9).rewind();
        return zzpy.zzm(order);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(byte[] bArr) {
        return qa.d().c().e(bArr, 0, bArr.length);
    }
}
