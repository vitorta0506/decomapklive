package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.l0;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
final class h0 extends v {

    /* renamed from: i  reason: collision with root package name */
    private int f5561i;

    /* renamed from: j  reason: collision with root package name */
    private int f5562j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f5563k;

    /* renamed from: l  reason: collision with root package name */
    private int f5564l;

    /* renamed from: m  reason: collision with root package name */
    private byte[] f5565m = l0.f6990f;

    /* renamed from: n  reason: collision with root package name */
    private int f5566n;

    /* renamed from: o  reason: collision with root package name */
    private long f5567o;

    @Override // com.google.android.exoplayer2.audio.v, com.google.android.exoplayer2.audio.AudioProcessor
    public ByteBuffer a() {
        int i9;
        if (super.c() && (i9 = this.f5566n) > 0) {
            k(i9).put(this.f5565m, 0, this.f5566n).flip();
            this.f5566n = 0;
        }
        return super.a();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void b(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i9 = limit - position;
        if (i9 == 0) {
            return;
        }
        int min = Math.min(i9, this.f5564l);
        this.f5567o += min / this.f5630b.f5373d;
        this.f5564l -= min;
        byteBuffer.position(position + min);
        if (this.f5564l > 0) {
            return;
        }
        int i10 = i9 - min;
        int length = (this.f5566n + i10) - this.f5565m.length;
        ByteBuffer k10 = k(length);
        int p10 = l0.p(length, 0, this.f5566n);
        k10.put(this.f5565m, 0, p10);
        int p11 = l0.p(length - p10, 0, i10);
        byteBuffer.limit(byteBuffer.position() + p11);
        k10.put(byteBuffer);
        byteBuffer.limit(limit);
        int i11 = i10 - p11;
        int i12 = this.f5566n - p10;
        this.f5566n = i12;
        byte[] bArr = this.f5565m;
        System.arraycopy(bArr, p10, bArr, 0, i12);
        byteBuffer.get(this.f5565m, this.f5566n, i11);
        this.f5566n += i11;
        k10.flip();
    }

    @Override // com.google.android.exoplayer2.audio.v, com.google.android.exoplayer2.audio.AudioProcessor
    public boolean c() {
        return super.c() && this.f5566n == 0;
    }

    @Override // com.google.android.exoplayer2.audio.v
    public AudioProcessor.a g(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f5372c == 2) {
            this.f5563k = true;
            return (this.f5561i == 0 && this.f5562j == 0) ? AudioProcessor.a.f5369e : aVar;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.v
    protected void h() {
        if (this.f5563k) {
            this.f5563k = false;
            int i9 = this.f5562j;
            int i10 = this.f5630b.f5373d;
            this.f5565m = new byte[i9 * i10];
            this.f5564l = this.f5561i * i10;
        }
        this.f5566n = 0;
    }

    @Override // com.google.android.exoplayer2.audio.v
    protected void i() {
        int i9;
        if (this.f5563k) {
            if (this.f5566n > 0) {
                this.f5567o += i9 / this.f5630b.f5373d;
            }
            this.f5566n = 0;
        }
    }

    @Override // com.google.android.exoplayer2.audio.v
    protected void j() {
        this.f5565m = l0.f6990f;
    }

    public long l() {
        return this.f5567o;
    }

    public void m() {
        this.f5567o = 0L;
    }

    public void n(int i9, int i10) {
        this.f5561i = i9;
        this.f5562j = i10;
    }
}
