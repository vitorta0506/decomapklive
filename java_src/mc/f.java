package mc;

import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import java.util.Objects;
/* loaded from: classes4.dex */
public class f implements c {

    /* renamed from: a  reason: collision with root package name */
    protected TwinklingRefreshLayout.d f54996a;

    /* renamed from: b  reason: collision with root package name */
    private float f54997b;

    /* renamed from: c  reason: collision with root package name */
    private float f54998c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f54999d = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f55000e = false;

    /* renamed from: f  reason: collision with root package name */
    private boolean f55001f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f55002g = false;

    /* renamed from: h  reason: collision with root package name */
    private MotionEvent f55003h;

    public f(TwinklingRefreshLayout.d dVar) {
        Objects.requireNonNull(dVar, "The coprocessor can not be null.");
        this.f54996a = dVar;
    }

    private void g() {
        MotionEvent motionEvent = this.f55003h;
        if (motionEvent == null) {
            return;
        }
        this.f54996a.f(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime() + ViewConfiguration.getLongPressTimeout(), 3, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState()));
    }

    private void h() {
        MotionEvent motionEvent = this.f55003h;
        this.f54996a.f(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), 0, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState()));
    }

    @Override // mc.c
    public void a(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11, float f12, float f13) {
        int y10 = this.f54996a.y();
        if (this.f54996a.K() && f11 >= y10 && !this.f54996a.E()) {
            this.f54996a.o().A((int) f13);
        }
        if (!this.f54996a.D() || f11 > (-y10)) {
            return;
        }
        this.f54996a.o().x((int) f13);
    }

    @Override // mc.c
    public void b(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
    }

    @Override // mc.c
    public void c(MotionEvent motionEvent) {
    }

    @Override // mc.c
    public boolean d(MotionEvent motionEvent) {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000e, code lost:
        if (r0 != 3) goto L8;
     */
    @Override // mc.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: mc.f.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // mc.c
    public void e(MotionEvent motionEvent, boolean z10) {
        if (!z10 && this.f55000e) {
            this.f54996a.o().G();
        }
        if (!z10 && this.f55001f) {
            this.f54996a.o().H();
        }
        this.f55000e = false;
        this.f55001f = false;
    }

    @Override // mc.c
    public boolean f(MotionEvent motionEvent) {
        return false;
    }
}
