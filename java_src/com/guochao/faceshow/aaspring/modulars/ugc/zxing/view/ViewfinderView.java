package com.guochao.faceshow.aaspring.modulars.ugc.zxing.view;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.google.zxing.ResultPoint;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.ugc.zxing.bean.ZxingConfig;
import com.guochao.faceshow.aaspring.modulars.ugc.zxing.view.ViewfinderView;
import da.c;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ViewfinderView extends View {

    /* renamed from: a  reason: collision with root package name */
    private c f23064a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f23065b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f23066c;

    /* renamed from: d  reason: collision with root package name */
    private Paint f23067d;

    /* renamed from: e  reason: collision with root package name */
    private Paint f23068e;

    /* renamed from: f  reason: collision with root package name */
    private Bitmap f23069f;

    /* renamed from: g  reason: collision with root package name */
    private int f23070g;

    /* renamed from: h  reason: collision with root package name */
    private int f23071h;

    /* renamed from: i  reason: collision with root package name */
    private int f23072i;

    /* renamed from: j  reason: collision with root package name */
    private int f23073j;

    /* renamed from: k  reason: collision with root package name */
    private int f23074k;

    /* renamed from: l  reason: collision with root package name */
    private int f23075l;

    /* renamed from: m  reason: collision with root package name */
    private List<ResultPoint> f23076m;

    /* renamed from: n  reason: collision with root package name */
    private List<ResultPoint> f23077n;

    /* renamed from: o  reason: collision with root package name */
    private int f23078o;

    /* renamed from: p  reason: collision with root package name */
    private ZxingConfig f23079p;

    /* renamed from: q  reason: collision with root package name */
    private ValueAnimator f23080q;

    /* renamed from: r  reason: collision with root package name */
    private ValueAnimator f23081r;

    /* renamed from: s  reason: collision with root package name */
    private AnimatorSet f23082s;

    /* renamed from: t  reason: collision with root package name */
    private Rect f23083t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Animator.AnimatorListener {
        a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ViewfinderView.this.f23082s.start();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public ViewfinderView(Context context) {
        this(context, null);
    }

    private int e(int i9) {
        return (int) TypedValue.applyDimension(1, i9, getResources().getDisplayMetrics());
    }

    private void f(Canvas canvas, Rect rect) {
        if (this.f23075l != -1) {
            canvas.drawRect(rect, this.f23068e);
        }
        int width = (int) (rect.width() * 0.17d);
        int i9 = (int) (width * 0.05d);
        if (i9 > 15) {
            i9 = 15;
        }
        int i10 = rect.left;
        int i11 = rect.top;
        canvas.drawRect(i10 - i9, i11, i10, i11 + width, this.f23067d);
        int i12 = rect.left;
        int i13 = rect.top;
        canvas.drawRect(i12 - i9, i13 - i9, i12 + width, i13, this.f23067d);
        int i14 = rect.right;
        int i15 = rect.top;
        canvas.drawRect(i14, i15, i14 + i9, i15 + width, this.f23067d);
        int i16 = rect.right;
        int i17 = rect.top;
        canvas.drawRect(i16 - width, i17 - i9, i16 + i9, i17, this.f23067d);
        int i18 = rect.left;
        int i19 = rect.bottom;
        canvas.drawRect(i18 - i9, i19 - width, i18, i19, this.f23067d);
        int i20 = rect.left;
        int i21 = rect.bottom;
        canvas.drawRect(i20 - i9, i21, i20 + width, i21 + i9, this.f23067d);
        int i22 = rect.right;
        int i23 = rect.bottom;
        canvas.drawRect(i22, i23 - width, i22 + i9, i23, this.f23067d);
        int i24 = rect.right;
        int i25 = rect.bottom;
        canvas.drawRect(i24 - width, i25, i24 + i9, i25 + i9, this.f23067d);
    }

    private void g(Canvas canvas, Rect rect, int i9, int i10) {
        this.f23065b.setColor(this.f23069f != null ? this.f23071h : this.f23070g);
        float f10 = i9;
        canvas.drawRect(0.0f, 0.0f, f10, rect.top, this.f23065b);
        canvas.drawRect(0.0f, rect.top, rect.left, rect.bottom + 1, this.f23065b);
        canvas.drawRect(rect.right + 1, rect.top, f10, rect.bottom + 1, this.f23065b);
        canvas.drawRect(0.0f, rect.bottom + 1, f10, i10, this.f23065b);
    }

    private void h(Canvas canvas, Rect rect) {
        if (this.f23078o == 0) {
            this.f23078o = rect.top;
        }
        int i9 = rect.left;
        int i10 = this.f23078o;
        canvas.drawBitmap(BitmapFactory.decodeResource(getResources(), R.mipmap.ugc_saoyisao_xiantiao), (Rect) null, new Rect(i9, i10, rect.right, i10 + 10), this.f23066c);
    }

    private void j() {
        if (this.f23080q == null) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f23082s = animatorSet;
            animatorSet.setDuration(5000L);
            Rect rect = this.f23083t;
            this.f23080q = ValueAnimator.ofInt(rect.top, rect.bottom - 15);
            Rect rect2 = this.f23083t;
            this.f23081r = ValueAnimator.ofInt(rect2.bottom - 15, rect2.top);
            this.f23080q.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: ga.b
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ViewfinderView.this.l(valueAnimator);
                }
            });
            this.f23081r.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: ga.c
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ViewfinderView.this.m(valueAnimator);
                }
            });
            this.f23082s.play(this.f23080q).before(this.f23081r);
            this.f23082s.start();
            this.f23082s.addListener(new a());
        }
    }

    private void k() {
        this.f23065b = new Paint(1);
        Paint paint = new Paint(1);
        this.f23067d = paint;
        paint.setColor(this.f23073j);
        this.f23067d.setStyle(Paint.Style.FILL);
        this.f23067d.setStrokeWidth(e(1));
        if (this.f23075l != -1) {
            Paint paint2 = new Paint(1);
            this.f23068e = paint2;
            paint2.setColor(ContextCompat.getColor(getContext(), this.f23079p.getFrameLineColor()));
            this.f23068e.setStrokeWidth(e(1));
            this.f23068e.setStyle(Paint.Style.STROKE);
        }
        Paint paint3 = new Paint(1);
        this.f23066c = paint3;
        paint3.setStrokeWidth(e(1));
        this.f23066c.setStyle(Paint.Style.FILL);
        this.f23066c.setDither(true);
        this.f23066c.setColor(this.f23074k);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(ValueAnimator valueAnimator) {
        this.f23078o = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(ValueAnimator valueAnimator) {
        this.f23078o = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        invalidate();
    }

    public void d(ResultPoint resultPoint) {
        List<ResultPoint> list = this.f23076m;
        synchronized (list) {
            list.add(resultPoint);
            int size = list.size();
            if (size > 20) {
                list.subList(0, size - 10).clear();
            }
        }
    }

    public void i() {
        Bitmap bitmap = this.f23069f;
        this.f23069f = null;
        if (bitmap != null) {
            bitmap.recycle();
        }
        invalidate();
    }

    public void n() {
        ValueAnimator valueAnimator = this.f23080q;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f23080q.cancel();
            this.f23080q = null;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        c cVar = this.f23064a;
        if (cVar == null) {
            return;
        }
        this.f23083t = cVar.c();
        Rect d10 = this.f23064a.d();
        if (this.f23083t == null || d10 == null) {
            return;
        }
        j();
        g(canvas, this.f23083t, canvas.getWidth(), canvas.getHeight());
        f(canvas, this.f23083t);
        if (this.f23069f != null) {
            this.f23065b.setAlpha(160);
            canvas.drawBitmap(this.f23069f, (Rect) null, this.f23083t, this.f23065b);
            return;
        }
        h(canvas, this.f23083t);
    }

    public void setCameraManager(c cVar) {
        this.f23064a = cVar;
    }

    public void setZxingConfig(ZxingConfig zxingConfig) {
        this.f23079p = zxingConfig;
        this.f23073j = ContextCompat.getColor(getContext(), zxingConfig.getReactColor());
        if (zxingConfig.getFrameLineColor() != -1) {
            this.f23075l = ContextCompat.getColor(getContext(), zxingConfig.getFrameLineColor());
        }
        this.f23074k = ContextCompat.getColor(getContext(), zxingConfig.getScanLineColor());
        k();
    }

    public ViewfinderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewfinderView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23075l = -1;
        this.f23070g = ContextCompat.getColor(getContext(), R.color.viewfinder_mask);
        this.f23071h = ContextCompat.getColor(getContext(), R.color.result_view);
        this.f23072i = ContextCompat.getColor(getContext(), R.color.possible_result_points);
        this.f23076m = new ArrayList(10);
        this.f23077n = null;
    }
}
