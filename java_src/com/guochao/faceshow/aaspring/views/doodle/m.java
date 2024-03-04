package com.guochao.faceshow.aaspring.views.doodle;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.guochao.faceshow.aaspring.views.doodle.l;
/* loaded from: classes3.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private final GestureDetector f24353a;

    /* renamed from: b  reason: collision with root package name */
    private final l f24354b;

    /* renamed from: c  reason: collision with root package name */
    private final a f24355c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f24356d = true;

    /* loaded from: classes3.dex */
    public interface a extends GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener, l.b {
        void G(MotionEvent motionEvent);

        void S(MotionEvent motionEvent);

        void U(MotionEvent motionEvent);

        void l(MotionEvent motionEvent);

        void q(MotionEvent motionEvent);

        void x(MotionEvent motionEvent);
    }

    /* loaded from: classes3.dex */
    public static abstract class b implements a {
        @Override // com.guochao.faceshow.aaspring.views.doodle.m.a
        public void G(MotionEvent motionEvent) {
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.m.a
        public void S(MotionEvent motionEvent) {
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.m.a
        public void l(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            return false;
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.m.a
        public void q(MotionEvent motionEvent) {
        }
    }

    /* loaded from: classes3.dex */
    private class c implements a {

        /* renamed from: a  reason: collision with root package name */
        private a f24357a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f24358b = false;

        /* renamed from: c  reason: collision with root package name */
        private boolean f24359c = false;

        /* renamed from: d  reason: collision with root package name */
        private MotionEvent f24360d;

        public c(a aVar) {
            this.f24357a = aVar;
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.m.a
        public void G(MotionEvent motionEvent) {
            this.f24357a.G(motionEvent);
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.m.a
        public void S(MotionEvent motionEvent) {
            this.f24357a.S(motionEvent);
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.m.a
        public void U(MotionEvent motionEvent) {
            this.f24357a.U(motionEvent);
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.l.b
        public boolean a(l lVar) {
            return this.f24357a.a(lVar);
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.l.b
        public void b(l lVar) {
            this.f24357a.b(lVar);
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.l.b
        public boolean c(l lVar) {
            this.f24358b = true;
            if (this.f24359c) {
                this.f24359c = false;
                U(this.f24360d);
            }
            return this.f24357a.c(lVar);
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.m.a
        public void l(MotionEvent motionEvent) {
            this.f24357a.l(motionEvent);
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            return this.f24357a.onDoubleTap(motionEvent);
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return this.f24357a.onDoubleTapEvent(motionEvent);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            this.f24358b = false;
            this.f24359c = false;
            return this.f24357a.onDown(motionEvent);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            return this.f24357a.onFling(motionEvent, motionEvent2, f10, f11);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            this.f24357a.onLongPress(motionEvent);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            if (!m.this.f24356d && this.f24358b) {
                this.f24359c = false;
                return false;
            }
            if (!this.f24359c) {
                this.f24359c = true;
                x(motionEvent);
            }
            this.f24360d = MotionEvent.obtain(motionEvent2);
            return this.f24357a.onScroll(motionEvent, motionEvent2, f10, f11);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
            this.f24357a.onShowPress(motionEvent);
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            return this.f24357a.onSingleTapConfirmed(motionEvent);
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return this.f24357a.onSingleTapUp(motionEvent);
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.m.a
        public void q(MotionEvent motionEvent) {
            this.f24357a.q(motionEvent);
            if (this.f24359c) {
                this.f24359c = false;
                this.f24360d = null;
                U(motionEvent);
            }
        }

        @Override // com.guochao.faceshow.aaspring.views.doodle.m.a
        public void x(MotionEvent motionEvent) {
            this.f24357a.x(motionEvent);
        }
    }

    public m(Context context, a aVar) {
        c cVar = new c(aVar);
        this.f24355c = cVar;
        GestureDetector gestureDetector = new GestureDetector(context, cVar);
        this.f24353a = gestureDetector;
        gestureDetector.setOnDoubleTapListener(cVar);
        l lVar = new l(context, cVar);
        this.f24354b = lVar;
        lVar.k(false);
    }

    public void b(boolean z10) {
        this.f24353a.setIsLongpressEnabled(z10);
    }

    public void c(boolean z10) {
        this.f24356d = z10;
    }

    public void d(int i9) {
        this.f24354b.j(i9);
    }

    public void e(int i9) {
        this.f24354b.l(i9);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f24355c.l(motionEvent);
        }
        if (motionEvent.getAction() == 1) {
            this.f24355c.G(motionEvent);
        }
        if (motionEvent.getAction() == 2) {
            this.f24355c.S(motionEvent);
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3 || motionEvent.getAction() == 4) {
            this.f24355c.q(motionEvent);
        }
        boolean i9 = this.f24354b.i(motionEvent);
        return !this.f24354b.h() ? i9 | this.f24353a.onTouchEvent(motionEvent) : i9;
    }
}
