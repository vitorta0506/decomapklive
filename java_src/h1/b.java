package h1;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private int f40273a = -1;

    /* renamed from: b  reason: collision with root package name */
    private int f40274b = 0;

    /* renamed from: c  reason: collision with root package name */
    private final ScaleGestureDetector f40275c;

    /* renamed from: d  reason: collision with root package name */
    private VelocityTracker f40276d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f40277e;

    /* renamed from: f  reason: collision with root package name */
    private float f40278f;

    /* renamed from: g  reason: collision with root package name */
    private float f40279g;

    /* renamed from: h  reason: collision with root package name */
    private final float f40280h;

    /* renamed from: i  reason: collision with root package name */
    private final float f40281i;

    /* renamed from: j  reason: collision with root package name */
    private c f40282j;

    /* loaded from: classes.dex */
    class a implements ScaleGestureDetector.OnScaleGestureListener {
        a() {
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
                return false;
            }
            if (scaleFactor >= 0.0f) {
                b.this.f40282j.b(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
                return true;
            }
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, c cVar) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f40281i = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f40280h = viewConfiguration.getScaledTouchSlop();
        this.f40282j = cVar;
        this.f40275c = new ScaleGestureDetector(context, new a());
    }

    private float b(MotionEvent motionEvent) {
        try {
            return motionEvent.getX(this.f40274b);
        } catch (Exception unused) {
            return motionEvent.getX();
        }
    }

    private float c(MotionEvent motionEvent) {
        try {
            return motionEvent.getY(this.f40274b);
        } catch (Exception unused) {
            return motionEvent.getY();
        }
    }

    private boolean g(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f40273a = motionEvent.getPointerId(0);
            VelocityTracker obtain = VelocityTracker.obtain();
            this.f40276d = obtain;
            if (obtain != null) {
                obtain.addMovement(motionEvent);
            }
            this.f40278f = b(motionEvent);
            this.f40279g = c(motionEvent);
            this.f40277e = false;
        } else if (action == 1) {
            this.f40273a = -1;
            if (this.f40277e && this.f40276d != null) {
                this.f40278f = b(motionEvent);
                this.f40279g = c(motionEvent);
                this.f40276d.addMovement(motionEvent);
                this.f40276d.computeCurrentVelocity(1000);
                float xVelocity = this.f40276d.getXVelocity();
                float yVelocity = this.f40276d.getYVelocity();
                if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.f40281i) {
                    this.f40282j.c(this.f40278f, this.f40279g, -xVelocity, -yVelocity);
                }
            }
            VelocityTracker velocityTracker = this.f40276d;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f40276d = null;
            }
        } else if (action == 2) {
            float b10 = b(motionEvent);
            float c10 = c(motionEvent);
            float f10 = b10 - this.f40278f;
            float f11 = c10 - this.f40279g;
            if (!this.f40277e) {
                this.f40277e = Math.sqrt((double) ((f10 * f10) + (f11 * f11))) >= ((double) this.f40280h);
            }
            if (this.f40277e) {
                this.f40282j.a(f10, f11);
                this.f40278f = b10;
                this.f40279g = c10;
                VelocityTracker velocityTracker2 = this.f40276d;
                if (velocityTracker2 != null) {
                    velocityTracker2.addMovement(motionEvent);
                }
            }
        } else if (action == 3) {
            this.f40273a = -1;
            VelocityTracker velocityTracker3 = this.f40276d;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.f40276d = null;
            }
        } else if (action == 6) {
            int b11 = l.b(motionEvent.getAction());
            if (motionEvent.getPointerId(b11) == this.f40273a) {
                int i9 = b11 == 0 ? 1 : 0;
                this.f40273a = motionEvent.getPointerId(i9);
                this.f40278f = motionEvent.getX(i9);
                this.f40279g = motionEvent.getY(i9);
            }
        }
        int i10 = this.f40273a;
        this.f40274b = motionEvent.findPointerIndex(i10 != -1 ? i10 : 0);
        return true;
    }

    public boolean d() {
        return this.f40277e;
    }

    public boolean e() {
        return this.f40275c.isInProgress();
    }

    public boolean f(MotionEvent motionEvent) {
        try {
            this.f40275c.onTouchEvent(motionEvent);
            return g(motionEvent);
        } catch (IllegalArgumentException unused) {
            return true;
        }
    }
}
