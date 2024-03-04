package com.guochao.faceshow.aaspring.views;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.GravityCompat;
import androidx.lifecycle.LifecycleOwner;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.manager.DownloadableResourceManager;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.opensource.svgaplayer.utils.SVGARange;
/* loaded from: classes3.dex */
public class PKProgressView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f23918a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f23919b;

    /* renamed from: c  reason: collision with root package name */
    private SVGAImageView f23920c;

    /* renamed from: d  reason: collision with root package name */
    private long f23921d;

    /* renamed from: e  reason: collision with root package name */
    private long f23922e;

    /* renamed from: f  reason: collision with root package name */
    private long f23923f;

    /* renamed from: g  reason: collision with root package name */
    private long f23924g;

    /* renamed from: h  reason: collision with root package name */
    private long f23925h;

    /* renamed from: i  reason: collision with root package name */
    private long f23926i;

    /* renamed from: j  reason: collision with root package name */
    ValueAnimator f23927j;

    /* loaded from: classes3.dex */
    class a extends DownloadableResourceManager.SvgaCallback {
        a(LifecycleOwner lifecycleOwner) {
            super(lifecycleOwner);
        }

        @Override // com.guochao.faceshow.aaspring.manager.DownloadableResourceManager.SvgaCallback
        public void success(@NonNull SVGAVideoEntity sVGAVideoEntity) {
            SvgaImageViewUtils.fitImageView(sVGAVideoEntity, PKProgressView.this.f23920c);
            PKProgressView.this.f23920c.setVideoItem(sVGAVideoEntity);
            try {
                PKProgressView.this.f23920c.startAnimation(new SVGARange(10, sVGAVideoEntity.getFrames()), false);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f23929a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long f23930b;

        b(long j10, long j11) {
            this.f23929a = j10;
            this.f23930b = j11;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float animatedFraction = valueAnimator.getAnimatedFraction();
            PKProgressView pKProgressView = PKProgressView.this;
            pKProgressView.f23923f = (int) (((float) pKProgressView.f23925h) + (((float) this.f23929a) * animatedFraction));
            PKProgressView pKProgressView2 = PKProgressView.this;
            pKProgressView2.f23924g = (int) (((float) pKProgressView2.f23926i) + (((float) this.f23930b) * animatedFraction));
            PKProgressView.this.requestLayout();
        }
    }

    public PKProgressView(@NonNull Context context) {
        super(context);
        this.f23921d = 30L;
        this.f23922e = 100L;
        g(null);
    }

    private void g(AttributeSet attributeSet) {
        ImageView imageView = new ImageView(getContext());
        this.f23918a = imageView;
        imageView.setBackgroundResource(R.drawable.pk_progress_left);
        ImageView imageView2 = new ImageView(getContext());
        this.f23919b = imageView2;
        imageView2.setBackgroundResource(R.drawable.pk_progress_right);
        this.f23920c = new SVGAImageView(getContext());
        addView(this.f23918a);
        addView(this.f23919b);
        addView(this.f23920c);
    }

    public void f(LifecycleOwner lifecycleOwner) {
        DownloadableResourceManager.INSTANCE.getResource("pk_progress.svga", new a(lifecycleOwner));
    }

    public void h(long j10, long j11) {
        if (this.f23921d == j10 && this.f23922e == j11) {
            return;
        }
        if (j10 < 0) {
            LogUtils.i("PKProgressView", "illegal value: left < 0 ");
            j10 = 0;
        }
        if (j11 < 0) {
            LogUtils.i("PKProgressView", "illegal value: right < 0 ");
            j11 = 0;
        }
        long j12 = this.f23921d;
        long j13 = j10 - j12;
        long j14 = this.f23922e;
        long j15 = j11 - j14;
        this.f23925h = j12;
        this.f23926i = j14;
        ValueAnimator valueAnimator = this.f23927j;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f23927j = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f23927j = ofFloat;
        ofFloat.setDuration(300L);
        this.f23927j.setInterpolator(new LinearInterpolator());
        this.f23927j.addUpdateListener(new b(j13, j15));
        this.f23927j.start();
        this.f23921d = j10;
        this.f23922e = j11;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        int size = View.MeasureSpec.getSize(i9);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f23918a.getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f23919b.getLayoutParams();
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.f23920c.getLayoutParams();
        layoutParams.gravity = GravityCompat.START;
        layoutParams2.gravity = GravityCompat.START;
        layoutParams3.gravity = 8388627;
        long j10 = this.f23923f;
        long j11 = this.f23924g;
        if (j10 == j11) {
            int i11 = size / 2;
            layoutParams.width = i11;
            layoutParams2.width = i11;
        } else {
            long j12 = j11 + j10;
            int i12 = (int) (size * ((((float) j10) * 1.0f) / ((float) j12)));
            layoutParams.width = i12;
            layoutParams2.width = size - i12;
        }
        if (getLayoutDirection() == 1) {
            layoutParams2.setMargins(0, 0, layoutParams.width, 0);
        } else {
            layoutParams2.setMargins(layoutParams.width, 0, 0, 0);
        }
        layoutParams3.setMargins(layoutParams.width - (layoutParams3.width / 2), 0, 0, 0);
        setMeasuredDimension(size, View.MeasureSpec.getSize(i10));
        this.f23918a.measure(View.MeasureSpec.makeMeasureSpec(layoutParams.width, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), BasicMeasure.EXACTLY));
        this.f23919b.measure(View.MeasureSpec.makeMeasureSpec(layoutParams2.width, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), BasicMeasure.EXACTLY));
        this.f23920c.measure(View.MeasureSpec.makeMeasureSpec(layoutParams3.width, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(layoutParams3.height, BasicMeasure.EXACTLY));
    }

    public PKProgressView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23921d = 30L;
        this.f23922e = 100L;
        g(attributeSet);
    }

    public PKProgressView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23921d = 30L;
        this.f23922e = 100L;
        g(attributeSet);
    }
}
