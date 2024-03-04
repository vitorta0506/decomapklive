package com.google.android.exoplayer2.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.WindowManager;
import androidx.annotation.AnyThread;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView;
import com.google.android.exoplayer2.video.spherical.b;
import com.google.android.exoplayer2.video.spherical.h;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import k3.i;
/* loaded from: classes2.dex */
public final class SphericalGLSurfaceView extends GLSurfaceView {

    /* renamed from: a  reason: collision with root package name */
    private final CopyOnWriteArrayList<b> f7159a;

    /* renamed from: b  reason: collision with root package name */
    private final SensorManager f7160b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Sensor f7161c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.video.spherical.b f7162d;

    /* renamed from: e  reason: collision with root package name */
    private final Handler f7163e;

    /* renamed from: f  reason: collision with root package name */
    private final h f7164f;

    /* renamed from: g  reason: collision with root package name */
    private final g f7165g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private SurfaceTexture f7166h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Surface f7167i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f7168j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f7169k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f7170l;

    @VisibleForTesting
    /* loaded from: classes2.dex */
    final class a implements GLSurfaceView.Renderer, h.a, b.a {

        /* renamed from: a  reason: collision with root package name */
        private final g f7171a;

        /* renamed from: d  reason: collision with root package name */
        private final float[] f7174d;

        /* renamed from: e  reason: collision with root package name */
        private final float[] f7175e;

        /* renamed from: f  reason: collision with root package name */
        private final float[] f7176f;

        /* renamed from: g  reason: collision with root package name */
        private float f7177g;

        /* renamed from: h  reason: collision with root package name */
        private float f7178h;

        /* renamed from: b  reason: collision with root package name */
        private final float[] f7172b = new float[16];

        /* renamed from: c  reason: collision with root package name */
        private final float[] f7173c = new float[16];

        /* renamed from: i  reason: collision with root package name */
        private final float[] f7179i = new float[16];

        /* renamed from: j  reason: collision with root package name */
        private final float[] f7180j = new float[16];

        public a(g gVar) {
            float[] fArr = new float[16];
            this.f7174d = fArr;
            float[] fArr2 = new float[16];
            this.f7175e = fArr2;
            float[] fArr3 = new float[16];
            this.f7176f = fArr3;
            this.f7171a = gVar;
            Matrix.setIdentityM(fArr, 0);
            Matrix.setIdentityM(fArr2, 0);
            Matrix.setIdentityM(fArr3, 0);
            this.f7178h = 3.1415927f;
        }

        private float c(float f10) {
            if (f10 > 1.0f) {
                return (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / f10)) * 2.0d);
            }
            return 90.0f;
        }

        @AnyThread
        private void d() {
            Matrix.setRotateM(this.f7175e, 0, -this.f7177g, (float) Math.cos(this.f7178h), (float) Math.sin(this.f7178h), 0.0f);
        }

        @Override // com.google.android.exoplayer2.video.spherical.b.a
        @BinderThread
        public synchronized void a(float[] fArr, float f10) {
            float[] fArr2 = this.f7174d;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            this.f7178h = -f10;
            d();
        }

        @Override // com.google.android.exoplayer2.video.spherical.h.a
        @UiThread
        public synchronized void b(PointF pointF) {
            this.f7177g = pointF.y;
            d();
            Matrix.setRotateM(this.f7176f, 0, -pointF.x, 0.0f, 1.0f, 0.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            synchronized (this) {
                Matrix.multiplyMM(this.f7180j, 0, this.f7174d, 0, this.f7176f, 0);
                Matrix.multiplyMM(this.f7179i, 0, this.f7175e, 0, this.f7180j, 0);
            }
            Matrix.multiplyMM(this.f7173c, 0, this.f7172b, 0, this.f7179i, 0);
            this.f7171a.e(this.f7173c, false);
        }

        @Override // com.google.android.exoplayer2.video.spherical.h.a
        @UiThread
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return SphericalGLSurfaceView.this.performClick();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i9, int i10) {
            GLES20.glViewport(0, 0, i9, i10);
            float f10 = i9 / i10;
            Matrix.perspectiveM(this.f7172b, 0, c(f10), f10, 0.1f, 100.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            SphericalGLSurfaceView.this.g(this.f7171a.f());
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void A(Surface surface);

        void z(Surface surface);
    }

    public SphericalGLSurfaceView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        Surface surface = this.f7167i;
        if (surface != null) {
            Iterator<b> it = this.f7159a.iterator();
            while (it.hasNext()) {
                it.next().z(surface);
            }
        }
        h(this.f7166h, surface);
        this.f7166h = null;
        this.f7167i = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.f7166h;
        Surface surface = this.f7167i;
        Surface surface2 = new Surface(surfaceTexture);
        this.f7166h = surfaceTexture;
        this.f7167i = surface2;
        Iterator<b> it = this.f7159a.iterator();
        while (it.hasNext()) {
            it.next().A(surface2);
        }
        h(surfaceTexture2, surface);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(final SurfaceTexture surfaceTexture) {
        this.f7163e.post(new Runnable() { // from class: l3.d
            @Override // java.lang.Runnable
            public final void run() {
                SphericalGLSurfaceView.this.f(surfaceTexture);
            }
        });
    }

    private static void h(@Nullable SurfaceTexture surfaceTexture, @Nullable Surface surface) {
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        if (surface != null) {
            surface.release();
        }
    }

    private void j() {
        boolean z10 = this.f7168j && this.f7169k;
        Sensor sensor = this.f7161c;
        if (sensor == null || z10 == this.f7170l) {
            return;
        }
        if (z10) {
            this.f7160b.registerListener(this.f7162d, sensor, 0);
        } else {
            this.f7160b.unregisterListener(this.f7162d);
        }
        this.f7170l = z10;
    }

    public void d(b bVar) {
        this.f7159a.add(bVar);
    }

    public l3.a getCameraMotionListener() {
        return this.f7165g;
    }

    public i getVideoFrameMetadataListener() {
        return this.f7165g;
    }

    @Nullable
    public Surface getVideoSurface() {
        return this.f7167i;
    }

    public void i(b bVar) {
        this.f7159a.remove(bVar);
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f7163e.post(new Runnable() { // from class: l3.c
            @Override // java.lang.Runnable
            public final void run() {
                SphericalGLSurfaceView.this.e();
            }
        });
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        this.f7169k = false;
        j();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        this.f7169k = true;
        j();
    }

    public void setDefaultStereoMode(int i9) {
        this.f7165g.h(i9);
    }

    public void setUseSensorRotation(boolean z10) {
        this.f7168j = z10;
        j();
    }

    public SphericalGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7159a = new CopyOnWriteArrayList<>();
        this.f7163e = new Handler(Looper.getMainLooper());
        SensorManager sensorManager = (SensorManager) com.google.android.exoplayer2.util.a.e(context.getSystemService("sensor"));
        this.f7160b = sensorManager;
        Sensor defaultSensor = l0.f6985a >= 18 ? sensorManager.getDefaultSensor(15) : null;
        this.f7161c = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        g gVar = new g();
        this.f7165g = gVar;
        a aVar = new a(gVar);
        h hVar = new h(context, aVar, 25.0f);
        this.f7164f = hVar;
        this.f7162d = new com.google.android.exoplayer2.video.spherical.b(((WindowManager) com.google.android.exoplayer2.util.a.e((WindowManager) context.getSystemService("window"))).getDefaultDisplay(), hVar, aVar);
        this.f7168j = true;
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setOnTouchListener(hVar);
    }
}
