package ll;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
/* loaded from: classes7.dex */
public class a implements d {

    /* renamed from: a  reason: collision with root package name */
    protected e f54368a;

    /* renamed from: b  reason: collision with root package name */
    float f54369b;

    /* renamed from: c  reason: collision with root package name */
    float f54370c;

    /* renamed from: d  reason: collision with root package name */
    final float f54371d;

    /* renamed from: e  reason: collision with root package name */
    final float f54372e;

    /* renamed from: f  reason: collision with root package name */
    private VelocityTracker f54373f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f54374g;

    public a(Context context) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f54372e = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f54371d = viewConfiguration.getScaledTouchSlop();
    }

    @Override // ll.d
    public boolean a() {
        return this.f54374g;
    }

    @Override // ll.d
    public boolean b() {
        return false;
    }

    float c(MotionEvent motionEvent) {
        return motionEvent.getX();
    }

    float d(MotionEvent motionEvent) {
        return motionEvent.getY();
    }

    @Override // ll.d
    public boolean onTouchEvent(MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        int action = motionEvent.getAction();
        if (action == 0) {
            VelocityTracker obtain = VelocityTracker.obtain();
            this.f54373f = obtain;
            if (obtain != null) {
                obtain.addMovement(motionEvent);
            } else {
                ml.a.a().i("CupcakeGestureDetector", "Velocity tracker is null");
            }
            this.f54369b = c(motionEvent);
            this.f54370c = d(motionEvent);
            this.f54374g = false;
        } else if (action == 1) {
            if (this.f54374g && this.f54373f != null) {
                this.f54369b = c(motionEvent);
                this.f54370c = d(motionEvent);
                this.f54373f.addMovement(motionEvent);
                this.f54373f.computeCurrentVelocity(1000);
                float xVelocity = this.f54373f.getXVelocity();
                float yVelocity = this.f54373f.getYVelocity();
                if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.f54372e) {
                    this.f54368a.c(this.f54369b, this.f54370c, -xVelocity, -yVelocity);
                }
            }
            VelocityTracker velocityTracker2 = this.f54373f;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.f54373f = null;
            }
        } else if (action == 2) {
            float c10 = c(motionEvent);
            float d10 = d(motionEvent);
            float f10 = c10 - this.f54369b;
            float f11 = d10 - this.f54370c;
            if (!this.f54374g) {
                this.f54374g = Math.sqrt((double) ((f10 * f10) + (f11 * f11))) >= ((double) this.f54371d);
            }
            if (this.f54374g) {
                this.f54368a.a(f10, f11);
                this.f54369b = c10;
                this.f54370c = d10;
                VelocityTracker velocityTracker3 = this.f54373f;
                if (velocityTracker3 != null) {
                    velocityTracker3.addMovement(motionEvent);
                }
            }
        } else if (action == 3 && (velocityTracker = this.f54373f) != null) {
            velocityTracker.recycle();
            this.f54373f = null;
        }
        return true;
    }

    @Override // ll.d
    public void setOnGestureListener(e eVar) {
        this.f54368a = eVar;
    }
}
