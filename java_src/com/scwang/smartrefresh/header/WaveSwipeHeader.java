package com.scwang.smartrefresh.header;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.ViewCompat;
import com.scwang.smartrefresh.header.waveswipe.WaveView;
import com.scwang.smartrefresh.layout.constant.RefreshState;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;
import wd.g;
import wd.j;
/* loaded from: classes4.dex */
public class WaveSwipeHeader extends InternalAbstract implements g {

    /* renamed from: d  reason: collision with root package name */
    protected WaveView f29174d;

    /* renamed from: e  reason: collision with root package name */
    protected RefreshState f29175e;

    /* renamed from: f  reason: collision with root package name */
    protected rd.a f29176f;

    /* renamed from: g  reason: collision with root package name */
    protected ProgressAnimationImageView f29177g;

    /* renamed from: h  reason: collision with root package name */
    protected float f29178h;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4.dex */
    public class ProgressAnimationImageView extends ImageView {

        /* renamed from: a  reason: collision with root package name */
        protected Animation.AnimationListener f29179a;

        public ProgressAnimationImageView(Context context) {
            super(context);
            rd.a aVar = new rd.a(WaveSwipeHeader.this);
            WaveSwipeHeader.this.f29176f = aVar;
            aVar.e(0);
            if (WaveSwipeHeader.r()) {
                WaveSwipeHeader.this.f29176f.n(0);
            }
            super.setImageDrawable(WaveSwipeHeader.this.f29176f);
        }

        @Override // android.view.View
        public void onAnimationEnd() {
            super.onAnimationEnd();
            Animation.AnimationListener animationListener = this.f29179a;
            if (animationListener != null) {
                animationListener.onAnimationEnd(getAnimation());
            }
        }

        @Override // android.view.View
        public void onAnimationStart() {
            super.onAnimationStart();
            Animation.AnimationListener animationListener = this.f29179a;
            if (animationListener != null) {
                animationListener.onAnimationStart(getAnimation());
            }
        }

