package com.google.android.play.core.internal;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* loaded from: classes2.dex */
final class z implements w0 {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f10631a;

    public z(ByteBuffer byteBuffer) {
        this.f10631a = byteBuffer.slice();
    }

    @Override // com.google.android.play.core.internal.w0
    public final void a(MessageDigest[] messageDigestArr, long j10, int i9) throws IOException {
        ByteBuffer slice;
        synchronized (this.f10631a) {
            int i10 = (int) j10;
            this.f10631a.position(i10);
            this.f10631a.limit(i10 + i9);
            slice = this.f10631a.slice();
        }
        for (MessageDigest messageDigest : messageDigestArr) {
            slice.position(0);
            messageDigest.update(slice);
        }
    }

    @Override // com.google.android.play.core.internal.w0
    public final long zza() {
        return this.f10631a.capacity();
    }
}
