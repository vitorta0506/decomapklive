package com.yalantis.ucrop.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import zf.h;
/* loaded from: classes5.dex */
public class GestureCropImageView extends CropImageView {
    private ScaleGestureDetector B;
    private h C;
    private GestureDetector D;
    private float E;
    private float F;
    private boolean G;
    private boolean H;
    private boolean I;
    private int J;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class b extends GestureDetector.SimpleOnGestureListener {
        private b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            GestureCropImageView gestureCropImageView = GestureCropImageView.this;
            gestureCropImageView.z(gestureCropImageView.getDoubleTapTargetScale(), motionEvent.getX(), motionEvent.getY(), 200L);
            return super.onDoubleTap(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            GestureCropImageView.this.k(-f10, -f11);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class c extends h.b {
        private c() {
        }

        @Override // zf.h.a
        public boolean a(h hVar) {
            GestureCropImageView.this.i(hVar.c(), GestureCropImageView.this.E, GestureCropImageView.this.F);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class d extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private d() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            GestureCropImageView.this.j(scaleGestureDetector.getScaleFactor(), GestureCropImageView.this.E, GestureCropImageView.this.F);
            return true;
        }
    }

    public GestureCropImageView(Context context) {
        super(context);
        this.G = true;
        this.H = true;
        this.I = true;
        this.J = 5;
    }

    private void G() {
        this.D = new GestureDetector(getContext(), new b(), null, true);
        this.B = new ScaleGestureDetector(getContext(), new d());
        this.C = new h(new c());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yalantis.ucrop.view.TransformImageView
    public void g() {
        super.g();
        G();
    }

    public int getDoubleTapScaleSteps() {
        return this.J;
    }

    protected float getDoubleTapTargetScale() {
        return getCurrentScale() * ((float) Math.pow(getMaxScale() / getMinScale(), 1.0f / this.J));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if ((motionEvent.getAction() & 255) == 0) {
            r();
        }
        if (motionEvent.getPointerCount() > 1) {
            this.E = (motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f;
            this.F = (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f;
        }
        if (this.I) {
            this.D.onTouchEvent(motionEvent);
        }
        if (this.H) {
            this.B.onTouchEvent(motionEvent);
        }
        if (this.G) {
            this.C.d(motionEvent);
        }
        if ((motionEvent.getAction() & 255) == 1) {
            x();
        }
        return true;
    }

    public void setDoubleTapScaleSteps(int i9) {
        this.J = i9;
    }

    public void setGestureEnabled(boolean z10) {
        this.I = z10;
    }

    public void setRotateEnabled(boolean z10) {
        this.G = z10;
    }

    public void setScaleEnabled(boolean z10) {
        this.H = z10;
    }

    public GestureCropImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GestureCropImageView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.G = true;
        this.H = true;
        this.I = true;
        this.J = 5;
    }
}
