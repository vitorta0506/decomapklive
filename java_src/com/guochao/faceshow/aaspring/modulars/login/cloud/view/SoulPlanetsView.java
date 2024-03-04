package com.guochao.faceshow.aaspring.modulars.login.cloud.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import com.guochao.faceshow.R$styleable;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import k9.b;
/* loaded from: classes3.dex */
public class SoulPlanetsView extends ViewGroup implements Runnable, b.a {
    private float A;

    /* renamed from: a  reason: collision with root package name */
    public int f20385a;

    /* renamed from: b  reason: collision with root package name */
    private float f20386b;

    /* renamed from: c  reason: collision with root package name */
    private l9.a f20387c;

    /* renamed from: d  reason: collision with root package name */
    private float f20388d;

    /* renamed from: e  reason: collision with root package name */
    private float f20389e;

    /* renamed from: f  reason: collision with root package name */
    private float f20390f;

    /* renamed from: g  reason: collision with root package name */
    private float f20391g;

    /* renamed from: h  reason: collision with root package name */
    private float f20392h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f20393i;

    /* renamed from: j  reason: collision with root package name */
    private float f20394j;

    /* renamed from: k  reason: collision with root package name */
    private float[] f20395k;

    /* renamed from: l  reason: collision with root package name */
    private float[] f20396l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f20397m;

    /* renamed from: n  reason: collision with root package name */
    private ViewGroup.MarginLayoutParams f20398n;

    /* renamed from: o  reason: collision with root package name */
    private int f20399o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f20400p;

    /* renamed from: q  reason: collision with root package name */
    private Handler f20401q;

    /* renamed from: r  reason: collision with root package name */
    private k9.b f20402r;

    /* renamed from: s  reason: collision with root package name */
    private c f20403s;

    /* renamed from: t  reason: collision with root package name */
    private float f20404t;

    /* renamed from: u  reason: collision with root package name */
    private float f20405u;

    /* renamed from: v  reason: collision with root package name */
    private float f20406v;

    /* renamed from: w  reason: collision with root package name */
    private float f20407w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f20408x;

    /* renamed from: y  reason: collision with root package name */
    private float f20409y;

