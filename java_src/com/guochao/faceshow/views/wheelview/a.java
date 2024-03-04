package com.guochao.faceshow.views.wheelview;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private c f27103a;

    /* renamed from: b  reason: collision with root package name */
    private Context f27104b;

    /* renamed from: c  reason: collision with root package name */
    private GestureDetector f27105c;

    /* renamed from: d  reason: collision with root package name */
    private Scroller f27106d;

    /* renamed from: e  reason: collision with root package name */
    private int f27107e;

    /* renamed from: f  reason: collision with root package name */
    private float f27108f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f27109g;

    /* renamed from: h  reason: collision with root package name */
    private GestureDetector.SimpleOnGestureListener f27110h = new C0271a();

    /* renamed from: i  reason: collision with root package name */
    private final int f27111i = 0;

    /* renamed from: j  reason: collision with root package name */
    private final int f27112j = 1;

    /* renamed from: k  reason: collision with root package name */
    private Handler f27113k = new b();

    /* renamed from: com.guochao.faceshow.views.wheelview.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0271a extends GestureDetector.SimpleOnGestureListener {
        C0271a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            a.this.f27107e = 0;
            a.this.f27106d.fling(0, a.this.f27107e, 0, (int) (-f11), 0, 0, -2147483647, Integer.MAX_VALUE);
            a.this.n(0);
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            return true;
        }
    }

    /* loaded from: classes4.dex */
    class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            a.this.f27106d.computeScrollOffset();
            int currY = a.this.f27106d.getCurrY();
            int i9 = a.this.f27107e - currY;
            a.this.f27107e = currY;
            if (i9 != 0) {
                a.this.f27103a.c(i9);
            }
            if (Math.abs(currY - a.this.f27106d.getFinalY()) < 1) {
                a.this.f27106d.getFinalY();
                a.this.f27106d.forceFinished(true);
            }
            if (!a.this.f27106d.isFinished()) {
                a.this.f27113k.sendEmptyMessage(message.what);
            } else if (message.what == 0) {
                a.this.j();
            } else {
                a.this.i();
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface c {
        void a();

        void b();

        void c(int i9);

        void onFinished();
    }

    public a(Context context, c cVar) {
        GestureDetector gestureDetector = new GestureDetector(context, this.f27110h);
        this.f27105c = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        this.f27106d = new Scroller(context);
        this.f27103a = cVar;
        this.f27104b = context;
    }

    private void h() {
        this.f27113k.removeMessages(0);
        this.f27113k.removeMessages(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        this.f27103a.a();
        n(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(int i9) {
        h();
        this.f27113k.sendEmptyMessage(i9);
    }

    private void o() {
        if (this.f27109g) {
            return;
        }
        this.f27109g = true;
        this.f27103a.b();
    }

    void i() {
        if (this.f27109g) {
            this.f27103a.onFinished();
            this.f27109g = false;
        }
    }

    public boolean k(MotionEvent motionEvent) {
        int y10;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f27108f = motionEvent.getY();
            this.f27106d.forceFinished(true);
            h();
        } else if (action == 2 && (y10 = (int) (motionEvent.getY() - this.f27108f)) != 0) {
            o();
            this.f27103a.c(y10);
            this.f27108f = motionEvent.getY();
        }
        if (!this.f27105c.onTouchEvent(motionEvent) && motionEvent.getAction() == 1) {
            j();
        }
        return true;
    }

    public void l(int i9, int i10) {
        this.f27106d.forceFinished(true);
        this.f27107e = 0;
        this.f27106d.startScroll(0, 0, 0, i9, i10 != 0 ? i10 : 400);
        n(0);
        o();
    }

    public void m(Interpolator interpolator) {
        this.f27106d.forceFinished(true);
        this.f27106d = new Scroller(this.f27104b, interpolator);
    }

    public void p() {
        this.f27106d.forceFinished(true);
    }
}
