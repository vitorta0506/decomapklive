package com.scwang.smartrefresh.header;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.scwang.smartrefresh.header.waterdrop.WaterDropView;
import com.scwang.smartrefresh.layout.constant.RefreshState;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;
import wd.g;
import wd.j;
import yd.c;
/* loaded from: classes4.dex */
public class WaterDropHeader extends InternalAbstract implements g {

    /* renamed from: d  reason: collision with root package name */
    protected RefreshState f29166d;

    /* renamed from: e  reason: collision with root package name */
    protected ImageView f29167e;

    /* renamed from: f  reason: collision with root package name */
    protected WaterDropView f29168f;

    /* renamed from: g  reason: collision with root package name */
    protected c f29169g;

    /* renamed from: h  reason: collision with root package name */
    protected rd.a f29170h;

    /* loaded from: classes4.dex */
    class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f29171a;

        a(View view) {
            this.f29171a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f29171a.setVisibility(8);
            this.f29171a.setAlpha(1.0f);
        }
    }

    /* loaded from: classes4.dex */
    static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f29173a;

        static {
            int[] iArr = new int[RefreshState.values().length];
            f29173a = iArr;
            try {
                iArr[RefreshState.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29173a[RefreshState.PullDownToRefresh.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f29173a[RefreshState.PullDownCanceled.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f29173a[RefreshState.ReleaseToRefresh.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f29173a[RefreshState.Refreshing.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f29173a[RefreshState.RefreshFinish.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public WaterDropHeader(Context context) {
        this(context, null);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void a(@NonNull j jVar, int i9, int i10) {
        ImageView imageView = this.f29167e;
        WaterDropView waterDropView = this.f29168f;
        this.f29169g.start();
        imageView.setVisibility(8);
        this.f29168f.a().start();
        waterDropView.animate().setDuration(150L).alpha(0.0f).setListener(new a(waterDropView));
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public int c(@NonNull j jVar, boolean z10) {
        this.f29169g.stop();
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        WaterDropView waterDropView = this.f29168f;
        c cVar = this.f29169g;
        if (this.f29166d == RefreshState.Refreshing) {
            canvas.save();
            canvas.translate((getWidth() / 2) - (cVar.getBounds().width() / 2), (this.f29168f.getMaxCircleRadius() + waterDropView.getPaddingTop()) - (cVar.getBounds().height() / 2));
            cVar.draw(canvas);
            canvas.restore();
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, zd.f
    public void e(@NonNull j jVar, @NonNull RefreshState refreshState, @NonNull RefreshState refreshState2) {
        WaterDropView waterDropView = this.f29168f;
        ImageView imageView = this.f29167e;
        this.f29166d = refreshState2;
        int i9 = b.f29173a[refreshState2.ordinal()];
        if (i9 == 1) {
            waterDropView.setVisibility(0);
            imageView.setVisibility(0);
        } else if (i9 == 2) {
            waterDropView.setVisibility(0);
            imageView.setVisibility(0);
        } else if (i9 == 4) {
            waterDropView.setVisibility(0);
            imageView.setVisibility(0);
        } else if (i9 != 6) {
        } else {
            waterDropView.setVisibility(8);
            imageView.setVisibility(8);
        }
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        invalidate();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void o(boolean z10, float f10, int i9, int i10, int i11) {
        RefreshState refreshState;
        if (z10 || ((refreshState = this.f29166d) != RefreshState.Refreshing && refreshState != RefreshState.RefreshReleased)) {
            WaterDropView waterDropView = this.f29168f;
            waterDropView.e(Math.max(i9, 0), i11 + i10);
            waterDropView.postInvalidate();
        }
        if (z10) {
            float f11 = i10;
            float max = (((float) Math.max(Math.min(1.0f, Math.abs((i9 * 1.0f) / f11)) - 0.4d, 0.0d)) * 5.0f) / 3.0f;
            double max2 = Math.max(0.0f, Math.min(Math.abs(i9) - i10, f11 * 2.0f) / f11) / 4.0f;
            this.f29170h.l(true);
            this.f29170h.j(0.0f, Math.min(0.8f, max * 0.8f));
            this.f29170h.d(Math.min(1.0f, max));
            this.f29170h.g((((0.4f * max) - 0.25f) + (((float) (max2 - Math.pow(max2, 2.0d))) * 2.0f * 2.0f)) * 0.5f);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        ImageView imageView = this.f29167e;
        WaterDropView waterDropView = this.f29168f;
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = waterDropView.getMeasuredWidth();
        int i13 = measuredWidth / 2;
        int i14 = measuredWidth2 / 2;
        int i15 = i13 - i14;
        waterDropView.layout(i15, 0, i15 + measuredWidth2, waterDropView.getMeasuredHeight() + 0);
        int measuredWidth3 = imageView.getMeasuredWidth();
        int measuredHeight = imageView.getMeasuredHeight();
        int i16 = measuredWidth3 / 2;
        int i17 = i13 - i16;
        int i18 = i14 - i16;
        int i19 = (measuredWidth2 - measuredWidth3) / 2;
        if (i18 + measuredHeight > waterDropView.getBottom() - i19) {
            i18 = (waterDropView.getBottom() - i19) - measuredHeight;
        }
        imageView.layout(i17, i18, measuredWidth3 + i17, measuredHeight + i18);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        ImageView imageView = this.f29167e;
        WaterDropView waterDropView = this.f29168f;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
        imageView.measure(View.MeasureSpec.makeMeasureSpec(layoutParams.width, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(layoutParams.height, BasicMeasure.EXACTLY));
        waterDropView.measure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i9), Integer.MIN_VALUE), i10);
        super.setMeasuredDimension(View.resolveSize(Math.max(imageView.getMeasuredWidth(), waterDropView.getMeasuredWidth()), i9), View.resolveSize(Math.max(imageView.getMeasuredHeight(), waterDropView.getMeasuredHeight()), i10));
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            this.f29168f.setIndicatorColor(iArr[0]);
        }
    }

    public WaterDropHeader(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WaterDropHeader(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        ae.b bVar = new ae.b();
        this.f29434b = SpinnerStyle.Scale;
        WaterDropView waterDropView = new WaterDropView(context);
        this.f29168f = waterDropView;
        waterDropView.d(0);
        addView(this.f29168f, -1, -1);
        c cVar = new c();
        this.f29169g = cVar;
        cVar.setCallback(this);
        cVar.setBounds(0, 0, bVar.a(20.0f), bVar.a(20.0f));
        this.f29167e = new ImageView(context);
        rd.a aVar = new rd.a(this.f29167e);
        this.f29170h = aVar;
        aVar.e(-1);
        this.f29170h.setAlpha(255);
        this.f29170h.f(-1, -16737844, -48060, -10053376, -5609780, -30720);
        this.f29167e.setImageDrawable(this.f29170h);
        addView(this.f29167e, bVar.a(30.0f), bVar.a(30.0f));
    }
}
