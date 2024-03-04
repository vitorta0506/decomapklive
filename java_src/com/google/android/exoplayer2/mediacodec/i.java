package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.audio.b0;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.k1;
import java.nio.ByteBuffer;
import kotlin.UByte;
/* loaded from: classes.dex */
final class i {

    /* renamed from: a  reason: collision with root package name */
    private long f6279a;

    /* renamed from: b  reason: collision with root package name */
    private long f6280b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6281c;

    private long a(long j10) {
        return this.f6279a + Math.max(0L, ((this.f6280b - 529) * 1000000) / j10);
    }

    public long b(k1 k1Var) {
        return a(k1Var.f6125z);
    }

    public void c() {
        this.f6279a = 0L;
        this.f6280b = 0L;
        this.f6281c = false;
    }

    public long d(k1 k1Var, DecoderInputBuffer decoderInputBuffer) {
        if (this.f6280b == 0) {
            this.f6279a = decoderInputBuffer.f5710e;
        }
        if (this.f6281c) {
            return decoderInputBuffer.f5710e;
        }
        ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(decoderInputBuffer.f5708c);
        int i9 = 0;
        for (int i10 = 0; i10 < 4; i10++) {
            i9 = (i9 << 8) | (byteBuffer.get(i10) & UByte.MAX_VALUE);
        }
        int m10 = b0.m(i9);
        if (m10 == -1) {
            this.f6281c = true;
            this.f6280b = 0L;
            this.f6279a = decoderInputBuffer.f5710e;
            com.google.android.exoplayer2.util.r.i("C2Mp3TimestampTracker", "MPEG audio header is invalid.");
            return decoderInputBuffer.f5710e;
        }
        long a10 = a(k1Var.f6125z);
        this.f6280b += m10;
        return a10;
    }
}
