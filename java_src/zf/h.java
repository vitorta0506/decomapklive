package zf;

import android.view.MotionEvent;
import androidx.annotation.NonNull;
/* loaded from: classes5.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private float f60452a;

    /* renamed from: b  reason: collision with root package name */
    private float f60453b;

    /* renamed from: c  reason: collision with root package name */
    private float f60454c;

    /* renamed from: d  reason: collision with root package name */
    private float f60455d;

    /* renamed from: e  reason: collision with root package name */
    private int f60456e = -1;

    /* renamed from: f  reason: collision with root package name */
    private int f60457f = -1;

    /* renamed from: g  reason: collision with root package name */
    private float f60458g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f60459h;

    /* renamed from: i  reason: collision with root package name */
    private a f60460i;

    /* loaded from: classes5.dex */
    public interface a {
        boolean a(h hVar);
    }

    /* loaded from: classes5.dex */
    public static class b implements a {
    }

    public h(a aVar) {
        this.f60460i = aVar;
    }

    private float a(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17) {
        return b((float) Math.toDegrees((float) Math.atan2(f11 - f13, f10 - f12)), (float) Math.toDegrees((float) Math.atan2(f15 - f17, f14 - f16)));
    }

    private float b(float f10, float f11) {
        float f12 = (f11 % 360.0f) - (f10 % 360.0f);
        this.f60458g = f12;
        if (f12 < -180.0f) {
            this.f60458g = f12 + 360.0f;
        } else if (f12 > 180.0f) {
            this.f60458g = f12 - 360.0f;
        }
        return this.f60458g;
    }

    public float c() {
        return this.f60458g;
    }

    public boolean d(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f60454c = motionEvent.getX();
            this.f60455d = motionEvent.getY();
            this.f60456e = motionEvent.findPointerIndex(motionEvent.getPointerId(0));
            this.f60458g = 0.0f;
            this.f60459h = true;
        } else if (actionMasked == 1) {
            this.f60456e = -1;
        } else if (actionMasked != 2) {
            if (actionMasked == 5) {
                this.f60452a = motionEvent.getX();
                this.f60453b = motionEvent.getY();
                this.f60457f = motionEvent.findPointerIndex(motionEvent.getPointerId(motionEvent.getActionIndex()));
                this.f60458g = 0.0f;
                this.f60459h = true;
            } else if (actionMasked == 6) {
                this.f60457f = -1;
            }
        } else if (this.f60456e != -1 && this.f60457f != -1 && motionEvent.getPointerCount() > this.f60457f) {
            float x10 = motionEvent.getX(this.f60456e);
            float y10 = motionEvent.getY(this.f60456e);
            float x11 = motionEvent.getX(this.f60457f);
            float y11 = motionEvent.getY(this.f60457f);
            if (this.f60459h) {
                this.f60458g = 0.0f;
                this.f60459h = false;
            } else {
                a(this.f60452a, this.f60453b, this.f60454c, this.f60455d, x11, y11, x10, y10);
            }
            a aVar = this.f60460i;
            if (aVar != null) {
                aVar.a(this);
            }
            this.f60452a = x11;
            this.f60453b = y11;
            this.f60454c = x10;
            this.f60455d = y10;
        }
        return true;
    }
}
