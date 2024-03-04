package com.google.android.exoplayer2.video.spherical;

import android.opengl.Matrix;
import com.google.android.exoplayer2.util.h0;
/* loaded from: classes2.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f7182a = new float[16];

    /* renamed from: b  reason: collision with root package name */
    private final float[] f7183b = new float[16];

    /* renamed from: c  reason: collision with root package name */
    private final h0<float[]> f7184c = new h0<>();

    /* renamed from: d  reason: collision with root package name */
    private boolean f7185d;

    public static void a(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float sqrt = (float) Math.sqrt((fArr2[10] * fArr2[10]) + (fArr2[8] * fArr2[8]));
        fArr[0] = fArr2[10] / sqrt;
        fArr[2] = fArr2[8] / sqrt;
        fArr[8] = (-fArr2[8]) / sqrt;
        fArr[10] = fArr2[10] / sqrt;
    }

    private static void b(float[] fArr, float[] fArr2) {
        float f10 = fArr2[0];
        float f11 = -fArr2[1];
        float f12 = -fArr2[2];
        float length = Matrix.length(f10, f11, f12);
        if (length != 0.0f) {
            Matrix.setRotateM(fArr, 0, (float) Math.toDegrees(length), f10 / length, f11 / length, f12 / length);
        } else {
            Matrix.setIdentityM(fArr, 0);
        }
    }

    public boolean c(float[] fArr, long j10) {
        float[] j11 = this.f7184c.j(j10);
        if (j11 == null) {
            return false;
        }
        b(this.f7183b, j11);
        if (!this.f7185d) {
            a(this.f7182a, this.f7183b);
            this.f7185d = true;
        }
        Matrix.multiplyMM(fArr, 0, this.f7182a, 0, this.f7183b, 0);
        return true;
    }

    public void d() {
        this.f7184c.c();
        this.f7185d = false;
    }

    public void e(long j10, float[] fArr) {
        this.f7184c.a(j10, fArr);
    }
}
