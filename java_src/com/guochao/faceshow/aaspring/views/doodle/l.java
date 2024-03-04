package com.guochao.faceshow.aaspring.views.doodle;

import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final Context f24328a;

    /* renamed from: b  reason: collision with root package name */
    private final b f24329b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f24330c;

    /* renamed from: d  reason: collision with root package name */
    private float f24331d;

    /* renamed from: e  reason: collision with root package name */
    private float f24332e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f24333f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f24334g;

    /* renamed from: h  reason: collision with root package name */
    private float f24335h;

    /* renamed from: i  reason: collision with root package name */
    private float f24336i;

    /* renamed from: j  reason: collision with root package name */
    private float f24337j;

    /* renamed from: k  reason: collision with root package name */
    private float f24338k;

    /* renamed from: l  reason: collision with root package name */
    private float f24339l;

    /* renamed from: m  reason: collision with root package name */
    private float f24340m;

    /* renamed from: n  reason: collision with root package name */
    private float f24341n;

    /* renamed from: o  reason: collision with root package name */
    private long f24342o;

    /* renamed from: p  reason: collision with root package name */
    private long f24343p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f24344q;

    /* renamed from: r  reason: collision with root package name */
    private int f24345r;

    /* renamed from: s  reason: collision with root package name */
    private int f24346s;

    /* renamed from: t  reason: collision with root package name */
    private float f24347t;

    /* renamed from: u  reason: collision with root package name */
    private float f24348u;

    /* renamed from: v  reason: collision with root package name */
    private int f24349v;

    /* renamed from: w  reason: collision with root package name */
    private GestureDetector f24350w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f24351x;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            l.this.f24347t = motionEvent.getX();
            l.this.f24348u = motionEvent.getY();
            l.this.f24349v = 1;
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        boolean a(l lVar);

        void b(l lVar);

        boolean c(l lVar);
    }

    public l(Context context, b bVar) {
        this(context, bVar, null);
    }

    private boolean g() {
        return this.f24349v != 0;
    }

    public float d() {
        return this.f24331d;
    }

    public float e() {
        return this.f24332e;
    }

    public float f() {
        if (g()) {
            boolean z10 = this.f24351x;
            boolean z11 = (z10 && this.f24335h < this.f24336i) || (!z10 && this.f24335h > this.f24336i);
            float abs = Math.abs(1.0f - (this.f24335h / this.f24336i)) * 0.5f;
            if (this.f24336i <= 0.0f) {
                return 1.0f;
            }
            return z11 ? 1.0f + abs : 1.0f - abs;
        }
        float f10 = this.f24336i;
        if (f10 > 0.0f) {
            return this.f24335h / f10;
        }
        return 1.0f;
    }

    public boolean h() {
        return this.f24344q;
    }

    public boolean i(MotionEvent motionEvent) {
        float f10;
        float f11;
        this.f24342o = motionEvent.getEventTime();
        int actionMasked = motionEvent.getActionMasked();
        if (this.f24333f) {
            this.f24350w.onTouchEvent(motionEvent);
        }
        int pointerCount = motionEvent.getPointerCount();
        boolean z10 = (motionEvent.getButtonState() & 32) != 0;
        boolean z11 = this.f24349v == 2 && !z10;
        boolean z12 = actionMasked == 1 || actionMasked == 3 || z11;
        float f12 = 0.0f;
        if (actionMasked == 0 || z12) {
            if (this.f24344q) {
                this.f24329b.b(this);
                this.f24344q = false;
                this.f24337j = 0.0f;
                this.f24349v = 0;
            } else if (g() && z12) {
                this.f24344q = false;
                this.f24337j = 0.0f;
                this.f24349v = 0;
            }
            if (z12) {
                return true;
            }
        }
        if (!this.f24344q && this.f24334g && !g() && !z12 && z10) {
            this.f24347t = motionEvent.getX();
            this.f24348u = motionEvent.getY();
            this.f24349v = 2;
            this.f24337j = 0.0f;
        }
        boolean z13 = actionMasked == 0 || actionMasked == 6 || actionMasked == 5 || z11;
        boolean z14 = actionMasked == 6;
        int actionIndex = z14 ? motionEvent.getActionIndex() : -1;
        int i9 = z14 ? pointerCount - 1 : pointerCount;
        if (g()) {
            f11 = this.f24347t;
            f10 = this.f24348u;
            if (motionEvent.getY() < f10) {
                this.f24351x = true;
            } else {
                this.f24351x = false;
            }
        } else {
            float f13 = 0.0f;
            float f14 = 0.0f;
            for (int i10 = 0; i10 < pointerCount; i10++) {
                if (actionIndex != i10) {
                    f13 += motionEvent.getX(i10);
                    f14 += motionEvent.getY(i10);
                }
            }
            float f15 = i9;
            float f16 = f13 / f15;
            f10 = f14 / f15;
            f11 = f16;
        }
        float f17 = 0.0f;
        for (int i11 = 0; i11 < pointerCount; i11++) {
            if (actionIndex != i11) {
                f12 += Math.abs(motionEvent.getX(i11) - f11);
                f17 += Math.abs(motionEvent.getY(i11) - f10);
            }
        }
        float f18 = i9;
        float f19 = (f12 / f18) * 2.0f;
        float f20 = (f17 / f18) * 2.0f;
        float hypot = g() ? f20 : (float) Math.hypot(f19, f20);
        boolean z15 = this.f24344q;
        this.f24331d = f11;
        this.f24332e = f10;
        if (!g() && this.f24344q && (hypot < this.f24346s || z13)) {
            this.f24329b.b(this);
            this.f24344q = false;
            this.f24337j = hypot;
        }
        if (z13) {
            this.f24338k = f19;
            this.f24340m = f19;
            this.f24339l = f20;
            this.f24341n = f20;
            this.f24335h = hypot;
            this.f24336i = hypot;
            this.f24337j = hypot;
        }
        int i12 = g() ? this.f24345r : this.f24346s;
        if (!this.f24344q && hypot >= i12 && (z15 || Math.abs(hypot - this.f24337j) > this.f24345r)) {
            this.f24338k = f19;
            this.f24340m = f19;
            this.f24339l = f20;
            this.f24341n = f20;
            this.f24335h = hypot;
            this.f24336i = hypot;
            this.f24343p = this.f24342o;
            this.f24344q = this.f24329b.c(this);
        }
        if (actionMasked == 2) {
            this.f24338k = f19;
            this.f24339l = f20;
            this.f24335h = hypot;
            if (this.f24344q ? this.f24329b.a(this) : true) {
                this.f24340m = this.f24338k;
                this.f24341n = this.f24339l;
                this.f24336i = this.f24335h;
                this.f24343p = this.f24342o;
            }
        }
        return true;
    }

    public void j(int i9) {
        this.f24346s = i9;
    }

    public void k(boolean z10) {
        this.f24333f = z10;
        if (z10 && this.f24350w == null) {
            this.f24350w = new GestureDetector(this.f24328a, new a(), this.f24330c);
        }
    }

    public void l(int i9) {
        this.f24345r = i9;
    }

    public void m(boolean z10) {
        this.f24334g = z10;
    }

    public l(Context context, b bVar, Handler handler) {
        this.f24349v = 0;
        this.f24328a = context;
        this.f24329b = bVar;
        this.f24345r = ViewConfiguration.get(context).getScaledTouchSlop() * 2;
        this.f24346s = context.getResources().getDimensionPixelSize(R.dimen.androids_api27_config_minScalingSpan);
        this.f24330c = handler;
        int i9 = context.getApplicationInfo().targetSdkVersion;
        if (i9 > 18) {
            k(true);
        }
        if (i9 > 22) {
            m(true);
        }
    }
}
