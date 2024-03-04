package com.tencent.thumbplayer.g;

import android.media.Image;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.thumbplayer.g.b.c;
import com.tencent.thumbplayer.g.h.d;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public boolean f33973a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f33974b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private c f33975c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private com.tencent.thumbplayer.g.a.a f33976d;

    /* renamed from: g  reason: collision with root package name */
    private boolean f33979g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final String f33980h;

    /* renamed from: i  reason: collision with root package name */
    private EnumC0350b f33981i;

    /* renamed from: f  reason: collision with root package name */
    private boolean f33978f = true;

    /* renamed from: e  reason: collision with root package name */
    private final com.tencent.thumbplayer.g.g.a f33977e = new com.tencent.thumbplayer.g.g.a(b());

    /* loaded from: classes4.dex */
    public static abstract class a {
        public abstract void onError(@NonNull b bVar, @NonNull MediaCodec.CodecException codecException);

        public abstract void onInputBufferAvailable(@NonNull b bVar, int i9);

        public abstract void onOutputBufferAvailable(@NonNull b bVar, int i9, @NonNull MediaCodec.BufferInfo bufferInfo);

        public abstract void onOutputFormatChanged(@NonNull b bVar, @NonNull MediaFormat mediaFormat);
    }

    /* renamed from: com.tencent.thumbplayer.g.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public enum EnumC0350b {
        CreateByName,
        CreateByType
    }

    /* loaded from: classes4.dex */
    public static final class c extends MediaCodec.Callback {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final b f33990a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final a f33991b;

        public c(@NonNull b bVar, @Nullable a aVar) {
            this.f33990a = bVar;
            this.f33991b = aVar;
        }

        @Override // android.media.MediaCodec.Callback
        public final void onError(@NonNull MediaCodec mediaCodec, @NonNull MediaCodec.CodecException codecException) {
            a aVar = this.f33991b;
            if (aVar != null) {
                aVar.onError(this.f33990a, codecException);
            }
        }

        @Override // android.media.MediaCodec.Callback
        public final void onInputBufferAvailable(@NonNull MediaCodec mediaCodec, int i9) {
            a aVar = this.f33991b;
            if (aVar != null) {
                aVar.onInputBufferAvailable(this.f33990a, i9);
            }
        }

        @Override // android.media.MediaCodec.Callback
        public final void onOutputBufferAvailable(@NonNull MediaCodec mediaCodec, int i9, @NonNull MediaCodec.BufferInfo bufferInfo) {
            a aVar = this.f33991b;
            if (aVar != null) {
                aVar.onOutputBufferAvailable(this.f33990a, i9, bufferInfo);
            }
        }

        @Override // android.media.MediaCodec.Callback
        public final void onOutputFormatChanged(@NonNull MediaCodec mediaCodec, @NonNull MediaFormat mediaFormat) {
            a aVar = this.f33991b;
            if (aVar != null) {
                aVar.onOutputFormatChanged(this.f33990a, mediaFormat);
            }
        }
    }

    private b(String str, EnumC0350b enumC0350b) {
        this.f33980h = str;
        this.f33981i = enumC0350b;
    }

    public static b a(@NonNull String str) {
        return new b(str, EnumC0350b.CreateByName);
    }

    private void b(Surface surface) {
        this.f33973a = com.tencent.thumbplayer.g.a.a().a(this, surface);
        this.f33977e.a();
        this.f33977e.b();
        this.f33977e.a(this.f33973a);
    }

    private void m() {
        this.f33977e.b(this.f33974b);
        d.b(new Runnable() { // from class: com.tencent.thumbplayer.g.b.1
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.f33975c != null) {
                    b.this.f33975c.a(b.this.f33976d);
                }
                if (b.this.f33976d != null) {
                    b.this.f33976d.onCreate(Boolean.valueOf(b.this.f33974b));
                }
            }
        });
    }

    private void n() {
        this.f33977e.c();
    }

    private void o() {
        this.f33977e.d();
        d.b(new Runnable() { // from class: com.tencent.thumbplayer.g.b.2
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.f33976d != null) {
                    b.this.f33976d.onStarted(Boolean.valueOf(b.this.f33974b), b.this.f33977e.e());
                }
            }
        });
    }

    public final int a(long j10) {
        c cVar = this.f33975c;
        if (cVar != null) {
            return cVar.a(j10);
        }
        return -1000;
    }

    public final int a(@NonNull MediaCodec.BufferInfo bufferInfo, long j10) {
        c cVar = this.f33975c;
        if (cVar != null) {
            return cVar.a(bufferInfo, j10);
        }
        return -1000;
    }

    public final EnumC0350b a() {
        return this.f33981i;
    }

    @Nullable
    public final ByteBuffer a(int i9) {
        MediaCodec a10;
        c cVar = this.f33975c;
        if (cVar == null || (a10 = cVar.a()) == null) {
            return null;
        }
        return a10.getOutputBuffer(i9);
    }

    public final void a(int i9, int i10, int i11, long j10, int i12) {
        c cVar = this.f33975c;
        if (cVar != null) {
            cVar.a(i9, i10, i11, j10, i12);
        }
    }

    public final void a(int i9, int i10, @NonNull MediaCodec.CryptoInfo cryptoInfo, long j10, int i11) {
        MediaCodec a10;
        c cVar = this.f33975c;
        if (cVar == null || (a10 = cVar.a()) == null) {
            return;
        }
        a10.queueSecureInputBuffer(i9, i10, cryptoInfo, j10, i11);
    }

    public final void a(int i9, boolean z10) {
        c cVar = this.f33975c;
        if (cVar != null) {
            cVar.a(i9, z10);
        }
    }

    public final void a(@NonNull MediaFormat mediaFormat, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i9) {
        if (!this.f33979g) {
            this.f33979g = true;
            b(surface);
            try {
                this.f33975c = com.tencent.thumbplayer.g.a.a().a(mediaFormat, surface, mediaCrypto, i9, this);
            } catch (IOException e10) {
                com.tencent.thumbplayer.g.h.b.b("TMediaCodec", "createCodec mediaFormat:".concat(String.valueOf(mediaFormat)), e10);
            }
            m();
            return;
        }
        com.tencent.thumbplayer.g.h.b.d("TMediaCodec", "configure ignored, mediaFormat:" + mediaFormat + " surface:" + surface + " crypto:" + mediaCrypto + " flags:" + i9 + " stack:" + Log.getStackTraceString(new Throwable()));
    }

    public final void a(@Nullable Bundle bundle) {
        MediaCodec a10;
        c cVar = this.f33975c;
        if (cVar == null || (a10 = cVar.a()) == null) {
            return;
        }
        a10.setParameters(bundle);
    }

    public final void a(@NonNull Surface surface) {
        c cVar = this.f33975c;
        if (cVar != null) {
            cVar.a(surface);
        }
    }

    public final void a(@Nullable com.tencent.thumbplayer.g.a.a aVar) {
        this.f33976d = aVar;
    }

    public final void a(@NonNull a aVar, @Nullable Handler handler) {
        MediaCodec a10;
        if (Build.VERSION.SDK_INT < 23) {
            com.tencent.thumbplayer.g.h.b.d("TMediaCodec", "ignore method setCallback for API lower than 23");
            return;
        }
        c cVar = this.f33975c;
        if (cVar == null || (a10 = cVar.a()) == null) {
            return;
        }
        a10.setCallback(new c(this, aVar), handler);
    }

    public final void a(boolean z10) {
        this.f33978f = z10;
    }

    @Nullable
    public final Image b(int i9) {
        c cVar = this.f33975c;
        if (cVar != null) {
            return cVar.a().getOutputImage(i9);
        }
        return null;
    }

    public final boolean b() {
        return com.tencent.thumbplayer.g.h.c.a(this.f33980h);
    }

    public final com.tencent.thumbplayer.g.a.a c() {
        return this.f33976d;
    }

    @Nullable
    public final ByteBuffer c(int i9) {
        c cVar = this.f33975c;
        if (cVar != null) {
            return cVar.a().getInputBuffer(i9);
        }
        return null;
    }

    public final void d(int i9) {
        MediaCodec a10;
        c cVar = this.f33975c;
        if (cVar == null || (a10 = cVar.a()) == null) {
            return;
        }
        a10.setVideoScalingMode(i9);
    }

    public final boolean d() {
        return this.f33978f;
    }

    public final void e() {
        if (com.tencent.thumbplayer.g.h.b.a()) {
            com.tencent.thumbplayer.g.h.b.b("TMediaCodec", "start codecWrapper:" + this.f33975c);
        }
        n();
        c cVar = this.f33975c;
        if (cVar != null) {
            cVar.d();
        }
        o();
    }

    public final void f() {
        c cVar = this.f33975c;
        if (cVar != null) {
            cVar.f();
        }
    }

    public final void g() {
        c cVar = this.f33975c;
        if (cVar != null) {
            cVar.g();
        }
    }

    public final void h() {
        c cVar = this.f33975c;
        if (cVar != null) {
            cVar.e();
        }
    }

    @NonNull
    @Nullable
    public final MediaFormat i() {
        MediaCodec a10;
        c cVar = this.f33975c;
        if (cVar == null || (a10 = cVar.a()) == null) {
            return null;
        }
        return a10.getOutputFormat();
    }

    @NonNull
    @Nullable
    public final ByteBuffer[] j() {
        MediaCodec a10;
        c cVar = this.f33975c;
        if (cVar == null || (a10 = cVar.a()) == null) {
            return null;
        }
        return a10.getInputBuffers();
    }

    @NonNull
    @Nullable
    public final ByteBuffer[] k() {
        MediaCodec a10;
        c cVar = this.f33975c;
        if (cVar == null || (a10 = cVar.a()) == null) {
            return null;
        }
        return a10.getOutputBuffers();
    }

    @NonNull
    public final String l() {
        return this.f33980h;
    }
}
