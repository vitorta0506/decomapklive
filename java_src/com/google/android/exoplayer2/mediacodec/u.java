package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.mediacodec.l;
import com.google.android.exoplayer2.util.j0;
import com.google.android.exoplayer2.util.l0;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class u implements l {

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f6314a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private ByteBuffer[] f6315b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private ByteBuffer[] f6316c;

    /* loaded from: classes.dex */
    public static class b implements l.b {
        @Override // com.google.android.exoplayer2.mediacodec.l.b
        public l a(l.a aVar) throws IOException {
            MediaCodec b10;
            MediaCodec mediaCodec = null;
            try {
                b10 = b(aVar);
            } catch (IOException e10) {
                e = e10;
            } catch (RuntimeException e11) {
                e = e11;
            }
            try {
                j0.a("configureCodec");
                b10.configure(aVar.f6290b, aVar.f6292d, aVar.f6293e, aVar.f6294f);
                j0.c();
                j0.a("startCodec");
                b10.start();
                j0.c();
                return new u(b10);
            } catch (IOException | RuntimeException e12) {
                e = e12;
                mediaCodec = b10;
                if (mediaCodec != null) {
                    mediaCodec.release();
                }
                throw e;
            }
        }

        protected MediaCodec b(l.a aVar) throws IOException {
            com.google.android.exoplayer2.util.a.e(aVar.f6289a);
            String str = aVar.f6289a.f6295a;
            j0.a("createCodec:" + str);
            MediaCodec createByCodecName = MediaCodec.createByCodecName(str);
            j0.c();
            return createByCodecName;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(l.c cVar, MediaCodec mediaCodec, long j10, long j11) {
        cVar.a(this, j10, j11);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public MediaFormat a() {
        return this.f6314a.getOutputFormat();
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    @RequiresApi(23)
    public void b(final l.c cVar, Handler handler) {
        this.f6314a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.google.android.exoplayer2.mediacodec.t
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j10, long j11) {
                u.this.n(cVar, mediaCodec, j10, j11);
            }
        }, handler);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void c(int i9) {
        this.f6314a.setVideoScalingMode(i9);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    @Nullable
    public ByteBuffer d(int i9) {
        if (l0.f6985a >= 21) {
            return this.f6314a.getInputBuffer(i9);
        }
        return ((ByteBuffer[]) l0.j(this.f6315b))[i9];
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void e(int i9, int i10, int i11, long j10, int i12) {
        this.f6314a.queueInputBuffer(i9, i10, i11, j10, i12);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public boolean f() {
        return false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void flush() {
        this.f6314a.flush();
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    @RequiresApi(19)
    public void g(Bundle bundle) {
        this.f6314a.setParameters(bundle);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    @RequiresApi(21)
    public void h(int i9, long j10) {
        this.f6314a.releaseOutputBuffer(i9, j10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public int i() {
        return this.f6314a.dequeueInputBuffer(0L);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public int j(MediaCodec.BufferInfo bufferInfo) {
        int dequeueOutputBuffer;
        do {
            dequeueOutputBuffer = this.f6314a.dequeueOutputBuffer(bufferInfo, 0L);
            if (dequeueOutputBuffer == -3 && l0.f6985a < 21) {
                this.f6316c = this.f6314a.getOutputBuffers();
                continue;
            }
        } while (dequeueOutputBuffer == -3);
        return dequeueOutputBuffer;
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void k(int i9, int i10, b2.c cVar, long j10, int i11) {
        this.f6314a.queueSecureInputBuffer(i9, i10, cVar.a(), j10, i11);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    @Nullable
    public ByteBuffer l(int i9) {
        if (l0.f6985a >= 21) {
            return this.f6314a.getOutputBuffer(i9);
        }
        return ((ByteBuffer[]) l0.j(this.f6316c))[i9];
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void release() {
        this.f6315b = null;
        this.f6316c = null;
        this.f6314a.release();
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void releaseOutputBuffer(int i9, boolean z10) {
        this.f6314a.releaseOutputBuffer(i9, z10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    @RequiresApi(23)
    public void setOutputSurface(Surface surface) {
        this.f6314a.setOutputSurface(surface);
    }

    private u(MediaCodec mediaCodec) {
        this.f6314a = mediaCodec;
        if (l0.f6985a < 21) {
            this.f6315b = mediaCodec.getInputBuffers();
            this.f6316c = mediaCodec.getOutputBuffers();
        }
    }
}
