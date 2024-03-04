package com.scwang.smartrefresh.header.fungame;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;
import com.scwang.smartrefresh.header.R$string;
import com.scwang.smartrefresh.header.R$styleable;
import com.scwang.smartrefresh.header.fungame.FunGameView;
import com.scwang.smartrefresh.layout.constant.RefreshState;
import wd.i;
import wd.j;
/* loaded from: classes4.dex */
public abstract class FunGameView<T extends FunGameView> extends FunGameBase {
    protected Paint A;
    protected float B;
    protected int C;
    protected int D;
    protected int E;
    protected int F;
    protected int G;
    protected int H;
    protected int I;

    /* renamed from: n  reason: collision with root package name */
    protected float f29222n;

    /* renamed from: o  reason: collision with root package name */
    protected View f29223o;

    /* renamed from: p  reason: collision with root package name */
    protected TextView f29224p;

    /* renamed from: q  reason: collision with root package name */
    protected TextView f29225q;

    /* renamed from: r  reason: collision with root package name */
    public String f29226r;

    /* renamed from: s  reason: collision with root package name */
    public String f29227s;

    /* renamed from: t  reason: collision with root package name */
    public String f29228t;

    /* renamed from: u  reason: collision with root package name */
    protected int f29229u;

    /* renamed from: v  reason: collision with root package name */
    public String f29230v;

    /* renamed from: w  reason: collision with root package name */
    public String f29231w;

    /* renamed from: x  reason: collision with root package name */
    public String f29232x;

    /* renamed from: y  reason: collision with root package name */
    public String f29233y;

    /* renamed from: z  reason: collision with root package name */
    protected Paint f29234z;

    /* loaded from: classes4.dex */
    class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f29235a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f29236b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ View f29237c;

