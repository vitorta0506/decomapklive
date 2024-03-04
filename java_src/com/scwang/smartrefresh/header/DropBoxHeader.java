package com.scwang.smartrefresh.header;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.animation.AccelerateInterpolator;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.ColorUtils;
import com.scwang.smartrefresh.layout.constant.RefreshState;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;
import wd.g;
import wd.i;
import wd.j;
/* loaded from: classes4.dex */
public class DropBoxHeader extends InternalAbstract implements g {

    /* renamed from: r  reason: collision with root package name */
    protected static String[] f29035r = {"M3 2h18v20h-18z", "m4,1c-1.105,0 -2,0.895 -2,2v3,11 3,1c0,1.105 0.895,2 2,2h2,12 2c1.105,0 2,-0.895 2,-2v-1,-3 -11,-3c0,-1.105 -0.895,-2 -2,-2h-2,-12 -2zM3.5,3h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,3h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,6h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,6h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,9h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,9h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,12h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,12h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,15h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,15h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,18h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,18h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5z"};

    /* renamed from: s  reason: collision with root package name */
    protected static int[] f29036s = {-1249039, -245496};

    /* renamed from: t  reason: collision with root package name */
    protected static String[] f29037t = {"M49,16.5l-14,-14l-27,0l0,53l41,0z", "m16,23.5h25c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1L16,21.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1z", "m16,15.5h10c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1L16,13.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1z", "M41,29.5L16,29.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1h25c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1z", "M41,37.5L16,37.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1h25c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1z", "M41,45.5L16,45.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1h25c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1z", "M49,16.5l-14,-14l0,14z"};

    /* renamed from: u  reason: collision with root package name */
    protected static int[] f29038u = {-76695, -2773417};

    /* renamed from: v  reason: collision with root package name */
    protected static String[] f29039v = {"M6.021,2.188L6.021,11.362C5.46,11.327 4.843,11.414 4.229,11.663C2.624,12.312 1.696,13.729 2.155,14.825C2.62,15.924 4.294,16.284 5.898,15.634C7.131,15.134 7.856,14.184 7.965,13.272L7.958,4.387L15.02,3.028L15.02,9.406C14.422,9.343 13.746,9.432 13.076,9.703C11.471,10.353 10.544,11.77 11.004,12.866C11.467,13.964 13.141,14.325 14.746,13.675C15.979,13.174 16.836,12.224 16.947,11.313L16.958,0.002L6.021,2.188L6.021,2.188Z"};

    /* renamed from: w  reason: collision with root package name */
    protected static int[] f29040w = {-6760607};

    /* renamed from: d  reason: collision with root package name */
    protected Path f29041d;

    /* renamed from: e  reason: collision with root package name */
    protected Paint f29042e;

    /* renamed from: f  reason: collision with root package name */
    protected e f29043f;

    /* renamed from: g  reason: collision with root package name */
    protected int f29044g;

    /* renamed from: h  reason: collision with root package name */
    protected int f29045h;

    /* renamed from: i  reason: collision with root package name */
    protected boolean f29046i;

    /* renamed from: j  reason: collision with root package name */
    protected Drawable f29047j;

    /* renamed from: k  reason: collision with root package name */
    protected Drawable f29048k;

    /* renamed from: l  reason: collision with root package name */
    protected Drawable f29049l;

    /* renamed from: m  reason: collision with root package name */
    protected float f29050m;

    /* renamed from: n  reason: collision with root package name */
    protected float f29051n;

    /* renamed from: o  reason: collision with root package name */
    protected ValueAnimator f29052o;

    /* renamed from: p  reason: collision with root package name */
    protected ValueAnimator f29053p;

    /* renamed from: q  reason: collision with root package name */
    protected RefreshState f29054q;

