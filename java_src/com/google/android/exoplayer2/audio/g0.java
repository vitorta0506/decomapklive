package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.l0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* loaded from: classes.dex */
public final class g0 implements AudioProcessor {

    /* renamed from: b  reason: collision with root package name */
    private int f5542b;

    /* renamed from: c  reason: collision with root package name */
    private float f5543c = 1.0f;

    /* renamed from: d  reason: collision with root package name */
    private float f5544d = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    private AudioProcessor.a f5545e;

    /* renamed from: f  reason: collision with root package name */
    private AudioProcessor.a f5546f;

    /* renamed from: g  reason: collision with root package name */
    private AudioProcessor.a f5547g;

    /* renamed from: h  reason: collision with root package name */
    private AudioProcessor.a f5548h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f5549i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private f0 f5550j;

    /* renamed from: k  reason: collision with root package name */
    private ByteBuffer f5551k;

    /* renamed from: l  reason: collision with root package name */
    private ShortBuffer f5552l;

    /* renamed from: m  reason: collision with root package name */
    private ByteBuffer f5553m;

    /* renamed from: n  reason: collision with root package name */
    private long f5554n;

    /* renamed from: o  reason: collision with root package name */
    private long f5555o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f5556p;

    public g0() {
        AudioProcessor.a aVar = AudioProcessor.a.f5369e;
        this.f5545e = aVar;
        this.f5546f = aVar;
        this.f5547g = aVar;
        this.f5548h = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f5368a;
        this.f5551k = byteBuffer;
        this.f5552l = byteBuffer.asShortBuffer();
        this.f5553m = byteBuffer;
        this.f5542b = -1;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public ByteBuffer a() {
        int k10;
        f0 f0Var = this.f5550j;
        if (f0Var != null && (k10 = f0Var.k()) > 0) {
            if (this.f5551k.capacity() < k10) {
                ByteBuffer order = ByteBuffer.allocateDirect(k10).order(ByteOrder.nativeOrder());
                this.f5551k = order;
                this.f5552l = order.asShortBuffer();
            } else {
                this.f5551k.clear();
                this.f5552l.clear();
            }
            f0Var.j(this.f5552l);
            this.f5555o += k10;
            this.f5551k.limit(k10);
            this.f5553m = this.f5551k;
        }
        ByteBuffer byteBuffer = this.f5553m;
        this.f5553m = AudioProcessor.f5368a;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void b(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f5554n += remaining;
            ((f0) com.google.android.exoplayer2.util.a.e(this.f5550j)).t(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean c() {
        f0 f0Var;
        return this.f5556p && ((f0Var = this.f5550j) == null || f0Var.k() == 0);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public AudioProcessor.a d(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f5372c == 2) {
            int i9 = this.f5542b;
            if (i9 == -1) {
                i9 = aVar.f5370a;
            }
            this.f5545e = aVar;
            AudioProcessor.a aVar2 = new AudioProcessor.a(i9, aVar.f5371b, 2);
            this.f5546f = aVar2;
            this.f5549i = true;
            return aVar2;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void e() {
        f0 f0Var = this.f5550j;
        if (f0Var != null) {
            f0Var.s();
        }
        this.f5556p = true;
    }

    public long f(long j10) {
        if (this.f5555o >= 1024) {
            long l10 = this.f5554n - ((f0) com.google.android.exoplayer2.util.a.e(this.f5550j)).l();
            int i9 = this.f5548h.f5370a;
            int i10 = this.f5547g.f5370a;
            if (i9 == i10) {
                return l0.E0(j10, l10, this.f5555o);
            }
            return l0.E0(j10, l10 * i9, this.f5555o * i10);
        }
        return (long) (this.f5543c * j10);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void flush() {
        if (isActive()) {
            AudioProcessor.a aVar = this.f5545e;
            this.f5547g = aVar;
            AudioProcessor.a aVar2 = this.f5546f;
            this.f5548h = aVar2;
            if (this.f5549i) {
                this.f5550j = new f0(aVar.f5370a, aVar.f5371b, this.f5543c, this.f5544d, aVar2.f5370a);
            } else {
                f0 f0Var = this.f5550j;
                if (f0Var != null) {
                    f0Var.i();
                }
            }
        }
        this.f5553m = AudioProcessor.f5368a;
        this.f5554n = 0L;
        this.f5555o = 0L;
        this.f5556p = false;
    }

    public void g(float f10) {
        if (this.f5544d != f10) {
            this.f5544d = f10;
            this.f5549i = true;
        }
    }

    public void h(float f10) {
        if (this.f5543c != f10) {
            this.f5543c = f10;
            this.f5549i = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isActive() {
        return this.f5546f.f5370a != -1 && (Math.abs(this.f5543c - 1.0f) >= 1.0E-4f || Math.abs(this.f5544d - 1.0f) >= 1.0E-4f || this.f5546f.f5370a != this.f5545e.f5370a);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void reset() {
        this.f5543c = 1.0f;
        this.f5544d = 1.0f;
        AudioProcessor.a aVar = AudioProcessor.a.f5369e;
        this.f5545e = aVar;
        this.f5546f = aVar;
        this.f5547g = aVar;
        this.f5548h = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f5368a;
        this.f5551k = byteBuffer;
        this.f5552l = byteBuffer.asShortBuffer();
        this.f5553m = byteBuffer;
        this.f5542b = -1;
        this.f5549i = false;
        this.f5550j = null;
        this.f5554n = 0L;
        this.f5555o = 0L;
        this.f5556p = false;
    }
}
