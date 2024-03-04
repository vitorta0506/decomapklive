package ll;

import android.content.Context;
import android.view.MotionEvent;
/* loaded from: classes7.dex */
public class b extends a {

    /* renamed from: h  reason: collision with root package name */
    private int f54375h;

    /* renamed from: i  reason: collision with root package name */
    private int f54376i;

    public b(Context context) {
        super(context);
        this.f54375h = -1;
        this.f54376i = 0;
    }

    @Override // ll.a
    float c(MotionEvent motionEvent) {
        try {
            return motionEvent.getX(this.f54376i);
        } catch (Exception unused) {
            return motionEvent.getX();
        }
    }

    @Override // ll.a
    float d(MotionEvent motionEvent) {
        try {
            return motionEvent.getY(this.f54376i);
        } catch (Exception unused) {
            return motionEvent.getY();
        }
    }

    @Override // ll.a, ll.d
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f54375h = motionEvent.getPointerId(0);
        } else if (action == 1 || action == 3) {
            this.f54375h = -1;
        } else if (action == 6) {
            int a10 = kl.a.a(motionEvent.getAction());
            if (motionEvent.getPointerId(a10) == this.f54375h) {
                int i9 = a10 == 0 ? 1 : 0;
                this.f54375h = motionEvent.getPointerId(i9);
                this.f54369b = motionEvent.getX(i9);
                this.f54370c = motionEvent.getY(i9);
            }
        }
        int i10 = this.f54375h;
        this.f54376i = motionEvent.findPointerIndex(i10 != -1 ? i10 : 0);
        try {
            return super.onTouchEvent(motionEvent);
        } catch (IllegalArgumentException unused) {
            return true;
        }
    }
}
