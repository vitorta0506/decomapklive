package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.l0;
import java.util.ArrayDeque;
/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(23)
/* loaded from: classes.dex */
public final class g extends MediaCodec.Callback {

    /* renamed from: b  reason: collision with root package name */
    private final HandlerThread f6264b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f6265c;
    @Nullable
    @GuardedBy("lock")

    /* renamed from: h  reason: collision with root package name */
    private MediaFormat f6270h;
    @Nullable
    @GuardedBy("lock")

    /* renamed from: i  reason: collision with root package name */
    private MediaFormat f6271i;
    @Nullable
    @GuardedBy("lock")

    /* renamed from: j  reason: collision with root package name */
    private MediaCodec.CodecException f6272j;
    @GuardedBy("lock")

    /* renamed from: k  reason: collision with root package name */
    private long f6273k;
    @GuardedBy("lock")

    /* renamed from: l  reason: collision with root package name */
    private boolean f6274l;
    @Nullable
    @GuardedBy("lock")

    /* renamed from: m  reason: collision with root package name */
    private IllegalStateException f6275m;

    /* renamed from: a  reason: collision with root package name */
    private final Object f6263a = new Object();
    @GuardedBy("lock")

    /* renamed from: d  reason: collision with root package name */
    private final k f6266d = new k();
    @GuardedBy("lock")

    /* renamed from: e  reason: collision with root package name */
    private final k f6267e = new k();
    @GuardedBy("lock")

    /* renamed from: f  reason: collision with root package name */
    private final ArrayDeque<MediaCodec.BufferInfo> f6268f = new ArrayDeque<>();
    @GuardedBy("lock")

    /* renamed from: g  reason: collision with root package name */
    private final ArrayDeque<MediaFormat> f6269g = new ArrayDeque<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(HandlerThread handlerThread) {
        this.f6264b = handlerThread;
    }

    @GuardedBy("lock")
    private void b(MediaFormat mediaFormat) {
        this.f6267e.a(-2);
        this.f6269g.add(mediaFormat);
    }

    @GuardedBy("lock")
    private void f() {
        if (!this.f6269g.isEmpty()) {
            this.f6271i = this.f6269g.getLast();
        }
        this.f6266d.b();
        this.f6267e.b();
        this.f6268f.clear();
        this.f6269g.clear();
        this.f6272j = null;
    }

    @GuardedBy("lock")
    private boolean i() {
        return this.f6273k > 0 || this.f6274l;
    }

    @GuardedBy("lock")
    private void j() {
        k();
        l();
    }

    @GuardedBy("lock")
    private void k() {
        IllegalStateException illegalStateException = this.f6275m;
        if (illegalStateException == null) {
            return;
        }
        this.f6275m = null;
        throw illegalStateException;
    }

    @GuardedBy("lock")
    private void l() {
        MediaCodec.CodecException codecException = this.f6272j;
        if (codecException == null) {
            return;
        }
        this.f6272j = null;
        throw codecException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        synchronized (this.f6263a) {
            if (this.f6274l) {
                return;
            }
            long j10 = this.f6273k - 1;
            this.f6273k = j10;
            if (j10 > 0) {
                return;
            }
            if (j10 < 0) {
                n(new IllegalStateException());
            } else {
                f();
            }
        }
    }

    private void n(IllegalStateException illegalStateException) {
        synchronized (this.f6263a) {
            this.f6275m = illegalStateException;
        }
    }

    public int c() {
        synchronized (this.f6263a) {
            int i9 = -1;
            if (i()) {
                return -1;
            }
            j();
            if (!this.f6266d.d()) {
                i9 = this.f6266d.e();
            }
            return i9;
        }
    }

    public int d(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f6263a) {
            if (i()) {
                return -1;
            }
            j();
            if (this.f6267e.d()) {
                return -1;
            }
            int e10 = this.f6267e.e();
            if (e10 >= 0) {
                com.google.android.exoplayer2.util.a.h(this.f6270h);
                MediaCodec.BufferInfo remove = this.f6268f.remove();
                bufferInfo.set(remove.offset, remove.size, remove.presentationTimeUs, remove.flags);
            } else if (e10 == -2) {
                this.f6270h = this.f6269g.remove();
            }
            return e10;
        }
    }

    public void e() {
        synchronized (this.f6263a) {
            this.f6273k++;
            ((Handler) l0.j(this.f6265c)).post(new Runnable() { // from class: com.google.android.exoplayer2.mediacodec.f
                @Override // java.lang.Runnable
                public final void run() {
                    g.this.m();
                }
            });
        }
    }

    public MediaFormat g() {
        MediaFormat mediaFormat;
        synchronized (this.f6263a) {
            mediaFormat = this.f6270h;
            if (mediaFormat == null) {
                throw new IllegalStateException();
            }
        }
        return mediaFormat;
    }

    public void h(MediaCodec mediaCodec) {
        com.google.android.exoplayer2.util.a.f(this.f6265c == null);
        this.f6264b.start();
        Handler handler = new Handler(this.f6264b.getLooper());
        mediaCodec.setCallback(this, handler);
        this.f6265c = handler;
    }

    public void o() {
        synchronized (this.f6263a) {
            this.f6274l = true;
            this.f6264b.quit();
            f();
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f6263a) {
            this.f6272j = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onInputBufferAvailable(MediaCodec mediaCodec, int i9) {
        synchronized (this.f6263a) {
            this.f6266d.a(i9);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputBufferAvailable(MediaCodec mediaCodec, int i9, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f6263a) {
            MediaFormat mediaFormat = this.f6271i;
            if (mediaFormat != null) {
                b(mediaFormat);
                this.f6271i = null;
            }
            this.f6267e.a(i9);
            this.f6268f.add(bufferInfo);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f6263a) {
            b(mediaFormat);
            this.f6271i = null;
        }
    }
}
