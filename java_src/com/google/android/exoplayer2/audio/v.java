package com.google.android.exoplayer2.audio;

import androidx.annotation.CallSuper;
import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
public abstract class v implements AudioProcessor {

    /* renamed from: b  reason: collision with root package name */
    protected AudioProcessor.a f5630b;

    /* renamed from: c  reason: collision with root package name */
    protected AudioProcessor.a f5631c;

    /* renamed from: d  reason: collision with root package name */
    private AudioProcessor.a f5632d;

    /* renamed from: e  reason: collision with root package name */
    private AudioProcessor.a f5633e;

    /* renamed from: f  reason: collision with root package name */
    private ByteBuffer f5634f;

    /* renamed from: g  reason: collision with root package name */
    private ByteBuffer f5635g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f5636h;

    public v() {
        ByteBuffer byteBuffer = AudioProcessor.f5368a;
        this.f5634f = byteBuffer;
        this.f5635g = byteBuffer;
        AudioProcessor.a aVar = AudioProcessor.a.f5369e;
        this.f5632d = aVar;
        this.f5633e = aVar;
        this.f5630b = aVar;
        this.f5631c = aVar;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    @CallSuper
    public ByteBuffer a() {
        ByteBuffer byteBuffer = this.f5635g;
        this.f5635g = AudioProcessor.f5368a;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    @CallSuper
    public boolean c() {
        return this.f5636h && this.f5635g == AudioProcessor.f5368a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final AudioProcessor.a d(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        this.f5632d = aVar;
        this.f5633e = g(aVar);
        return isActive() ? this.f5633e : AudioProcessor.a.f5369e;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void e() {
        this.f5636h = true;
        i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean f() {
        return this.f5635g.hasRemaining();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void flush() {
        this.f5635g = AudioProcessor.f5368a;
        this.f5636h = false;
        this.f5630b = this.f5632d;
        this.f5631c = this.f5633e;
        h();
    }

    protected abstract AudioProcessor.a g(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException;

    protected void h() {
    }

    protected void i() {
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isActive() {
        return this.f5633e != AudioProcessor.a.f5369e;
    }

    protected void j() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ByteBuffer k(int i9) {
        if (this.f5634f.capacity() < i9) {
            this.f5634f = ByteBuffer.allocateDirect(i9).order(ByteOrder.nativeOrder());
        } else {
            this.f5634f.clear();
        }
        ByteBuffer byteBuffer = this.f5634f;
        this.f5635g = byteBuffer;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void reset() {
        flush();
        this.f5634f = AudioProcessor.f5368a;
        AudioProcessor.a aVar = AudioProcessor.a.f5369e;
        this.f5632d = aVar;
        this.f5633e = aVar;
        this.f5630b = aVar;
        this.f5631c = aVar;
        j();
    }
}
