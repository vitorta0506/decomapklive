package com.google.android.exoplayer2.video.spherical;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.util.h0;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import k3.i;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class g implements i, l3.a {

    /* renamed from: i  reason: collision with root package name */
    private int f7229i;

    /* renamed from: j  reason: collision with root package name */
    private SurfaceTexture f7230j;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private byte[] f7233m;

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f7221a = new AtomicBoolean();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f7222b = new AtomicBoolean(true);

    /* renamed from: c  reason: collision with root package name */
    private final e f7223c = new e();

    /* renamed from: d  reason: collision with root package name */
    private final a f7224d = new a();

    /* renamed from: e  reason: collision with root package name */
    private final h0<Long> f7225e = new h0<>();

    /* renamed from: f  reason: collision with root package name */
    private final h0<c> f7226f = new h0<>();

    /* renamed from: g  reason: collision with root package name */
    private final float[] f7227g = new float[16];

    /* renamed from: h  reason: collision with root package name */
    private final float[] f7228h = new float[16];

    /* renamed from: k  reason: collision with root package name */
    private volatile int f7231k = 0;

    /* renamed from: l  reason: collision with root package name */
    private int f7232l = -1;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(SurfaceTexture surfaceTexture) {
        this.f7221a.set(true);
    }

    private void i(@Nullable byte[] bArr, int i9, long j10) {
        byte[] bArr2 = this.f7233m;
        int i10 = this.f7232l;
        this.f7233m = bArr;
        if (i9 == -1) {
            i9 = this.f7231k;
        }
        this.f7232l = i9;
        if (i10 == i9 && Arrays.equals(bArr2, this.f7233m)) {
            return;
        }
        byte[] bArr3 = this.f7233m;
        c a10 = bArr3 != null ? d.a(bArr3, this.f7232l) : null;
        if (a10 == null || !e.c(a10)) {
            a10 = c.b(this.f7232l);
        }
        this.f7226f.a(j10, a10);
    }

    @Override // k3.i
    public void a(long j10, long j11, k1 k1Var, @Nullable MediaFormat mediaFormat) {
        this.f7225e.a(j11, Long.valueOf(j10));
        i(k1Var.f6121v, k1Var.f6122w, j11);
    }

    @Override // l3.a
    public void b(long j10, float[] fArr) {
        this.f7224d.e(j10, fArr);
    }

    @Override // l3.a
    public void d() {
        this.f7225e.c();
        this.f7224d.d();
        this.f7222b.set(true);
    }

    public void e(float[] fArr, boolean z10) {
        GLES20.glClear(16384);
        GlUtil.c();
        if (this.f7221a.compareAndSet(true, false)) {
            ((SurfaceTexture) com.google.android.exoplayer2.util.a.e(this.f7230j)).updateTexImage();
            GlUtil.c();
            if (this.f7222b.compareAndSet(true, false)) {
                Matrix.setIdentityM(this.f7227g, 0);
            }
            long timestamp = this.f7230j.getTimestamp();
            Long g10 = this.f7225e.g(timestamp);
            if (g10 != null) {
                this.f7224d.c(this.f7227g, g10.longValue());
            }
            c j10 = this.f7226f.j(timestamp);
            if (j10 != null) {
                this.f7223c.d(j10);
            }
        }
        Matrix.multiplyMM(this.f7228h, 0, fArr, 0, this.f7227g, 0);
        this.f7223c.a(this.f7229i, this.f7228h, z10);
    }

    public SurfaceTexture f() {
        GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
        GlUtil.c();
        this.f7223c.b();
        GlUtil.c();
        this.f7229i = GlUtil.f();
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f7229i);
        this.f7230j = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.google.android.exoplayer2.video.spherical.f
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                g.this.g(surfaceTexture2);
            }
        });
        return this.f7230j;
    }

    public void h(int i9) {
        this.f7231k = i9;
    }
}
