package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.k1;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public interface l {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final m f6289a;

        /* renamed from: b  reason: collision with root package name */
        public final MediaFormat f6290b;

        /* renamed from: c  reason: collision with root package name */
        public final k1 f6291c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final Surface f6292d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final MediaCrypto f6293e;

        /* renamed from: f  reason: collision with root package name */
        public final int f6294f;

        private a(m mVar, MediaFormat mediaFormat, k1 k1Var, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i9) {
            this.f6289a = mVar;
            this.f6290b = mediaFormat;
            this.f6291c = k1Var;
            this.f6292d = surface;
            this.f6293e = mediaCrypto;
            this.f6294f = i9;
        }

        public static a a(m mVar, MediaFormat mediaFormat, k1 k1Var, @Nullable MediaCrypto mediaCrypto) {
            return new a(mVar, mediaFormat, k1Var, null, mediaCrypto, 0);
        }

        public static a b(m mVar, MediaFormat mediaFormat, k1 k1Var, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto) {
            return new a(mVar, mediaFormat, k1Var, surface, mediaCrypto, 0);
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        l a(a aVar) throws IOException;
    }

    /* loaded from: classes.dex */
    public interface c {
        void a(l lVar, long j10, long j11);
    }

    MediaFormat a();

    @RequiresApi(23)
    void b(c cVar, Handler handler);

    void c(int i9);

    @Nullable
    ByteBuffer d(int i9);

    void e(int i9, int i10, int i11, long j10, int i12);

    boolean f();

    void flush();

    @RequiresApi(19)
    void g(Bundle bundle);

    @RequiresApi(21)
    void h(int i9, long j10);

    int i();

    int j(MediaCodec.BufferInfo bufferInfo);

    void k(int i9, int i10, b2.c cVar, long j10, int i11);

    @Nullable
    ByteBuffer l(int i9);

    void release();

    void releaseOutputBuffer(int i9, boolean z10);

    @RequiresApi(23)
    void setOutputSurface(Surface surface);
}
