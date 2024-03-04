package com.guochao.faceshow.views.floatwindow;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.main.FloatingViewFragment;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes4.dex */
public class FloatView extends FrameLayout {
    private final View.OnLayoutChangeListener A;
    private boolean B;
    private final View.OnTouchListener C;
    private final View.OnTouchListener D;

    /* renamed from: a  reason: collision with root package name */
    private float f26959a;

    /* renamed from: b  reason: collision with root package name */
    private float f26960b;

    /* renamed from: c  reason: collision with root package name */
    private float f26961c;

    /* renamed from: d  reason: collision with root package name */
    private float f26962d;

    /* renamed from: e  reason: collision with root package name */
    private float f26963e;

    /* renamed from: f  reason: collision with root package name */
    private float f26964f;

    /* renamed from: g  reason: collision with root package name */
    private int f26965g;

    /* renamed from: h  reason: collision with root package name */
    private int f26966h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f26967i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f26968j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f26969k;

    /* renamed from: l  reason: collision with root package name */
    private int f26970l;

    /* renamed from: m  reason: collision with root package name */
    private int f26971m;

    /* renamed from: n  reason: collision with root package name */
    private ImageView f26972n;

    /* renamed from: o  reason: collision with root package name */
    private RelativeLayout f26973o;

    /* renamed from: p  reason: collision with root package name */
    private kb.b f26974p;

    /* renamed from: q  reason: collision with root package name */
    private kb.a f26975q;

    /* renamed from: r  reason: collision with root package name */
    private int f26976r;

    /* renamed from: s  reason: collision with root package name */
    private int f26977s;

    /* renamed from: t  reason: collision with root package name */
    private int f26978t;

    /* renamed from: u  reason: collision with root package name */
    private int f26979u;

    /* renamed from: v  reason: collision with root package name */
    private float f26980v;

    /* renamed from: w  reason: collision with root package name */
    private int f26981w;

    /* renamed from: x  reason: collision with root package name */
    private View f26982x;

    /* renamed from: y  reason: collision with root package name */
    private ImageView f26983y;