    /* renamed from: z  reason: collision with root package name */
    private float f20410z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SoulPlanetsView soulPlanetsView = SoulPlanetsView.this;
            soulPlanetsView.f20390f = (soulPlanetsView.getRight() - SoulPlanetsView.this.getLeft()) / 2.0f;
            SoulPlanetsView soulPlanetsView2 = SoulPlanetsView.this;
            soulPlanetsView2.f20391g = (soulPlanetsView2.getBottom() - SoulPlanetsView.this.getTop()) / 2.0f;
            SoulPlanetsView soulPlanetsView3 = SoulPlanetsView.this;
            soulPlanetsView3.f20392h = Math.min(soulPlanetsView3.f20390f, SoulPlanetsView.this.f20391g) * SoulPlanetsView.this.f20394j;
            SoulPlanetsView.this.f20387c.m((int) SoulPlanetsView.this.f20392h);
            SoulPlanetsView.this.f20387c.o(SoulPlanetsView.this.f20396l);
            SoulPlanetsView.this.f20387c.n(SoulPlanetsView.this.f20395k);
            SoulPlanetsView.this.f20387c.b();
            long currentTimeMillis = System.currentTimeMillis();
            for (int i9 = 0; i9 < SoulPlanetsView.this.f20402r.getCount(); i9++) {
                l9.b bVar = new l9.b(SoulPlanetsView.this.f20402r.getPopularity(i9));
                View view = SoulPlanetsView.this.f20402r.getView(SoulPlanetsView.this.getContext(), i9, SoulPlanetsView.this);
                if (view != null) {
                    bVar.r(view);
                    SoulPlanetsView.this.f20387c.a(bVar);
                    SoulPlanetsView.this.r(view, i9);
                    ViewParent parent = view.getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).removeView(view);
                    }
                    SoulPlanetsView.this.addView(view);
                }
            }
            SoulPlanetsView.this.f20387c.c(true);
            SoulPlanetsView.this.f20387c.k(SoulPlanetsView.this.f20388d);
            SoulPlanetsView.this.f20387c.l(SoulPlanetsView.this.f20389e);
            SoulPlanetsView.this.f20387c.r();
            LogUtils.i("SoulPlanetsView", "用时：" + (System.currentTimeMillis() - currentTimeMillis) + " ms");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f20412a;

        b(int i9) {
            this.f20412a = i9;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SoulPlanetsView.this.f20403s.onItemClick(SoulPlanetsView.this, view, this.f20412a);
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void onItemClick(ViewGroup viewGroup, View view, int i9);
    }

    public SoulPlanetsView(Context context) {
        super(context);
        this.f20386b = 8.0f;
        this.f20394j = 0.9f;
        this.f20395k = new float[]{1.0f, 0.0f, 0.0f, 1.0f};
        this.f20396l = new float[]{0.9412f, 0.7686f, 0.2f, 1.0f};
        this.f20400p = false;
        this.f20401q = new Handler(Looper.getMainLooper());
        this.f20402r = new k9.a();
        u(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(View view, int i9) {
        if (view.hasOnClickListeners() || this.f20403s == null) {
            return;
        }
        view.setOnClickListener(new b(i9));
    }

    private float s(float f10, float f11) {
        return (float) Math.sqrt((f10 * f10) + (f11 * f11));
    }

    private boolean t(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        if (pointerCount > 1) {
            this.f20408x = true;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked == 5 && motionEvent.getActionIndex() == 1) {
                            this.f20406v = getScaleX();
                            this.f20407w = s(motionEvent.getX(0) - motionEvent.getX(1), motionEvent.getY(0) - motionEvent.getY(1));
                            return true;
                        }
                    }
                } else if (pointerCount == 1 && !this.f20408x) {
                    float x10 = motionEvent.getX() - this.f20404t;
                    float y10 = motionEvent.getY() - this.f20405u;
                    if (w(x10, y10)) {
                        float f10 = this.f20392h;
                        float f11 = this.f20386b;
                        float f12 = (y10 / f10) * 400.0f * f11 * 0.5f;
                        float f13 = ((-x10) / f10) * 400.0f * f11 * 0.5f;
                        this.f20388d = f12 / 5.0f;
                        this.f20389e = f13 / 5.0f;
                        x(f12 / 3.0f, f13 / 3.0f);
                        this.f20404t = motionEvent.getX();
                        this.f20405u = motionEvent.getY();
                    }
                    return w(this.f20404t - this.f20409y, this.f20405u - this.f20410z);
                } else if (pointerCount == 2) {
                    float s10 = s(motionEvent.getX(0) - motionEvent.getX(1), motionEvent.getY(0) - motionEvent.getY(1));
                    float f14 = (((s10 - this.f20407w) / (s10 * 2.0f)) + 1.0f) * this.f20406v;
                    if (f14 > 1.3f) {
                        f14 = 1.3f;
                    }
                    float f15 = f14 >= 1.0f ? f14 : 1.0f;
                    setScaleX(f15);
                    setScaleY(f15);
                    return true;
                }
            }
            this.f20408x = false;
            this.f20400p = false;
        } else {
            this.f20400p = true;
            this.f20404t = motionEvent.getX();
            float y11 = motionEvent.getY();
            this.f20405u = y11;
            this.f20409y = this.f20404t;
            this.f20410z = y11;
        }
        return false;
    }

    private void u(Context context, AttributeSet attributeSet) {
        setFocusableInTouchMode(true);
        this.f20387c = new l9.a();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SoulPlanetsView);
            this.f20385a = obtainStyledAttributes.getInteger(0, 1);
            setManualScroll(obtainStyledAttributes.getBoolean(3, true));
            this.f20388d = obtainStyledAttributes.getFloat(6, 0.1f);
            this.f20389e = obtainStyledAttributes.getFloat(7, 0.1f);
            setRadiusPercent(obtainStyledAttributes.getFloat(4, this.f20394j));
            setScrollSpeed(obtainStyledAttributes.getFloat(5, 1.0f));
            obtainStyledAttributes.recycle();
        }
        this.f20385a = 1;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        Point point = new Point();
        if (windowManager != null) {
            windowManager.getDefaultDisplay().getSize(point);
        }
        this.f20399o = Math.min(point.y, point.x);
    }

    private boolean w(float f10, float f11) {
        float scaledTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        return Math.abs(f10) > scaledTouchSlop || Math.abs(f11) > scaledTouchSlop;
    }

    private void x(float f10, float f11) {
        l9.a aVar = this.f20387c;
        if (aVar != null) {
            aVar.k(f10);
            this.f20387c.l(f11);
            this.f20387c.r();
        }
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            l9.b d10 = this.f20387c.d(i9);
            View i10 = d10.i();
            if (i10 != null && i10.getVisibility() != 8) {
                this.f20402r.onThemeColorChanged(i10, d10.a());
                if (d10.h() < 1.0f) {
                    i10.setScaleX(d10.h());
                    i10.setScaleY(d10.h());
                    i10.setZ(-1.0f);
                } else {
                    i10.setZ(1.0f);
                }
                i10.setAlpha(d10.h());
                int b10 = ((int) (this.f20390f + d10.b())) - (i10.getMeasuredWidth() / 2);
                int c10 = ((int) (this.f20391g + d10.c())) - (i10.getMeasuredHeight() / 2);
                int[] iArr = (int[]) i10.getTag();
                if (iArr != null && iArr.length > 0) {
                    i10.setTranslationX(b10 - iArr[0]);
                    i10.setTranslationY(c10 - iArr[1]);
                    if (Math.abs(f10) <= this.f20386b && Math.abs(f11) <= this.f20386b) {
                        i10.invalidate();
                    }
                }
            }
        }
    }

    private void y() {
        removeAllViews();
        for (l9.b bVar : this.f20387c.g()) {
            addView(bVar.i());
        }
    }

    public int getAutoScrollMode() {
        return this.f20385a;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f20401q.post(this);
    }

    @Override // k9.b.a
    public void onChange() {
        v();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f20401q.removeCallbacksAndMessages(null);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f20397m) {
            return t(motionEvent);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        if (this.f20393i) {
            return;
        }
        for (int i13 = 0; i13 < getChildCount(); i13++) {
            View childAt = getChildAt(i13);
            l9.b d10 = this.f20387c.d(i13);
            if (childAt != null && childAt.getVisibility() != 8) {
                this.f20402r.onThemeColorChanged(childAt, d10.a());
                if (d10.h() < 1.0f) {
                    childAt.setScaleX(d10.h());
                    childAt.setScaleY(d10.h());
                }
                childAt.setAlpha(d10.h());
                int b10 = ((int) (this.f20390f + d10.b())) - (childAt.getMeasuredWidth() / 2);
                int c10 = ((int) (this.f20391g + d10.c())) - (childAt.getMeasuredHeight() / 2);
                childAt.layout(b10, c10, childAt.getMeasuredWidth() + b10, childAt.getMeasuredHeight() + c10);
                childAt.setTag(new int[]{b10, c10});
            }
        }
        if (getChildCount() <= 0 || this.A == 0.0f) {
            return;
        }
        this.f20393i = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        int size = View.MeasureSpec.getSize(i9);
        int size2 = View.MeasureSpec.getSize(i10);
        int mode = View.MeasureSpec.getMode(i9);
        int mode2 = View.MeasureSpec.getMode(i10);
        if (this.f20398n == null) {
            this.f20398n = (ViewGroup.MarginLayoutParams) getLayoutParams();
        }
        if (mode != 1073741824) {
            int i11 = this.f20399o;
            ViewGroup.MarginLayoutParams marginLayoutParams = this.f20398n;
            size = (i11 - marginLayoutParams.leftMargin) - marginLayoutParams.rightMargin;
        }
        if (mode2 != 1073741824) {
            int i12 = this.f20399o;
            ViewGroup.MarginLayoutParams marginLayoutParams2 = this.f20398n;
            size2 = (i12 - marginLayoutParams2.leftMargin) - marginLayoutParams2.rightMargin;
        }
        setMeasuredDimension(size, size2);
        measureChildren(0, 0);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f20397m) {
            t(motionEvent);
            return true;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (this.f20397m) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            float f10 = this.f20386b;
            float f11 = y10 * f10 * 10.0f;
            this.f20388d = f11;
            this.f20389e = (-x10) * f10 * 10.0f;
            this.f20387c.k(f11);
            this.f20387c.l(this.f20389e);
            this.f20387c.r();
            y();
            return true;
        }
        return true;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i9;
        if (!this.f20400p && (i9 = this.f20385a) != 0) {
            if (i9 == 1) {
                if (Math.abs(this.f20388d) > 0.2f) {
                    float f10 = this.f20388d;
                    this.f20388d = f10 - (f10 * 0.04f);
                }
                if (Math.abs(this.f20389e) > 0.2f) {
                    float f11 = this.f20389e;
                    this.f20389e = f11 - (0.04f * f11);
                }
            }
            x(this.f20388d, this.f20389e);
        }
        this.f20401q.removeCallbacksAndMessages(null);
        float f12 = this.A;
        this.f20401q.postDelayed(this, f12 != 0.0f ? 1000.0f / f12 : 16L);
    }

    public final void setAdapter(k9.b bVar) {
        this.f20402r = bVar;
        bVar.setOnDataSetChangeListener(this);
        onChange();
    }

    public void setAutoScrollMode(int i9) {
        this.f20385a = i9;
    }

    public void setLayout(boolean z10) {
        this.f20393i = z10;
    }

    public void setManualScroll(boolean z10) {
        this.f20397m = z10;
    }

    public void setOnTagClickListener(c cVar) {
        this.f20403s = cVar;
    }

    public void setRadiusPercent(float f10) {
        if (f10 <= 1.0f && f10 >= 0.0f) {
            if (f10 != this.f20394j) {
                this.f20394j = f10;
                onChange();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Percent value not in range 0 to 1.");
    }

    public void setRefreshRate(float f10) {
        this.A = f10;
    }

    public void setScrollSpeed(float f10) {
        this.f20386b = f10;
    }

    public void v() {
        post(new a());
    }

    public SoulPlanetsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f20386b = 8.0f;
        this.f20394j = 0.9f;
        this.f20395k = new float[]{1.0f, 0.0f, 0.0f, 1.0f};
        this.f20396l = new float[]{0.9412f, 0.7686f, 0.2f, 1.0f};
        this.f20400p = false;
        this.f20401q = new Handler(Looper.getMainLooper());
        this.f20402r = new k9.a();
        u(context, attributeSet);
    }

    public SoulPlanetsView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f20386b = 8.0f;
        this.f20394j = 0.9f;
        this.f20395k = new float[]{1.0f, 0.0f, 0.0f, 1.0f};
        this.f20396l = new float[]{0.9412f, 0.7686f, 0.2f, 1.0f};
        this.f20400p = false;
        this.f20401q = new Handler(Looper.getMainLooper());
        this.f20402r = new k9.a();
        u(context, attributeSet);
    }
}
