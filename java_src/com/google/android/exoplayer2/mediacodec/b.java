package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.mediacodec.b;
import com.google.android.exoplayer2.mediacodec.l;
import com.google.android.exoplayer2.util.j0;
import com.google.common.base.w;
import java.io.IOException;
import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(23)
/* loaded from: classes.dex */
public final class b implements l {

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f6236a;

    /* renamed from: b  reason: collision with root package name */
    private final g f6237b;

    /* renamed from: c  reason: collision with root package name */
    private final e f6238c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f6239d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f6240e;

    /* renamed from: f  reason: collision with root package name */
    private int f6241f;

    /* renamed from: com.google.android.exoplayer2.mediacodec.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0080b implements l.b {

        /* renamed from: a  reason: collision with root package name */
        private final w<HandlerThread> f6242a;

        /* renamed from: b  reason: collision with root package name */
        private final w<HandlerThread> f6243b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f6244c;

        public C0080b(final int i9, boolean z10) {
            this(new w() { // from class: com.google.android.exoplayer2.mediacodec.c
                @Override // com.google.common.base.w, java.util.function.Supplier
                public final Object get() {
                    HandlerThread e10;
                    e10 = b.C0080b.e(i9);
                    return e10;
                }
            }, new w() { // from class: com.google.android.exoplayer2.mediacodec.d
                @Override // com.google.common.base.w, java.util.function.Supplier
                public final Object get() {
                    HandlerThread f10;
                    f10 = b.C0080b.f(i9);
                    return f10;
                }
            }, z10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread e(int i9) {
            return new HandlerThread(b.q(i9));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread f(int i9) {
            return new HandlerThread(b.r(i9));
        }

        @Override // com.google.android.exoplayer2.mediacodec.l.b
        /* renamed from: d */
        public b a(l.a aVar) throws IOException {
            MediaCodec mediaCodec;
            b bVar;
            String str = aVar.f6289a.f6295a;
            b bVar2 = null;
            try {
                j0.a("createCodec:" + str);
                mediaCodec = MediaCodec.createByCodecName(str);
                try {
                    bVar = new b(mediaCodec, this.f6242a.get(), this.f6243b.get(), this.f6244c);
                } catch (Exception e10) {
                    e = e10;
                }
            } catch (Exception e11) {
                e = e11;
                mediaCodec = null;
            }
            try {
                j0.c();
                bVar.t(aVar.f6290b, aVar.f6292d, aVar.f6293e, aVar.f6294f);
                return bVar;
            } catch (Exception e12) {
                e = e12;
                bVar2 = bVar;
                if (bVar2 != null) {
                    bVar2.release();
                } else if (mediaCodec != null) {
                    mediaCodec.release();
                }
                throw e;
            }
        }

        @VisibleForTesting
        C0080b(w<HandlerThread> wVar, w<HandlerThread> wVar2, boolean z10) {
            this.f6242a = wVar;
            this.f6243b = wVar2;
            this.f6244c = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String q(int i9) {
        return s(i9, "ExoPlayer:MediaCodecAsyncAdapter:");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String r(int i9) {
        return s(i9, "ExoPlayer:MediaCodecQueueingThread:");
    }

    private static String s(int i9, String str) {
        StringBuilder sb2 = new StringBuilder(str);
        if (i9 == 1) {
            sb2.append("Audio");
        } else if (i9 == 2) {
            sb2.append("Video");
        } else {
            sb2.append("Unknown(");
            sb2.append(i9);
            sb2.append(")");
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(@Nullable MediaFormat mediaFormat, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i9) {
        this.f6237b.h(this.f6236a);
        j0.a("configureCodec");
        this.f6236a.configure(mediaFormat, surface, mediaCrypto, i9);
        j0.c();
        this.f6238c.q();
        j0.a("startCodec");
        this.f6236a.start();
        j0.c();
        this.f6241f = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(l.c cVar, MediaCodec mediaCodec, long j10, long j11) {
        cVar.a(this, j10, j11);
    }

    private void v() {
        if (this.f6239d) {
            try {
                this.f6238c.r();
            } catch (InterruptedException e10) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e10);
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public MediaFormat a() {
        return this.f6237b.g();
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void b(final l.c cVar, Handler handler) {
        v();
        this.f6236a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.google.android.exoplayer2.mediacodec.a
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j10, long j11) {
                b.this.u(cVar, mediaCodec, j10, j11);
            }
        }, handler);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void c(int i9) {
        v();
        this.f6236a.setVideoScalingMode(i9);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    @Nullable
    public ByteBuffer d(int i9) {
        return this.f6236a.getInputBuffer(i9);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void e(int i9, int i10, int i11, long j10, int i12) {
        this.f6238c.m(i9, i10, i11, j10, i12);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public boolean f() {
        return false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void flush() {
        this.f6238c.i();
        this.f6236a.flush();
        this.f6237b.e();
        this.f6236a.start();
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void g(Bundle bundle) {
        v();
        this.f6236a.setParameters(bundle);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void h(int i9, long j10) {
        this.f6236a.releaseOutputBuffer(i9, j10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public int i() {
        return this.f6237b.c();
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public int j(MediaCodec.BufferInfo bufferInfo) {
        return this.f6237b.d(bufferInfo);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void k(int i9, int i10, b2.c cVar, long j10, int i11) {
        this.f6238c.n(i9, i10, cVar, j10, i11);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    @Nullable
    public ByteBuffer l(int i9) {
        return this.f6236a.getOutputBuffer(i9);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void release() {
        try {
            if (this.f6241f == 1) {
                this.f6238c.p();
                this.f6237b.o();
            }
            this.f6241f = 2;
        } finally {
            if (!this.f6240e) {
                this.f6236a.release();
                this.f6240e = true;
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void releaseOutputBuffer(int i9, boolean z10) {
        this.f6236a.releaseOutputBuffer(i9, z10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void setOutputSurface(Surface surface) {
        v();
        this.f6236a.setOutputSurface(surface);
    }

    private b(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2, boolean z10) {
        this.f6236a = mediaCodec;
        this.f6237b = new g(handlerThread);
        this.f6238c = new e(mediaCodec, handlerThread2);
        this.f6239d = z10;
        this.f6241f = 0;
    }
}
