package oa;

import android.view.MotionEvent;
import android.view.View;
import oa.g;
/* loaded from: classes3.dex */
public class a extends g {

    /* renamed from: oa.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    protected static class C0586a extends g.a {
        public C0586a() {
            this.f55540a = View.TRANSLATION_X;
        }

        @Override // oa.g.a
        protected void a(View view) {
            this.f55541b = view.getTranslationX();
            this.f55542c = view.getWidth();
        }
    }

    /* loaded from: classes3.dex */
    protected static class b extends g.e {
        protected b() {
        }

        @Override // oa.g.e
        public boolean a(View view, MotionEvent motionEvent) {
            if (motionEvent.getHistorySize() == 0) {
                return false;
            }
            float y10 = motionEvent.getY(0) - motionEvent.getHistoricalY(0, 0);
            float x10 = motionEvent.getX(0) - motionEvent.getHistoricalX(0, 0);
            if (Math.abs(x10) < Math.abs(y10)) {
                return false;
            }
            this.f55550a = view.getTranslationX();
            this.f55551b = x10;
            this.f55552c = x10 > 0.0f;
            return true;
        }
    }

    public a(pa.a aVar) {
        this(aVar, 3.0f, 1.0f, -2.0f);
    }

    @Override // oa.g
    protected g.a b() {
        return new C0586a();
    }

    @Override // oa.g
    protected g.e c() {
        return new b();
    }

    @Override // oa.g
    protected void f(View view, float f10) {
        view.setTranslationX(f10);
    }

    @Override // oa.g
    protected void g(View view, float f10, MotionEvent motionEvent) {
        view.setTranslationX(f10);
        motionEvent.offsetLocation(f10 - motionEvent.getX(0), 0.0f);
    }

    public a(pa.a aVar, float f10, float f11, float f12) {
        super(aVar, f12, f10, f11);
    }
}