        a(View view, View view2, View view3) {
            this.f29235a = view;
            this.f29236b = view2;
            this.f29237c = view3;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f29235a.setVisibility(8);
            this.f29236b.setVisibility(8);
            this.f29237c.setVisibility(8);
            FunGameView.this.y(1);
        }
    }

    /* loaded from: classes4.dex */
    static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f29239a;

        static {
            int[] iArr = new int[RefreshState.values().length];
            f29239a = iArr;
            try {
                iArr[RefreshState.PullDownToRefresh.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29239a[RefreshState.ReleaseToRefresh.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public FunGameView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f29222n = 1.0f;
        this.D = 0;
        this.I = -10461088;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FunGameView);
        this.f29226r = getResources().getString(R$string.fgh_mask_bottom);
        this.f29227s = getResources().getString(R$string.fgh_mask_top_pull);
        this.f29228t = getResources().getString(R$string.fgh_mask_top_release);
        int i10 = R$styleable.FunGameView_fghMaskTextTop;
        if (obtainStyledAttributes.hasValue(i10)) {
            String string = obtainStyledAttributes.getString(i10);
            this.f29228t = string;
            this.f29227s = string;
        }
        int i11 = R$styleable.FunGameView_fghMaskTextTopPull;
        if (obtainStyledAttributes.hasValue(i11)) {
            this.f29227s = obtainStyledAttributes.getString(i11);
        }
        int i12 = R$styleable.FunGameView_fghMaskTextTopRelease;
        if (obtainStyledAttributes.hasValue(i12)) {
            this.f29228t = obtainStyledAttributes.getString(i12);
        }
        int i13 = R$styleable.FunGameView_fghMaskTextBottom;
        if (obtainStyledAttributes.hasValue(i13)) {
            this.f29226r = obtainStyledAttributes.getString(i13);
        }
        int applyDimension = (int) TypedValue.applyDimension(2, 16.0f, getResources().getDisplayMetrics());
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R$styleable.FunGameView_fghMaskTextSizeTop, applyDimension);
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(R$styleable.FunGameView_fghMaskTextSizeBottom, (applyDimension * 14) / 16);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        this.f29223o = relativeLayout2;
        relativeLayout2.setBackgroundColor(-12961222);
        this.f29224p = u(context, this.f29227s, dimensionPixelSize, 80);
        this.f29225q = u(context, this.f29226r, dimensionPixelSize2, 48);
        if (!isInEditMode()) {
            int b10 = ae.b.b(100.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, b10);
            addView(this.f29223o, layoutParams);
            addView(relativeLayout, layoutParams);
            this.f29229u = (int) (b10 * 0.5f);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, this.f29229u);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, this.f29229u);
            layoutParams3.topMargin = b10 - this.f29229u;
            relativeLayout.addView(this.f29224p, layoutParams2);
            relativeLayout.addView(this.f29225q, layoutParams3);
        }
        this.f29222n = Math.max(1, ae.b.b(0.5f));
        Paint paint = new Paint(1);
        this.f29234z = paint;
        paint.setStrokeWidth(this.f29222n);
        this.B = this.f29222n;
        TextPaint textPaint = new TextPaint(1);
        this.A = textPaint;
        textPaint.setColor(-4078910);
        this.f29230v = context.getString(R$string.fgh_text_game_over);
        this.f29231w = context.getString(R$string.fgh_text_loading);
        this.f29232x = context.getString(R$string.fgh_text_loading_finish);
        this.f29233y = context.getString(R$string.fgh_text_loading_failed);
        this.H = obtainStyledAttributes.getColor(R$styleable.FunGameView_fghBackColor, 0);
        this.E = obtainStyledAttributes.getColor(R$styleable.FunGameView_fghLeftColor, ViewCompat.MEASURED_STATE_MASK);
        this.G = obtainStyledAttributes.getColor(R$styleable.FunGameView_fghMiddleColor, ViewCompat.MEASURED_STATE_MASK);
        this.F = obtainStyledAttributes.getColor(R$styleable.FunGameView_fghRightColor, -5921371);
        int i14 = R$styleable.FunGameView_fghTextGameOver;
        if (obtainStyledAttributes.hasValue(i14)) {
            this.f29230v = obtainStyledAttributes.getString(i14);
        }
        int i15 = R$styleable.FunGameView_fghTextLoading;
        if (obtainStyledAttributes.hasValue(i15)) {
            this.f29231w = obtainStyledAttributes.getString(i15);
        }
        int i16 = R$styleable.FunGameView_fghTextLoadingFinished;
        if (obtainStyledAttributes.hasValue(i16)) {
            this.f29232x = obtainStyledAttributes.getString(i16);
        }
        int i17 = R$styleable.FunGameView_fghTextLoadingFailed;
        if (obtainStyledAttributes.hasValue(i17)) {
            this.f29233y = obtainStyledAttributes.getString(i17);
        }
        obtainStyledAttributes.recycle();
    }

    private void v(Canvas canvas, int i9, int i10) {
        this.f29234z.setColor(this.H);
        float f10 = i9;
        float f11 = i10;
        canvas.drawRect(0.0f, 0.0f, f10, f11, this.f29234z);
        this.f29234z.setColor(this.I);
        canvas.drawLine(0.0f, 0.0f, f10, 0.0f, this.f29234z);
        float f12 = this.f29222n;
        canvas.drawLine(0.0f, f11 - f12, f10, f11 - f12, this.f29234z);
    }

    private void x(Canvas canvas, int i9, int i10) {
        int i11 = this.D;
        if (i11 == 0 || i11 == 1) {
            this.A.setTextSize(ae.b.b(25.0f));
            z(canvas, this.f29231w, i9, i10);
        } else if (i11 == 2) {
            this.A.setTextSize(ae.b.b(25.0f));
            z(canvas, this.f29230v, i9, i10);
        } else if (i11 == 3) {
            this.A.setTextSize(ae.b.b(20.0f));
            z(canvas, this.f29232x, i9, i10);
        } else if (i11 != 4) {
        } else {
            this.A.setTextSize(ae.b.b(20.0f));
            z(canvas, this.f29233y, i9, i10);
        }
    }

    private void z(Canvas canvas, String str, int i9, int i10) {
        canvas.drawText(str, (i9 - this.A.measureText(str)) * 0.5f, (i10 * 0.5f) - ((this.A.ascent() + this.A.descent()) * 0.5f), this.A);
    }

    protected abstract void A();

    @Override // com.scwang.smartrefresh.header.fungame.FunGameBase, com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public int c(@NonNull j jVar, boolean z10) {
        if (this.f29218j) {
            y(z10 ? 3 : 4);
        } else {
            y(0);
            TextView textView = this.f29224p;
            TextView textView2 = this.f29225q;
            View view = this.f29223o;
            textView.setTranslationY(textView.getTranslationY() + this.f29229u);
            textView2.setTranslationY(textView2.getTranslationY() - this.f29229u);
            view.setAlpha(1.0f);
            textView.setVisibility(0);
            textView2.setVisibility(0);
            view.setVisibility(0);
        }
        return super.c(jVar, z10);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        int i9 = this.f29213e;
        v(canvas, width, i9);
        x(canvas, width, i9);
        w(canvas, width, i9);
        super.dispatchDraw(canvas);
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameBase, com.scwang.smartrefresh.layout.internal.InternalAbstract, zd.f
    public void e(@NonNull j jVar, @NonNull RefreshState refreshState, @NonNull RefreshState refreshState2) {
        super.e(jVar, refreshState, refreshState2);
        int i9 = b.f29239a[refreshState2.ordinal()];
        if (i9 == 1) {
            this.f29224p.setText(this.f29227s);
        } else if (i9 != 2) {
        } else {
            this.f29224p.setText(this.f29228t);
        }
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameBase, com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void g(@NonNull i iVar, int i9, int i10) {
        if (this.f29213e != i9 && !isInEditMode()) {
            TextView textView = this.f29224p;
            TextView textView2 = this.f29225q;
            this.f29229u = (int) (i9 * 0.5f);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) textView.getLayoutParams();
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) textView2.getLayoutParams();
            int i11 = this.f29229u;
            layoutParams2.height = i11;
            layoutParams.height = i11;
            layoutParams2.topMargin = i9 - i11;
            textView.setLayoutParams(layoutParams);
            textView2.setLayoutParams(layoutParams2);
        }
        super.g(iVar, i9, i10);
        y(0);
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameBase, com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void k(@NonNull j jVar, int i9, int i10) {
        super.k(jVar, i9, i10);
        TextView textView = this.f29224p;
        View view = this.f29223o;
        TextView textView2 = this.f29225q;
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(textView, "translationY", textView.getTranslationY(), -this.f29229u)).with(ObjectAnimator.ofFloat(textView2, "translationY", textView2.getTranslationY(), this.f29229u)).with(ObjectAnimator.ofFloat(view, "alpha", view.getAlpha(), 0.0f));
        animatorSet.addListener(new a(textView, textView2, view));
        animatorSet.setDuration(800L);
        animatorSet.setStartDelay(200L);
        animatorSet.start();
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameBase
    protected void r(float f10, int i9, int i10, int i11) {
        float max = Math.max(i9, 0);
        float f11 = (this.f29213e - (this.f29222n * 2.0f)) - this.C;
        if (max > f11) {
            max = f11;
        }
        this.B = max;
        postInvalidate();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        super.setPrimaryColors(iArr);
        if (iArr.length > 0) {
            this.f29224p.setTextColor(iArr[0]);
            this.f29225q.setTextColor(iArr[0]);
            int i9 = iArr[0];
            this.H = i9;
            this.I = i9;
            if (i9 == 0 || i9 == -1) {
                this.I = -10461088;
            }
            if (iArr.length > 1) {
                TextView textView = this.f29224p;
                TextView textView2 = this.f29225q;
                this.f29223o.setBackgroundColor(iArr[1]);
                textView.setBackgroundColor(iArr[1]);
                textView2.setBackgroundColor(iArr[1]);
                this.G = iArr[1];
                this.E = ColorUtils.setAlphaComponent(iArr[1], 225);
                this.F = ColorUtils.setAlphaComponent(iArr[1], 200);
                this.A.setColor(ColorUtils.setAlphaComponent(iArr[1], 150));
            }
        }
    }

    protected TextView u(Context context, String str, int i9, int i10) {
        TextView textView = new TextView(context);
        textView.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        textView.setGravity(i10 | 1);
        textView.setTextSize(0, i9);
        textView.setText(str);
        textView.setBackgroundColor(-1);
        return textView;
    }

    protected abstract void w(Canvas canvas, int i9, int i10);

    public void y(int i9) {
        this.D = i9;
        if (i9 == 0) {
            A();
        }
        postInvalidate();
    }
}