    /* renamed from: z  reason: collision with root package name */
    private Context f26984z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (FloatView.this.f26975q != null) {
                FloatView.this.f26975q.onClose();
            }
        }
    }

    /* loaded from: classes4.dex */
    class b implements View.OnLayoutChangeListener {
        b() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
            if (i11 == FloatView.this.f26965g && i12 == FloatView.this.f26966h) {
                return;
            }
            int width = FloatView.this.f26973o.getWidth();
            int height = FloatView.this.f26973o.getHeight();
            int i17 = FloatView.this.f26965g - width;
            int i18 = FloatView.this.f26966h - height;
            int i19 = FloatView.this.f26965g;
            int i20 = FloatView.this.f26966h;
            if (i17 < (-FloatView.this.f26981w)) {
                i17 = -FloatView.this.f26981w;
                i19 = i17 + width;
            }
            if (i18 < (-FloatView.this.f26981w)) {
                i18 = -FloatView.this.f26981w;
                i20 = i18 + height;
            }
            FloatView.this.f26973o.layout(i17, i18, i19, i20);
            FloatView.this.f26974p.f53664c = i17;
            FloatView.this.f26974p.f53665d = i18;
        }
    }

    /* loaded from: classes4.dex */
    class c implements View.OnTouchListener {
        c() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return FloatView.this.s(motionEvent);
        }
    }

    /* loaded from: classes4.dex */
    class d implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        float f26988a = 0.0f;

        /* renamed from: b  reason: collision with root package name */
        float f26989b = 0.0f;

        d() {
        }

        private void a(MotionEvent motionEvent) {
            FloatView.this.f26967i = true;
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            float f10 = rawX - this.f26988a;
            float f11 = rawY - this.f26989b;
            double sqrt = Math.sqrt((f10 * f10) + (f11 * f11));
            if (sqrt >= 5.0d) {
                int width = FloatView.this.f26973o.getWidth();
                if (rawY > this.f26989b && rawX > this.f26988a) {
                    if (width == FloatView.this.f26978t) {
                        return;
                    }
                    sqrt = -sqrt;
                } else if (width == FloatView.this.f26979u) {
                    return;
                }
                FloatView.this.v((int) (sqrt * Math.cos(45.0d)));
            }
            this.f26988a = rawX;
            this.f26989b = rawY;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                FloatView.this.f26967i = true;
                this.f26988a = motionEvent.getRawX();
                this.f26989b = motionEvent.getRawY();
                FloatView floatView = FloatView.this;
                floatView.f26965g = floatView.f26973o.getRight();
                FloatView floatView2 = FloatView.this;
                floatView2.f26966h = floatView2.f26973o.getBottom();
            } else if (action == 1) {
                FloatView.this.f26967i = false;
            } else if (action == 2) {
                FloatView.this.u();
                a(motionEvent);
            }
            return true;
        }
    }

    public FloatView(Context context) {
        super(context);
        this.f26965g = 0;
        this.f26966h = 0;
        this.f26967i = false;
        this.f26968j = false;
        this.f26969k = false;
        this.f26970l = 0;
        this.f26971m = 0;
        this.f26974p = null;
        this.f26980v = 1.73f;
        this.A = new b();
        this.B = false;
        this.C = new c();
        this.D = new d();
        this.f26984z = context;
        o();
    }

    private int n(int i9) {
        int i10 = this.f26979u;
        if (i9 > i10) {
            i9 = i10;
        }
        int i11 = this.f26978t;
        return i9 < i11 ? i11 : i9;
    }

    private void o() {
        p();
        q();
    }

    private void p() {
        this.f26984z = getContext();
        kb.b bVar = this.f26974p;
        this.f26981w = bVar.f53672k;
        this.f26976r = bVar.f53667f;
        this.f26977s = bVar.f53668g;
        this.f26979u = bVar.f53670i;
        this.f26978t = bVar.f53669h;
        this.f26980v = bVar.f53671j;
        int i9 = bVar.f53664c;
        this.f26970l = i9;
        int i10 = bVar.f53665d;
        this.f26971m = i10;
        this.f26965g = i9 + bVar.f53662a;
        this.f26966h = i10 + bVar.f53663b;
    }

    private void q() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_float_view, (ViewGroup) null);
        this.f26982x = inflate;
        this.f26973o = (RelativeLayout) inflate.findViewById(R.id.view_content);
        this.f26972n = (ImageView) this.f26982x.findViewById(R.id.halloween_gif);
        this.f26983y = (ImageView) this.f26982x.findViewById(R.id.clear_halloween);
        if (FloatingViewFragment.f20635g != null) {
            com.bumptech.glide.c.u(this.f26984z).r(FloatingViewFragment.f20635g.floatIconUrl).Q0(this.f26972n);
        }
        this.f26973o.setOnTouchListener(this.C);
        this.f26973o.addOnLayoutChangeListener(this.A);
        this.f26983y.setOnClickListener(new a());
        w(this.f26974p.f53666e, DensityUtil.dp2px(this.f26984z, 110.0f));
        addView(this.f26982x);
    }

    private boolean r() {
        float scaledTouchSlop = ViewConfiguration.get(this.f26984z).getScaledTouchSlop();
        return Math.abs(this.f26963e - this.f26961c) <= scaledTouchSlop && Math.abs(this.f26964f - this.f26962d) <= scaledTouchSlop;
    }

    private void t(int i9, int i10) {
        kb.b bVar = this.f26974p;
        bVar.f53664c = i9;
        bVar.f53665d = i10;
        this.f26965g = this.f26973o.getWidth() + i9;
        int height = this.f26973o.getHeight() + i10;
        this.f26966h = height;
        this.f26973o.layout(i9, i10, this.f26965g, height);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        if (this.f26968j) {
            return;
        }
        this.f26968j = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(int i9) {
        int n9 = n(this.f26973o.getWidth() + i9);
        w(n9, (int) (n9 * this.f26980v));
    }

    private void w(int i9, int i10) {
        RelativeLayout relativeLayout = this.f26973o;
        if (relativeLayout != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
            layoutParams.height = i10;
            layoutParams.width = i9;
            this.f26973o.setLayoutParams(layoutParams);
            kb.b bVar = this.f26974p;
            bVar.f53662a = i9;
            bVar.f53663b = i10;
        }
    }

    private synchronized void x() {
        int i9 = (int) (this.f26961c - this.f26959a);
        int i10 = (int) (this.f26962d - this.f26960b);
        int i11 = this.f26981w;
        if (i9 <= (-i11)) {
            i9 = -i11;
        }
        if (i10 <= (-i11)) {
            i10 = -i11;
        }
        int width = this.f26976r - this.f26973o.getWidth();
        if (i9 >= width) {
            i9 = width;
        }
        int height = this.f26973o.getHeight();
        int i12 = this.f26977s - ((height <= 100 || height >= 200) ? (height <= 200 || height >= 300) ? height - 200 : height - 150 : height - 100);
        if (i10 >= i12) {
            i10 = i12;
        }
        if (i9 >= width) {
            i9 = width - 1;
        }
        t(i9, i10);
    }

    public int getContentViewWidth() {
        RelativeLayout relativeLayout = this.f26973o;
        return relativeLayout != null ? relativeLayout.getWidth() : this.f26978t;
    }

    public kb.b getParams() {
        this.f26974p.f53666e = getContentViewWidth();
        return this.f26974p;
    }

    public ImageView getVideoViewWrap() {
        return this.f26972n;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        if (this.f26969k) {
            return;
        }
        RelativeLayout relativeLayout = this.f26973o;
        int i13 = this.f26970l;
        int i14 = this.f26971m;
        kb.b bVar = this.f26974p;
        relativeLayout.layout(i13, i14, bVar.f53662a + i13, bVar.f53663b + i14);
        this.f26969k = true;
    }

    public boolean s(MotionEvent motionEvent) {
        kb.a aVar;
        if (this.f26967i) {
            return true;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            u();
            this.B = false;
            this.f26959a = motionEvent.getX();
            this.f26960b = motionEvent.getY();
            Rect rect = new Rect();
            this.f26982x.getGlobalVisibleRect(rect);
            if (!rect.contains((int) this.f26959a, (int) this.f26960b)) {
                return false;
            }
            this.f26963e = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            this.f26964f = rawY;
            this.f26961c = this.f26963e;
            this.f26962d = rawY;
        } else if (action == 1) {
            if (r() && (aVar = this.f26975q) != null) {
                aVar.a();
            }
            this.B = false;
        } else if (action == 2) {
            u();
            this.f26961c = motionEvent.getRawX();
            this.f26962d = motionEvent.getRawY();
            if (!this.B) {
                this.B = !r();
            } else {
                x();
            }
        }
        return true;
    }

    public void setFloatViewListener(kb.a aVar) {
        this.f26975q = aVar;
    }

    public FloatView(@NonNull Context context, kb.b bVar) {
        super(context);
        this.f26965g = 0;
        this.f26966h = 0;
        this.f26967i = false;
        this.f26968j = false;
        this.f26969k = false;
        this.f26970l = 0;
        this.f26971m = 0;
        this.f26974p = null;
        this.f26980v = 1.73f;
        this.A = new b();
        this.B = false;
        this.C = new c();
        this.D = new d();
        this.f26984z = context;
        this.f26974p = bVar;
        o();
    }
}
