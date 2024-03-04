package com.google.android.exoplayer2.mediacodec;

import androidx.annotation.IntRange;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
final class h extends DecoderInputBuffer {

    /* renamed from: i  reason: collision with root package name */
    private long f6276i;

    /* renamed from: j  reason: collision with root package name */
    private int f6277j;

    /* renamed from: k  reason: collision with root package name */
    private int f6278k;

    public h() {
        super(2);
        this.f6278k = 32;
    }

    private boolean w(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        if (A()) {
            if (this.f6277j < this.f6278k && decoderInputBuffer.j() == j()) {
                ByteBuffer byteBuffer2 = decoderInputBuffer.f5708c;
                return byteBuffer2 == null || (byteBuffer = this.f5708c) == null || byteBuffer.position() + byteBuffer2.remaining() <= 3072000;
            }
            return false;
        }
        return true;
    }

    public boolean A() {
        return this.f6277j > 0;
    }

    public void B(@IntRange(from = 1) int i9) {
        com.google.android.exoplayer2.util.a.a(i9 > 0);
        this.f6278k = i9;
    }

    @Override // com.google.android.exoplayer2.decoder.DecoderInputBuffer, b2.a
    public void f() {
        super.f();
        this.f6277j = 0;
    }

    public boolean v(DecoderInputBuffer decoderInputBuffer) {
        com.google.android.exoplayer2.util.a.a(!decoderInputBuffer.s());
        com.google.android.exoplayer2.util.a.a(!decoderInputBuffer.i());
        com.google.android.exoplayer2.util.a.a(!decoderInputBuffer.k());
        if (w(decoderInputBuffer)) {
            int i9 = this.f6277j;
            this.f6277j = i9 + 1;
            if (i9 == 0) {
                this.f5710e = decoderInputBuffer.f5710e;
                if (decoderInputBuffer.m()) {
                    o(1);
                }
            }
            if (decoderInputBuffer.j()) {
                o(Integer.MIN_VALUE);
            }
            ByteBuffer byteBuffer = decoderInputBuffer.f5708c;
            if (byteBuffer != null) {
                q(byteBuffer.remaining());
                this.f5708c.put(byteBuffer);
            }
            this.f6276i = decoderInputBuffer.f5710e;
            return true;
        }
        return false;
    }

    public long x() {
        return this.f5710e;
    }

    public long y() {
        return this.f6276i;
    }

    public int z() {
        return this.f6277j;
    }
}
