package ll;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
/* loaded from: classes7.dex */
public class c extends b {

    /* renamed from: j  reason: collision with root package name */
    protected final ScaleGestureDetector f54377j;

    /* loaded from: classes7.dex */
    class a implements ScaleGestureDetector.OnScaleGestureListener {
        a() {
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
                return false;
            }
            c.this.f54368a.b(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
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

    public c(Context context) {
        super(context);
        this.f54377j = new ScaleGestureDetector(context, new a());
    }

    @Override // ll.a, ll.d
    public boolean b() {
        return this.f54377j.isInProgress();
    }

    @Override // ll.b, ll.a, ll.d
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            this.f54377j.onTouchEvent(motionEvent);
            return super.onTouchEvent(motionEvent);
        } catch (IllegalArgumentException unused) {
            return true;
        }
    }
}
