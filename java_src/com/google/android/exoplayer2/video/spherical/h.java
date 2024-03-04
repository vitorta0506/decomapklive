package com.google.android.exoplayer2.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.BinderThread;
import com.google.android.exoplayer2.video.spherical.b;
/* loaded from: classes2.dex */
final class h extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, b.a {

    /* renamed from: c  reason: collision with root package name */
    private final a f7236c;

    /* renamed from: d  reason: collision with root package name */
    private final float f7237d;

    /* renamed from: e  reason: collision with root package name */
    private final GestureDetector f7238e;

    /* renamed from: a  reason: collision with root package name */
    private final PointF f7234a = new PointF();

    /* renamed from: b  reason: collision with root package name */
    private final PointF f7235b = new PointF();

    /* renamed from: f  reason: collision with root package name */
    private volatile float f7239f = 3.1415927f;

    /* loaded from: classes2.dex */
    public interface a {
        void b(PointF pointF);

        boolean onSingleTapUp(MotionEvent motionEvent);
    }

    public h(Context context, a aVar, float f10) {
        this.f7236c = aVar;
        this.f7237d = f10;
        this.f7238e = new GestureDetector(context, this);
    }

    @Override // com.google.android.exoplayer2.video.spherical.b.a
    @BinderThread
    public void a(float[] fArr, float f10) {
        this.f7239f = -f10;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.f7234a.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        float x10 = (motionEvent2.getX() - this.f7234a.x) / this.f7237d;
        float y10 = motionEvent2.getY();
        PointF pointF = this.f7234a;
        float f12 = (y10 - pointF.y) / this.f7237d;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d10 = this.f7239f;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        PointF pointF2 = this.f7235b;
        pointF2.x -= (cos * x10) - (sin * f12);
        float f13 = pointF2.y + (sin * x10) + (cos * f12);
        pointF2.y = f13;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f13));
        this.f7236c.b(this.f7235b);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return this.f7236c.onSingleTapUp(motionEvent);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f7238e.onTouchEvent(motionEvent);
    }
}