        public void setAnimationListener(Animation.AnimationListener animationListener) {
            this.f29179a = animationListener;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum SECOND uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes4.dex */
    public static final class VERTICAL_DRAG_THRESHOLD {
        private static final /* synthetic */ VERTICAL_DRAG_THRESHOLD[] $VALUES;
        public static final VERTICAL_DRAG_THRESHOLD FIRST;
        public static final VERTICAL_DRAG_THRESHOLD SECOND;
        public static final VERTICAL_DRAG_THRESHOLD THIRD;
        final float val;

        static {
            VERTICAL_DRAG_THRESHOLD vertical_drag_threshold = new VERTICAL_DRAG_THRESHOLD("FIRST", 0, 0.1f);
            FIRST = vertical_drag_threshold;
            VERTICAL_DRAG_THRESHOLD vertical_drag_threshold2 = new VERTICAL_DRAG_THRESHOLD("SECOND", 1, vertical_drag_threshold.val + 0.16f);
            SECOND = vertical_drag_threshold2;
            VERTICAL_DRAG_THRESHOLD vertical_drag_threshold3 = new VERTICAL_DRAG_THRESHOLD("THIRD", 2, vertical_drag_threshold.val + 0.5f);
            THIRD = vertical_drag_threshold3;
            $VALUES = new VERTICAL_DRAG_THRESHOLD[]{vertical_drag_threshold, vertical_drag_threshold2, vertical_drag_threshold3};
        }

        private VERTICAL_DRAG_THRESHOLD(String str, int i9, float f10) {
            this.val = f10;
        }

        public static VERTICAL_DRAG_THRESHOLD valueOf(String str) {
            return (VERTICAL_DRAG_THRESHOLD) Enum.valueOf(VERTICAL_DRAG_THRESHOLD.class, str);
        }

        public static VERTICAL_DRAG_THRESHOLD[] values() {
            return (VERTICAL_DRAG_THRESHOLD[]) $VALUES.clone();
        }
    }

    /* loaded from: classes4.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            WaveSwipeHeader waveSwipeHeader = WaveSwipeHeader.this;
            ProgressAnimationImageView progressAnimationImageView = waveSwipeHeader.f29177g;
            progressAnimationImageView.setTranslationY(waveSwipeHeader.f29174d.getCurrentCircleCenterY() + (progressAnimationImageView.getHeight() / 2.0f));
        }
    }

    /* loaded from: classes4.dex */
    class b extends Animation {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f29182a;

        b(View view) {
            this.f29182a = view;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, Transformation transformation) {
            float f11 = 1.0f - f10;
            this.f29182a.setScaleX(f11);
            this.f29182a.setScaleY(f11);
        }
    }

    /* loaded from: classes4.dex */
    class c implements Animation.AnimationListener {
        c() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            WaveSwipeHeader.this.f29176f.stop();
            WaveSwipeHeader.this.f29176f.setAlpha(255);
            WaveSwipeHeader.this.f29174d.i();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* loaded from: classes4.dex */
    static /* synthetic */ class d {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f29185a;

        static {
            int[] iArr = new int[RefreshState.values().length];
            f29185a = iArr;
            try {
                iArr[RefreshState.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29185a[RefreshState.PullDownToRefresh.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f29185a[RefreshState.PullDownCanceled.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f29185a[RefreshState.ReleaseToRefresh.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f29185a[RefreshState.Refreshing.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public WaveSwipeHeader(Context context) {
        this(context, null);
    }

    public static boolean r() {
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        return ((float) displayMetrics.widthPixels) / displayMetrics.density >= 600.0f;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void a(@NonNull j jVar, int i9, int i10) {
        this.f29178h = 0.0f;
        this.f29174d.a();
        this.f29176f.setAlpha(255);
        this.f29176f.start();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 0.0f);
        ofFloat.setDuration(500L);
        ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        ofFloat.addUpdateListener(new a());
        ofFloat.start();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public int c(@NonNull j jVar, boolean z10) {
        ProgressAnimationImageView progressAnimationImageView = this.f29177g;
        b bVar = new b(progressAnimationImageView);
        bVar.setDuration(200L);
        this.f29177g.setAnimationListener(new c());
        progressAnimationImageView.clearAnimation();
        progressAnimationImageView.startAnimation(bVar);
        return 0;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, zd.f
    public void e(@NonNull j jVar, @NonNull RefreshState refreshState, @NonNull RefreshState refreshState2) {
        ProgressAnimationImageView progressAnimationImageView = this.f29177g;
        this.f29175e = refreshState2;
        int i9 = d.f29185a[refreshState2.ordinal()];
        if (i9 == 2) {
            this.f29176f.l(true);
            progressAnimationImageView.setScaleX(1.0f);
            progressAnimationImageView.setScaleY(1.0f);
            this.f29176f.setAlpha(255);
        } else if (i9 != 3) {
        } else {
            this.f29176f.l(false);
            this.f29176f.g(0.0f);
            this.f29176f.j(0.0f, 0.0f);
            this.f29174d.k(this.f29178h);
            this.f29178h = 0.0f;
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void o(boolean z10, float f10, int i9, int i10, int i11) {
        if (z10) {
            if (this.f29175e == RefreshState.Refreshing) {
                return;
            }
            ProgressAnimationImageView progressAnimationImageView = this.f29177g;
            float max = (((float) Math.max(Math.min(1.0f, f10) - 0.4d, 0.0d)) * 5.0f) / 3.0f;
            float f11 = f10 > 3.0f ? 2.0f : f10 > 1.0f ? f10 - 1.0f : 0.0f;
            float f12 = ((4.0f - f11) * f11) / 8.0f;
            if (f10 < 1.0f) {
                this.f29176f.j(0.0f, Math.min(0.8f, max * 0.8f));
                this.f29176f.d(Math.min(1.0f, max));
            }
            this.f29176f.g((((max * 0.4f) - 0.25f) + (f12 * 2.0f)) * 0.5f);
            progressAnimationImageView.setTranslationY(this.f29174d.getCurrentCircleCenterY());
            float min = (i9 * 1.0f) / Math.min(getMeasuredWidth(), getMeasuredHeight());
            float f13 = (min * (5.0f - (2.0f * min))) / 3.5f;
            float f14 = VERTICAL_DRAG_THRESHOLD.FIRST.val;
            float f15 = f13 - f14;
            float f16 = VERTICAL_DRAG_THRESHOLD.SECOND.val;
            float f17 = (f13 - f16) / 5.0f;
            this.f29178h = f13;
            if (f13 < f14) {
                this.f29174d.c(f13);
            } else if (f13 < f16) {
                this.f29174d.b(f13, f15);
            } else {
                this.f29174d.d(f13, f15, f17);
            }
        } else if (this.f29178h == 0.0f || this.f29175e != RefreshState.None) {
        } else {
            this.f29176f.l(false);
            this.f29176f.g(0.0f);
            this.f29176f.j(0.0f, 0.0f);
            this.f29174d.k(this.f29178h);
            this.f29178h = 0.0f;
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        WaveView waveView = this.f29174d;
        ProgressAnimationImageView progressAnimationImageView = this.f29177g;
        waveView.layout(0, 0, getMeasuredWidth(), getMeasuredHeight());
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = progressAnimationImageView.getMeasuredWidth();
        progressAnimationImageView.layout((measuredWidth - measuredWidth2) / 2, -progressAnimationImageView.getMeasuredHeight(), (measuredWidth + measuredWidth2) / 2, 0);
        if (isInEditMode()) {
            o(true, 0.99f, ae.b.b(99.0f), ae.b.b(100.0f), ae.b.b(100.0f));
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.setMeasuredDimension(View.MeasureSpec.getSize(i9), View.MeasureSpec.getSize(i10));
        WaveView waveView = this.f29174d;
        ProgressAnimationImageView progressAnimationImageView = this.f29177g;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f29176f.getIntrinsicWidth(), BasicMeasure.EXACTLY);
        progressAnimationImageView.measure(makeMeasureSpec, makeMeasureSpec);
        waveView.measure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i9), BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i10), BasicMeasure.EXACTLY));
    }

    public void setColorSchemeColorIds(@IdRes int... iArr) {
        Resources resources = getResources();
        int[] iArr2 = new int[iArr.length];
        for (int i9 = 0; i9 < iArr.length; i9++) {
            if (Build.VERSION.SDK_INT >= 23) {
                iArr2[i9] = resources.getColor(iArr[i9], getContext().getTheme());
            } else {
                iArr2[i9] = resources.getColor(iArr[i9]);
            }
        }
        this.f29176f.f(iArr2);
    }

    public void setColorSchemeColors(int... iArr) {
        this.f29176f.f(iArr);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            this.f29174d.setWaveColor(iArr[0]);
            if (iArr.length > 1) {
                this.f29176f.f(iArr[1]);
            }
        }
    }

    public WaveSwipeHeader(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WaveSwipeHeader(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f29434b = SpinnerStyle.MatchLayout;
        WaveView waveView = new WaveView(context);
        this.f29174d = waveView;
        addView(waveView);
        ProgressAnimationImageView progressAnimationImageView = new ProgressAnimationImageView(context);
        this.f29177g = progressAnimationImageView;
        addView(progressAnimationImageView);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.WaveSwipeHeader);
        int color = obtainStyledAttributes.getColor(R$styleable.WaveSwipeHeader_wshPrimaryColor, 0);
        int color2 = obtainStyledAttributes.getColor(R$styleable.WaveSwipeHeader_wshAccentColor, 0);
        if (color != 0) {
            this.f29174d.setWaveColor(color);
        }
        if (color2 != 0) {
            this.f29176f.f(color2);
        } else {
            this.f29176f.f(-1);
        }
        int i10 = R$styleable.WaveSwipeHeader_wshShadowRadius;
        if (obtainStyledAttributes.hasValue(i10)) {
            this.f29174d.h(obtainStyledAttributes.getDimensionPixelOffset(i10, 0), obtainStyledAttributes.getColor(R$styleable.WaveSwipeHeader_wshShadowColor, ViewCompat.MEASURED_STATE_MASK));
        }
        obtainStyledAttributes.recycle();
    }
}
