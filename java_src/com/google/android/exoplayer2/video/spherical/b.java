package com.google.android.exoplayer2.video.spherical;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import androidx.annotation.BinderThread;
/* loaded from: classes2.dex */
final class b implements SensorEventListener {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f7186a = new float[16];

    /* renamed from: b  reason: collision with root package name */
    private final float[] f7187b = new float[16];

    /* renamed from: c  reason: collision with root package name */
    private final float[] f7188c = new float[16];

    /* renamed from: d  reason: collision with root package name */
    private final float[] f7189d = new float[3];

    /* renamed from: e  reason: collision with root package name */
    private final Display f7190e;

    /* renamed from: f  reason: collision with root package name */
    private final a[] f7191f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f7192g;

    /* loaded from: classes2.dex */
    public interface a {
        void a(float[] fArr, float f10);
    }

    public b(Display display, a... aVarArr) {
        this.f7190e = display;
        this.f7191f = aVarArr;
    }

    private float a(float[] fArr) {
        SensorManager.remapCoordinateSystem(fArr, 1, 131, this.f7187b);
        SensorManager.getOrientation(this.f7187b, this.f7189d);
        return this.f7189d[2];
    }

    private void b(float[] fArr, float f10) {
        for (a aVar : this.f7191f) {
            aVar.a(fArr, f10);
        }
    }

    private void c(float[] fArr) {
        if (!this.f7192g) {
            com.google.android.exoplayer2.video.spherical.a.a(this.f7188c, fArr);
            this.f7192g = true;
        }
        float[] fArr2 = this.f7187b;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        Matrix.multiplyMM(fArr, 0, this.f7187b, 0, this.f7188c, 0);
    }

    private void d(float[] fArr, int i9) {
        if (i9 != 0) {
            int i10 = 130;
            int i11 = 129;
            if (i9 == 1) {
                i10 = 2;
            } else if (i9 == 2) {
                i10 = 129;
                i11 = 130;
            } else if (i9 != 3) {
                throw new IllegalStateException();
            } else {
                i11 = 1;
            }
            float[] fArr2 = this.f7187b;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.f7187b, i10, i11, fArr);
        }
    }

    private static void e(float[] fArr) {
        Matrix.rotateM(fArr, 0, 90.0f, 1.0f, 0.0f, 0.0f);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i9) {
    }

    @Override // android.hardware.SensorEventListener
    @BinderThread
    public void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.f7186a, sensorEvent.values);
        d(this.f7186a, this.f7190e.getRotation());
        float a10 = a(this.f7186a);
        e(this.f7186a);
        c(this.f7186a);
        b(this.f7186a, a10);
    }
}
