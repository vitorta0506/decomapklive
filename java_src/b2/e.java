package b2;

import com.google.android.exoplayer2.util.l0;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public int f1121a;

    /* renamed from: b  reason: collision with root package name */
    public int f1122b;

    /* renamed from: c  reason: collision with root package name */
    public int f1123c;

    /* renamed from: d  reason: collision with root package name */
    public int f1124d;

    /* renamed from: e  reason: collision with root package name */
    public int f1125e;

    /* renamed from: f  reason: collision with root package name */
    public int f1126f;

    /* renamed from: g  reason: collision with root package name */
    public int f1127g;

    /* renamed from: h  reason: collision with root package name */
    public int f1128h;

    /* renamed from: i  reason: collision with root package name */
    public int f1129i;

    /* renamed from: j  reason: collision with root package name */
    public int f1130j;

    /* renamed from: k  reason: collision with root package name */
    public long f1131k;

    /* renamed from: l  reason: collision with root package name */
    public int f1132l;

    private void b(long j10, int i9) {
        this.f1131k += j10;
        this.f1132l += i9;
    }

    public void a(long j10) {
        b(j10, 1);
    }

    public synchronized void c() {
    }

    public String toString() {
        return l0.z("DecoderCounters {\n decoderInits=%s,\n decoderReleases=%s\n queuedInputBuffers=%s\n skippedInputBuffers=%s\n renderedOutputBuffers=%s\n skippedOutputBuffers=%s\n droppedBuffers=%s\n droppedInputBuffers=%s\n maxConsecutiveDroppedBuffers=%s\n droppedToKeyframeEvents=%s\n totalVideoFrameProcessingOffsetUs=%s\n videoFrameProcessingOffsetCount=%s\n}", Integer.valueOf(this.f1121a), Integer.valueOf(this.f1122b), Integer.valueOf(this.f1123c), Integer.valueOf(this.f1124d), Integer.valueOf(this.f1125e), Integer.valueOf(this.f1126f), Integer.valueOf(this.f1127g), Integer.valueOf(this.f1128h), Integer.valueOf(this.f1129i), Integer.valueOf(this.f1130j), Long.valueOf(this.f1131k), Integer.valueOf(this.f1132l));
    }
}