    /* loaded from: classes4.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            DropBoxHeader dropBoxHeader = DropBoxHeader.this;
            dropBoxHeader.f29051n = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            dropBoxHeader.invalidate();
        }
    }

    /* loaded from: classes4.dex */
    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            DropBoxHeader dropBoxHeader = DropBoxHeader.this;
            if (dropBoxHeader.f29054q == RefreshState.Refreshing) {
                ValueAnimator valueAnimator = dropBoxHeader.f29053p;
                if (valueAnimator != null) {
                    valueAnimator.start();
                    return;
                }
                return;
            }
            dropBoxHeader.f29050m = 0.0f;
        }
    }

    /* loaded from: classes4.dex */
    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            DropBoxHeader dropBoxHeader = DropBoxHeader.this;
            float f10 = dropBoxHeader.f29050m;
            if (f10 < 1.0f || f10 >= 3.0f) {
                dropBoxHeader.f29050m = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            } else if (f10 < 2.0f) {
                dropBoxHeader.f29050m = ((Float) valueAnimator.getAnimatedValue()).floatValue() + 1.0f;
            } else if (f10 < 3.0f) {
                dropBoxHeader.f29050m = ((Float) valueAnimator.getAnimatedValue()).floatValue() + 2.0f;
                DropBoxHeader dropBoxHeader2 = DropBoxHeader.this;
                if (dropBoxHeader2.f29050m == 3.0f) {
                    dropBoxHeader2.f29046i = true;
                }
            }
            DropBoxHeader.this.invalidate();
        }
    }

    /* loaded from: classes4.dex */
    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ValueAnimator valueAnimator = DropBoxHeader.this.f29052o;
            if (valueAnimator != null) {
                valueAnimator.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        int f29059a;

        /* renamed from: b  reason: collision with root package name */
        int f29060b;

        /* renamed from: c  reason: collision with root package name */
        int f29061c;

        /* renamed from: d  reason: collision with root package name */
        int f29062d;

        /* renamed from: e  reason: collision with root package name */
        int f29063e;

        /* renamed from: f  reason: collision with root package name */
        int f29064f;

        /* renamed from: g  reason: collision with root package name */
        int f29065g;

        /* renamed from: h  reason: collision with root package name */
        int f29066h;

        /* renamed from: i  reason: collision with root package name */
        int f29067i;

        private e() {
        }

        /* synthetic */ e(a aVar) {
            this();
        }

        e a(int i9, int i10, int i11, int i12) {
            this.f29067i = i11;
            int i13 = i9 / 2;
            this.f29059a = i13;
            int i14 = i10 - i12;
            this.f29061c = i14;
            this.f29062d = i14 - (i11 * 2);
            int sin = i13 - ((int) (i11 * Math.sin(1.0471975511965976d)));
            this.f29063e = sin;
            int i15 = i11 / 2;
            this.f29064f = this.f29062d + i15;
            int i16 = this.f29061c;
            this.f29065g = i16 - i15;
            this.f29066h = i9 - sin;
            this.f29060b = i16 - i11;
            return this;
        }
    }

    public DropBoxHeader(Context context) {
        this(context, null);
    }

    @NonNull
    private e r(int i9, int i10, int i11) {
        return this.f29043f.a(i9, i10, i11, i11 / 2);
    }

    @NonNull
    private Path s(e eVar) {
        this.f29041d.reset();
        this.f29041d.moveTo(eVar.f29063e, eVar.f29065g);
        this.f29041d.lineTo(eVar.f29059a, eVar.f29061c);
        this.f29041d.lineTo(eVar.f29066h, eVar.f29065g);
        Path path = this.f29041d;
        int i9 = eVar.f29066h;
        path.quadTo(i9 + ((eVar.f29067i / 2) * this.f29051n), eVar.f29060b, i9, eVar.f29064f);
        this.f29041d.lineTo(eVar.f29059a, eVar.f29062d);
        this.f29041d.lineTo(eVar.f29063e, eVar.f29064f);
        Path path2 = this.f29041d;
        int i10 = eVar.f29063e;
        path2.quadTo(i10 - ((eVar.f29067i / 2) * this.f29051n), eVar.f29060b, i10, eVar.f29065g);
        this.f29041d.close();
        return this.f29041d;
    }

    @NonNull
    private Path t(e eVar) {
        this.f29041d.reset();
        double d10 = this.f29051n * 1.2566370614359172d;
        float f10 = ((eVar.f29059a - eVar.f29063e) * 4) / 5;
        double d11 = 1.0471975511965976d - (d10 / 2.0d);
        float sin = ((float) Math.sin(d11)) * f10;
        float cos = ((float) Math.cos(d11)) * f10;
        this.f29041d.moveTo(eVar.f29063e, eVar.f29064f);
        this.f29041d.lineTo(eVar.f29059a, eVar.f29062d);
        this.f29041d.lineTo(eVar.f29059a - sin, eVar.f29062d - cos);
        this.f29041d.lineTo(eVar.f29063e - sin, eVar.f29064f - cos);
        this.f29041d.close();
        double d12 = d10 + 1.0471975511965976d;
        float sin2 = ((float) Math.sin(d12)) * f10;
        float cos2 = ((float) Math.cos(d12)) * f10;
        this.f29041d.moveTo(eVar.f29063e, eVar.f29064f);
        this.f29041d.lineTo(eVar.f29059a, (eVar.f29061c + eVar.f29062d) / 2);
        this.f29041d.lineTo(eVar.f29059a - sin2, ((eVar.f29061c + eVar.f29062d) / 2) + cos2);
        this.f29041d.lineTo(eVar.f29063e - sin2, eVar.f29064f + cos2);
        this.f29041d.close();
        float sin3 = ((float) Math.sin(d11)) * f10;
        float cos3 = ((float) Math.cos(d11)) * f10;
        this.f29041d.moveTo(eVar.f29066h, eVar.f29064f);
        this.f29041d.lineTo(eVar.f29059a, eVar.f29062d);
        this.f29041d.lineTo(eVar.f29059a + sin3, eVar.f29062d - cos3);
        this.f29041d.lineTo(eVar.f29066h + sin3, eVar.f29064f - cos3);
        this.f29041d.close();
        float sin4 = ((float) Math.sin(d12)) * f10;
        float cos4 = f10 * ((float) Math.cos(d12));
        this.f29041d.moveTo(eVar.f29066h, eVar.f29064f);
        this.f29041d.lineTo(eVar.f29059a, (eVar.f29061c + eVar.f29062d) / 2);
        this.f29041d.lineTo(eVar.f29059a + sin4, ((eVar.f29061c + eVar.f29062d) / 2) + cos4);
        this.f29041d.lineTo(eVar.f29066h + sin4, eVar.f29064f + cos4);
        this.f29041d.close();
        return this.f29041d;
    }

    @NonNull
    private Path u(e eVar, int i9) {
        this.f29041d.reset();
        this.f29041d.lineTo(0.0f, eVar.f29064f);
        this.f29041d.lineTo(eVar.f29063e, eVar.f29064f);
        this.f29041d.lineTo(eVar.f29059a, eVar.f29060b);
        this.f29041d.lineTo(eVar.f29066h, eVar.f29064f);
        float f10 = i9;
        this.f29041d.lineTo(f10, eVar.f29064f);
        this.f29041d.lineTo(f10, 0.0f);
        this.f29041d.close();
        return this.f29041d;
    }

    private int v() {
        return this.f29045h / 5;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public int c(@NonNull j jVar, boolean z10) {
        this.f29050m = 0.0f;
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        e r10 = r(width, getHeight(), v());
        this.f29042e.setColor(ColorUtils.setAlphaComponent(this.f29044g, 150));
        canvas.drawPath(s(r10), this.f29042e);
        this.f29042e.setColor(this.f29044g);
        canvas.drawPath(t(r10), this.f29042e);
        if (isInEditMode()) {
            this.f29050m = 2.5f;
        }
        if (this.f29050m > 0.0f) {
            canvas.clipPath(u(r10, width));
            float min = Math.min(this.f29050m, 1.0f);
            Rect bounds = this.f29047j.getBounds();
            int i9 = width / 2;
            bounds.offsetTo(i9 - (bounds.width() / 2), ((int) (((r10.f29060b - (bounds.height() / 2)) + bounds.height()) * min)) - bounds.height());
            this.f29047j.draw(canvas);
            float min2 = Math.min(Math.max(this.f29050m - 1.0f, 0.0f), 1.0f);
            Rect bounds2 = this.f29048k.getBounds();
            bounds2.offsetTo(i9 - (bounds2.width() / 2), ((int) (((r10.f29060b - (bounds2.height() / 2)) + bounds2.height()) * min2)) - bounds2.height());
            this.f29048k.draw(canvas);
            float min3 = Math.min(Math.max(this.f29050m - 2.0f, 0.0f), 1.0f);
            Rect bounds3 = this.f29049l.getBounds();
            bounds3.offsetTo(i9 - (bounds3.width() / 2), ((int) (((r10.f29060b - (bounds3.height() / 2)) + bounds3.height()) * min3)) - bounds3.height());
            this.f29049l.draw(canvas);
            if (this.f29046i) {
                bounds.offsetTo(i9 - (bounds.width() / 2), r10.f29060b - (bounds.height() / 2));
                this.f29047j.draw(canvas);
                bounds2.offsetTo(i9 - (bounds2.width() / 2), r10.f29060b - (bounds2.height() / 2));
                this.f29048k.draw(canvas);
                bounds3.offsetTo(i9 - (bounds3.width() / 2), r10.f29060b - (bounds3.height() / 2));
                this.f29049l.draw(canvas);
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, zd.f
    public void e(@NonNull j jVar, @NonNull RefreshState refreshState, @NonNull RefreshState refreshState2) {
        this.f29054q = refreshState2;
        if (refreshState2 == RefreshState.None) {
            this.f29046i = false;
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void g(@NonNull i iVar, int i9, int i10) {
        this.f29045h = i9;
        int v10 = v();
        this.f29047j.setBounds(0, 0, v10, v10);
        this.f29048k.setBounds(0, 0, v10, v10);
        this.f29049l.setBounds(0, 0, v10, v10);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void k(@NonNull j jVar, int i9, int i10) {
        ValueAnimator valueAnimator = this.f29053p;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void o(boolean z10, float f10, int i9, int i10, int i11) {
        if (z10 && this.f29054q == RefreshState.Refreshing) {
            return;
        }
        this.f29051n = (Math.max(0, i9 - i10) * 1.0f) / i11;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AccelerateInterpolator accelerateInterpolator = new AccelerateInterpolator();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f, 0.0f);
        this.f29052o = ofFloat;
        ofFloat.setInterpolator(accelerateInterpolator);
        this.f29052o.setDuration(300L);
        this.f29052o.addUpdateListener(new a());
        this.f29052o.addListener(new b());
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f29053p = ofFloat2;
        ofFloat2.setInterpolator(accelerateInterpolator);
        this.f29053p.setDuration(300L);
        this.f29053p.addUpdateListener(new c());
        this.f29053p.addListener(new d());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f29052o;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
            this.f29052o.removeAllListeners();
            this.f29052o = null;
        }
        ValueAnimator valueAnimator2 = this.f29053p;
        if (valueAnimator2 != null) {
            valueAnimator2.removeAllUpdateListeners();
            this.f29053p.removeAllListeners();
            this.f29053p = null;
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            setBackgroundColor(iArr[0]);
            if (iArr.length > 1) {
                this.f29044g = iArr[1];
            }
        }
    }

    public DropBoxHeader(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DropBoxHeader(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f29041d = new Path();
        this.f29042e = new Paint();
        this.f29043f = new e(null);
        this.f29042e.setAntiAlias(true);
        this.f29044g = -9524737;
        setBackgroundColor(-14141883);
        setMinimumHeight(ae.b.b(150.0f));
        this.f29434b = SpinnerStyle.Scale;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.DropBoxHeader);
        int i10 = R$styleable.DropBoxHeader_dhDrawable1;
        if (obtainStyledAttributes.hasValue(i10)) {
            this.f29047j = obtainStyledAttributes.getDrawable(i10);
        } else {
            sd.b bVar = new sd.b();
            bVar.f(f29036s);
            if (!bVar.g(f29035r)) {
                bVar.c(2, 1, 20, 22);
            }
            this.f29047j = bVar;
        }
        int i11 = R$styleable.DropBoxHeader_dhDrawable2;
        if (obtainStyledAttributes.hasValue(i11)) {
            this.f29048k = obtainStyledAttributes.getDrawable(i11);
        } else {
            sd.b bVar2 = new sd.b();
            bVar2.f(f29038u);
            if (!bVar2.g(f29037t)) {
                bVar2.c(8, 3, 41, 53);
            }
            this.f29048k = bVar2;
        }
        int i12 = R$styleable.DropBoxHeader_dhDrawable3;
        if (obtainStyledAttributes.hasValue(i12)) {
            this.f29049l = obtainStyledAttributes.getDrawable(i12);
        } else {
            sd.b bVar3 = new sd.b();
            bVar3.f(f29040w);
            if (!bVar3.g(f29039v)) {
                bVar3.c(2, 0, 15, 16);
            }
            this.f29049l = bVar3;
        }
        obtainStyledAttributes.recycle();
    }
}
