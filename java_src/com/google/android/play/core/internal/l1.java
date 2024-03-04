package com.google.android.play.core.internal;

import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
/* loaded from: classes2.dex */
final class l1 implements w0 {

    /* renamed from: a  reason: collision with root package name */
    private final FileChannel f10581a;

    /* renamed from: b  reason: collision with root package name */
    private final long f10582b;

    /* renamed from: c  reason: collision with root package name */
    private final long f10583c;

    public l1(FileChannel fileChannel, long j10, long j11) {
        this.f10581a = fileChannel;
        this.f10582b = j10;
        this.f10583c = j11;
    }

    @Override // com.google.android.play.core.internal.w0
    public final void a(MessageDigest[] messageDigestArr, long j10, int i9) throws IOException {
        MappedByteBuffer map = this.f10581a.map(FileChannel.MapMode.READ_ONLY, this.f10582b + j10, i9);
        map.load();
        for (MessageDigest messageDigest : messageDigestArr) {
            map.position(0);
            messageDigest.update(map);
        }
    }

    @Override // com.google.android.play.core.internal.w0
    public final long zza() {
        return this.f10583c;
    }
}
