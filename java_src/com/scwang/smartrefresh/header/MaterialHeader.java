package com.scwang.smartrefresh.header;

import ae.b;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.ViewCompat;
import com.scwang.smartrefresh.header.material.CircleImageView;
import com.scwang.smartrefresh.layout.constant.RefreshState;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;
import wd.g;
import wd.i;
import wd.j;
/* loaded from: classes4.dex */
public class MaterialHeader extends InternalAbstract implements g {

    /* renamed from: d  reason: collision with root package name */
    protected boolean f29084d;

    /* renamed from: e  reason: collision with root package name */
    protected int f29085e;

    /* renamed from: f  reason: collision with root package name */
    protected ImageView f29086f;

    /* renamed from: g  reason: collision with root package name */
    protected rd.a f29087g;

    /* renamed from: h  reason: collision with root package name */
    protected int f29088h;

    /* renamed from: i  reason: collision with root package name */
    protected int f29089i;

    /* renamed from: j  reason: collision with root package name */
    protected Path f29090j;

    /* renamed from: k  reason: collision with root package name */
    protected Paint f29091k;

    /* renamed from: l  reason: collision with root package name */
    protected boolean f29092l;

    /* renamed from: m  reason: collision with root package name */
    protected RefreshState f29093m;

    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f29094a;

        static {
            int[] iArr = new int[RefreshState.values().length];
            f29094a = iArr;
            try {
                iArr[RefreshState.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29094a[RefreshState.PullDownToRefresh.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f29094a[RefreshState.ReleaseToRefresh.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f29094a[RefreshState.Refreshing.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public MaterialHeader(Context context) {
        this(context, null);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void a(@NonNull j jVar, int i9, int i10) {
        this.f29087g.start();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public int c(@NonNull j jVar, boolean z10) {
        ImageView imageView = this.f29086f;
        this.f29087g.stop();
        imageView.animate().scaleX(0.0f).scaleY(0.0f);
        this.f29084d = true;
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.f29092l) {
            this.f29090j.reset();
            this.f29090j.lineTo(0.0f, this.f29089i);
            this.f29090j.quadTo(getMeasuredWidth() / 2, this.f29089i + (this.f29088h * 1.9f), getMeasuredWidth(), this.f29089i);
            this.f29090j.lineTo(getMeasuredWidth(), 0.0f);
            canvas.drawPath(this.f29090j, this.f29091k);
        }
        super.dispatchDraw(canvas);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, zd.f
    public void e(@NonNull j jVar, @NonNull RefreshState refreshState, @NonNull RefreshState refreshState2) {
        ImageView imageView = this.f29086f;
        this.f29093m = refreshState2;
        if (a.f29094a[refreshState2.ordinal()] != 2) {
            return;
        }
        this.f29084d = false;
        imageView.setVisibility(0);
        imageView.setTranslationY(0.0f);
        imageView.setScaleX(1.0f);
        imageView.setScaleY(1.0f);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void g(@NonNull i iVar, int i9, int i10) {
        if (!this.f29092l) {
            iVar.h(this, false);
        }
        if (isInEditMode()) {
            int i11 = i9 / 2;
            this.f29089i = i11;
            this.f29088h = i11;
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void o(boolean z10, float f10, int i9, int i10, int i11) {
        if (this.f29092l) {
            this.f29089i = Math.min(i9, i10);
            this.f29088h = Math.max(0, i9 - i10);
            postInvalidate();
        }
        if (z10 || !(this.f29087g.isRunning() || this.f29084d)) {
            if (this.f29093m != RefreshState.Refreshing) {
                float f11 = i10;
                float max = (((float) Math.max(Math.min(1.0f, Math.abs((i9 * 1.0f) / f11)) - 0.4d, 0.0d)) * 5.0f) / 3.0f;
                double max2 = Math.max(0.0f, Math.min(Math.abs(i9) - i10, f11 * 2.0f) / f11) / 4.0f;
                this.f29087g.l(true);
                this.f29087g.j(0.0f, Math.min(0.8f, max * 0.8f));
                this.f29087g.d(Math.min(1.0f, max));
                this.f29087g.g((((max * 0.4f) - 0.25f) + (((float) (max2 - Math.pow(max2, 2.0d))) * 2.0f * 2.0f)) * 0.5f);
            }
            ImageView imageView = this.f29086f;
            float f12 = i9;
            imageView.setTranslationY(Math.min(f12, (i9 / 2) + (this.f29085e / 2)));
            imageView.setAlpha(Math.min(1.0f, (f12 * 4.0f) / this.f29085e));
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        int i13;
        if (getChildCount() == 0) {
            return;
        }
        ImageView imageView = this.f29086f;
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = imageView.getMeasuredWidth();
        int measuredHeight = imageView.getMeasuredHeight();
        if (isInEditMode() && (i13 = this.f29089i) > 0) {
            int i14 = i13 - (measuredHeight / 2);
            int i15 = measuredWidth / 2;
            int i16 = measuredWidth2 / 2;
            imageView.layout(i15 - i16, i14, i15 + i16, measuredHeight + i14);
            this.f29087g.l(true);
            this.f29087g.j(0.0f, 0.8f);
            this.f29087g.d(1.0f);
            imageView.setAlpha(1.0f);
            imageView.setVisibility(0);
            return;
        }
        int i17 = measuredWidth / 2;
        int i18 = measuredWidth2 / 2;
        imageView.layout(i17 - i18, -measuredHeight, i17 + i18, 0);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i9, int i10) {
        super.setMeasuredDimension(View.MeasureSpec.getSize(i9), View.MeasureSpec.getSize(i10));
        this.f29086f.measure(View.MeasureSpec.makeMeasureSpec(this.f29085e, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(this.f29085e, BasicMeasure.EXACTLY));
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            this.f29091k.setColor(iArr[0]);
        }
    }

    public MaterialHeader(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaterialHeader(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f29092l = false;
        this.f29434b = SpinnerStyle.MatchLayout;
        setMinimumHeight(b.b(100.0f));
        rd.a aVar = new rd.a(this);
        this.f29087g = aVar;
        aVar.e(-328966);
        this.f29087g.setAlpha(255);
        this.f29087g.f(-16737844, -48060, -10053376, -5609780, -30720);
        CircleImageView circleImageView = new CircleImageView(context, -328966);
        this.f29086f = circleImageView;
        circleImageView.setImageDrawable(this.f29087g);
        this.f29086f.setAlpha(0.0f);
        addView(this.f29086f);
        this.f29085e = (int) (getResources().getDisplayMetrics().density * 40.0f);
        this.f29090j = new Path();
        Paint paint = new Paint();
        this.f29091k = paint;
        paint.setAntiAlias(true);
        this.f29091k.setStyle(Paint.Style.FILL);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MaterialHeader);
        this.f29092l = obtainStyledAttributes.getBoolean(R$styleable.MaterialHeader_mhShowBezierWave, this.f29092l);
        this.f29091k.setColor(obtainStyledAttributes.getColor(R$styleable.MaterialHeader_mhPrimaryColor, -15614977));
        int i10 = R$styleable.MaterialHeader_mhShadowRadius;
        if (obtainStyledAttributes.hasValue(i10)) {
            int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(i10, 0);
            this.f29091k.setShadowLayer(dimensionPixelOffset, 0.0f, 0.0f, obtainStyledAttributes.getColor(R$styleable.MaterialHeader_mhShadowColor, ViewCompat.MEASURED_STATE_MASK));
            setLayerType(1, null);
        }
        obtainStyledAttributes.recycle();
    }
}
