package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.l0;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class e0 extends v {

    /* renamed from: i  reason: collision with root package name */
    private final long f5502i;

    /* renamed from: j  reason: collision with root package name */
    private final long f5503j;

    /* renamed from: k  reason: collision with root package name */
    private final short f5504k;

    /* renamed from: l  reason: collision with root package name */
    private int f5505l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f5506m;

    /* renamed from: n  reason: collision with root package name */
    private byte[] f5507n;

    /* renamed from: o  reason: collision with root package name */
    private byte[] f5508o;

    /* renamed from: p  reason: collision with root package name */
    private int f5509p;

    /* renamed from: q  reason: collision with root package name */
    private int f5510q;

    /* renamed from: r  reason: collision with root package name */
    private int f5511r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f5512s;

    /* renamed from: t  reason: collision with root package name */
    private long f5513t;

    public e0() {
        this(150000L, 20000L, (short) 1024);
    }

    private int l(long j10) {
        return (int) ((j10 * this.f5630b.f5370a) / 1000000);
    }

    private int m(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        while (true) {
            limit -= 2;
            if (limit >= byteBuffer.position()) {
                if (Math.abs((int) byteBuffer.getShort(limit)) > this.f5504k) {
                    int i9 = this.f5505l;
                    return ((limit / i9) * i9) + i9;
                }
            } else {
                return byteBuffer.position();
            }
        }
    }

    private int n(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position(); position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.getShort(position)) > this.f5504k) {
                int i9 = this.f5505l;
                return i9 * (position / i9);
            }
        }
        return byteBuffer.limit();
    }

    private void p(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        k(remaining).put(byteBuffer).flip();
        if (remaining > 0) {
            this.f5512s = true;
        }
    }

    private void q(byte[] bArr, int i9) {
        k(i9).put(bArr, 0, i9).flip();
        if (i9 > 0) {
            this.f5512s = true;
        }
    }

    private void r(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int n9 = n(byteBuffer);
        int position = n9 - byteBuffer.position();
        byte[] bArr = this.f5507n;
        int length = bArr.length;
        int i9 = this.f5510q;
        int i10 = length - i9;
        if (n9 < limit && position < i10) {
            q(bArr, i9);
            this.f5510q = 0;
            this.f5509p = 0;
            return;
        }
        int min = Math.min(position, i10);
        byteBuffer.limit(byteBuffer.position() + min);
        byteBuffer.get(this.f5507n, this.f5510q, min);
        int i11 = this.f5510q + min;
        this.f5510q = i11;
        byte[] bArr2 = this.f5507n;
        if (i11 == bArr2.length) {
            if (this.f5512s) {
                q(bArr2, this.f5511r);
                this.f5513t += (this.f5510q - (this.f5511r * 2)) / this.f5505l;
            } else {
                this.f5513t += (i11 - this.f5511r) / this.f5505l;
            }
            v(byteBuffer, this.f5507n, this.f5510q);
            this.f5510q = 0;
            this.f5509p = 2;
        }
        byteBuffer.limit(limit);
    }

    private void s(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.f5507n.length));
        int m10 = m(byteBuffer);
        if (m10 == byteBuffer.position()) {
            this.f5509p = 1;
        } else {
            byteBuffer.limit(m10);
            p(byteBuffer);
        }
        byteBuffer.limit(limit);
    }

    private void t(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit();
        int n9 = n(byteBuffer);
        byteBuffer.limit(n9);
        this.f5513t += byteBuffer.remaining() / this.f5505l;
        v(byteBuffer, this.f5508o, this.f5511r);
        if (n9 < limit) {
            q(this.f5508o, this.f5511r);
            this.f5509p = 0;
            byteBuffer.limit(limit);
        }
    }

    private void v(ByteBuffer byteBuffer, byte[] bArr, int i9) {
        int min = Math.min(byteBuffer.remaining(), this.f5511r);
        int i10 = this.f5511r - min;
        System.arraycopy(bArr, i9 - i10, this.f5508o, 0, i10);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.f5508o, i10, min);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void b(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !f()) {
            int i9 = this.f5509p;
            if (i9 == 0) {
                s(byteBuffer);
            } else if (i9 == 1) {
                r(byteBuffer);
            } else if (i9 == 2) {
                t(byteBuffer);
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // com.google.android.exoplayer2.audio.v
    public AudioProcessor.a g(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f5372c == 2) {
            return this.f5506m ? aVar : AudioProcessor.a.f5369e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.v
    protected void h() {
        if (this.f5506m) {
            this.f5505l = this.f5630b.f5373d;
            int l10 = l(this.f5502i) * this.f5505l;
            if (this.f5507n.length != l10) {
                this.f5507n = new byte[l10];
            }
            int l11 = l(this.f5503j) * this.f5505l;
            this.f5511r = l11;
            if (this.f5508o.length != l11) {
                this.f5508o = new byte[l11];
            }
        }
        this.f5509p = 0;
        this.f5513t = 0L;
        this.f5510q = 0;
        this.f5512s = false;
    }

    @Override // com.google.android.exoplayer2.audio.v
    protected void i() {
        int i9 = this.f5510q;
        if (i9 > 0) {
            q(this.f5507n, i9);
        }
        if (this.f5512s) {
            return;
        }
        this.f5513t += this.f5511r / this.f5505l;
    }

    @Override // com.google.android.exoplayer2.audio.v, com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isActive() {
        return this.f5506m;
    }

    @Override // com.google.android.exoplayer2.audio.v
    protected void j() {
        this.f5506m = false;
        this.f5511r = 0;
        byte[] bArr = l0.f6990f;
        this.f5507n = bArr;
        this.f5508o = bArr;
    }

    public long o() {
        return this.f5513t;
    }

    public void u(boolean z10) {
        this.f5506m = z10;
    }

    public e0(long j10, long j11, short s10) {
        com.google.android.exoplayer2.util.a.a(j11 <= j10);
        this.f5502i = j10;
        this.f5503j = j11;
        this.f5504k = s10;
        byte[] bArr = l0.f6990f;
        this.f5507n = bArr;
        this.f5508o = bArr;
    }
}
