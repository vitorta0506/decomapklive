package com.xiaomi.push;

import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
public final class x0 extends r0 {
    public x0() {
        j("PING", null);
        i("0");
        g(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.xiaomi.push.r0
    public ByteBuffer e(ByteBuffer byteBuffer) {
        return n().length == 0 ? byteBuffer : super.e(byteBuffer);
    }

    @Override // com.xiaomi.push.r0
    public int s() {
        if (n().length == 0) {
            return 0;
        }
        return super.s();
    }
}
