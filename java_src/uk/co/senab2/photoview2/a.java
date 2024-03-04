package uk.co.senab2.photoview2;

import android.graphics.RectF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.ImageView;
/* loaded from: classes7.dex */
public class a implements GestureDetector.OnDoubleTapListener {

    /* renamed from: a  reason: collision with root package name */
    private c f58546a;

    public a(c cVar) {
        a(cVar);
    }

    public void a(c cVar) {
        this.f58546a = cVar;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        c cVar = this.f58546a;
        if (cVar == null) {
            return false;
        }
        try {
            float C = cVar.C();
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (C < this.f58546a.y()) {
                c cVar2 = this.f58546a;
                cVar2.S(cVar2.y(), x10, y10, true);
            } else if (C >= this.f58546a.y() && C < this.f58546a.x()) {
                c cVar3 = this.f58546a;
                cVar3.S(cVar3.x(), x10, y10, true);
            } else {
                c cVar4 = this.f58546a;
                cVar4.S(cVar4.z(), x10, y10, true);
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
        }
        return true;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        RectF q10;
        c cVar = this.f58546a;
        if (cVar == null) {
            return false;
        }
        ImageView u10 = cVar.u();
        if (this.f58546a.A() != null && (q10 = this.f58546a.q()) != null) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (q10.contains(x10, y10)) {
                this.f58546a.A().b(u10, (x10 - q10.left) / q10.width(), (y10 - q10.top) / q10.height());
                return true;
            }
            this.f58546a.A().a();
        }
        if (this.f58546a.B() != null) {
            this.f58546a.B().a(u10, motionEvent.getX(), motionEvent.getY());
        }
        return false;
    }
}
