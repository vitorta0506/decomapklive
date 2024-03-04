package com.guochao.faceshow.aaspring.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.OvershootInterpolator;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.chat.utils.DragIndicatorUtils;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class DragIndicatorView extends AppCompatTextView {

    /* renamed from: n  reason: collision with root package name */
    private static float f23558n = 0.15f;

    /* renamed from: a  reason: collision with root package name */
    private int f23559a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f23560b;

    /* renamed from: c  reason: collision with root package name */
    private int f23561c;

    /* renamed from: d  reason: collision with root package name */
    private float f23562d;

    /* renamed from: e  reason: collision with root package name */
    private ViewGroup f23563e;

    /* renamed from: f  reason: collision with root package name */
    private DragIndicatorView f23564f;

    /* renamed from: g  reason: collision with root package name */
    private ViewParent f23565g;

    /* renamed from: h  reason: collision with root package name */
    private d f23566h;

    /* renamed from: i  reason: collision with root package name */
    private b f23567i;

    /* renamed from: j  reason: collision with root package name */
    private float f23568j;

    /* renamed from: k  reason: collision with root package name */
    private float f23569k;

    /* renamed from: l  reason: collision with root package name */
    private float f23570l;

    /* renamed from: m  reason: collision with root package name */
    private float f23571m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f23572a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f23573b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ float f23574c;

        a(ImageView imageView, float f10, float f11) {
            this.f23572a = imageView;
            this.f23573b = f10;
            this.f23574c = f11;
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageView imageView = this.f23572a;
            imageView.setX(this.f23573b - (imageView.getMeasuredWidth() >> 1));
            ImageView imageView2 = this.f23572a;
            imageView2.setY(this.f23574c - (imageView2.getMeasuredHeight() >> 1));
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(DragIndicatorView dragIndicatorView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private float f23576a;

        /* renamed from: b  reason: collision with root package name */
        private float f23577b;

        public c(float f10, float f11) {
            this.f23576a = f10;
            this.f23577b = f11;
        }

        public float a() {
            return this.f23576a;
        }

        public float b() {
            return this.f23577b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public final class d extends View {

        /* renamed from: a  reason: collision with root package name */
        public float f23578a;

        /* renamed from: b  reason: collision with root package name */
        public float f23579b;

        /* renamed from: c  reason: collision with root package name */
        public float f23580c;

        /* renamed from: d  reason: collision with root package name */
        public float f23581d;

        /* renamed from: e  reason: collision with root package name */
        public float f23582e;

        /* renamed from: f  reason: collision with root package name */
        public float f23583f;

        /* renamed from: g  reason: collision with root package name */
        public float f23584g;

        /* renamed from: h  reason: collision with root package name */
        private Path f23585h;

        /* renamed from: i  reason: collision with root package name */
        boolean f23586i;

        /* renamed from: j  reason: collision with root package name */
        float f23587j;

        /* renamed from: k  reason: collision with root package name */
        float f23588k;

        /* renamed from: l  reason: collision with root package name */
        float f23589l;

        /* renamed from: m  reason: collision with root package name */
        float f23590m;

        /* renamed from: n  reason: collision with root package name */
        ValueAnimator f23591n;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements TypeEvaluator<c> {
            a() {
            }

            @Override // android.animation.TypeEvaluator
            /* renamed from: a */
            public c evaluate(float f10, c cVar, c cVar2) {
                return new c(cVar.a() + ((cVar2.a() - cVar.a()) * f10), cVar.b() + (f10 * (cVar2.b() - cVar.b())));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements ValueAnimator.AnimatorUpdateListener {
            b() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                c cVar = (c) valueAnimator.getAnimatedValue();
                d.this.e(cVar.a(), cVar.b());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class c extends AnimatorListenerAdapter {
            c() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                DragIndicatorView.this.m();
            }
        }

        public d(Context context) {
            super(context);
            this.f23585h = new Path();
            this.f23589l = 0.0f;
            this.f23590m = 0.0f;
            this.f23586i = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e(float f10, float f11) {
            float f12;
            float f13;
            this.f23587j = f10;
            this.f23588k = f11;
            float f14 = this.f23579b;
            if (f11 >= f14) {
                f12 = f10 - this.f23578a;
                f13 = f11 - f14;
            } else {
                f12 = this.f23578a - f10;
                f13 = f14 - f11;
            }
            float sqrt = (float) Math.sqrt((f12 * f12) + (f13 * f13));
            float f15 = DragIndicatorView.this.f23561c - (DragIndicatorView.this.f23562d * sqrt);
            this.f23580c = f15;
            if (f15 < DragIndicatorView.this.f23561c * 0.2f) {
                this.f23580c = 0.0f;
            }
            if (this.f23580c > 0.0f) {
                double acos = Math.acos(f12 / sqrt) + 1.5707963267948966d;
                double d10 = 3.141592653589793d + acos;
                float cos = (float) (this.f23578a + (this.f23580c * Math.cos(acos)));
                float sin = (float) (this.f23579b + (this.f23580c * Math.sin(acos)));
                double d11 = f10;
                float cos2 = (float) ((DragIndicatorView.this.f23561c * Math.cos(acos)) + d11);
                double d12 = f11;
                this.f23585h.reset();
                this.f23585h.moveTo(cos, sin);
                this.f23585h.lineTo((float) (this.f23578a + (this.f23580c * Math.cos(d10))), (float) (this.f23579b + (this.f23580c * Math.sin(d10))));
                this.f23585h.quadTo((this.f23578a + f10) / 2.0f, (this.f23579b + f11) / 2.0f, (float) (d11 + (DragIndicatorView.this.f23561c * Math.cos(d10))), (float) (d12 + (DragIndicatorView.this.f23561c * Math.sin(d10))));
                this.f23585h.lineTo(cos2, (float) ((DragIndicatorView.this.f23561c * Math.sin(acos)) + d12));
                this.f23585h.quadTo((this.f23578a + f10) / 2.0f, (this.f23579b + f11) / 2.0f, cos, sin);
                this.f23585h.close();
                if (DragIndicatorView.this.f23564f != null) {
                    DragIndicatorView.this.f23564f.setX(this.f23587j - (this.f23583f / 2.0f));
                    DragIndicatorView.this.f23564f.setY(this.f23588k - (this.f23584g / 2.0f));
                }
                this.f23589l = sqrt;
            } else {
                this.f23589l = 0.0f;
            }
            invalidate();
        }

        public void b(float f10, float f11, float f12, float f13, float f14) {
            this.f23578a = f10;
            this.f23579b = f11;
            this.f23581d = f10;
            this.f23582e = f11;
            this.f23580c = f12;
            this.f23583f = f13;
            this.f23584g = f14;
        }

        public void c() {
            this.f23586i = true;
            this.f23590m = this.f23589l;
            ValueAnimator valueAnimator = this.f23591n;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator ofObject = ValueAnimator.ofObject(new a(), new c(this.f23587j, this.f23588k), new c(this.f23578a, this.f23579b));
            this.f23591n = ofObject;
            ofObject.setDuration(300L);
            this.f23591n.addUpdateListener(new b());
            this.f23591n.addListener(new c());
            this.f23591n.setInterpolator(new OvershootInterpolator(5.0f));
            this.f23591n.start();
            postInvalidate();
        }

        public void d(float f10, float f11) {
            this.f23581d = f10;
            this.f23582e = f11;
            e(f10 + (this.f23583f / 2.0f), f11 + (this.f23584g / 2.0f));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.f23580c > 0.0f) {
                if (DragIndicatorView.this.f23560b.getColor() != DragIndicatorView.this.f23559a) {
                    DragIndicatorView.this.f23560b.setColor(DragIndicatorView.this.f23559a);
                }
                canvas.drawPath(this.f23585h, DragIndicatorView.this.f23560b);
                canvas.drawCircle(this.f23578a, this.f23579b, this.f23580c, DragIndicatorView.this.f23560b);
            }
        }
    }

    public DragIndicatorView(Context context) {
        super(context);
        this.f23561c = 0;
        this.f23562d = f23558n;
        this.f23568j = 0.0f;
        this.f23569k = 0.0f;
        this.f23570l = 0.0f;
        this.f23571m = 0.0f;
        j(context);
    }

    private ViewGroup getScrollableParent() {
        View view = this;
        do {
            try {
                view = (View) view.getParent();
                if (view == null) {
                    return null;
                }
            } catch (Exception unused) {
                return null;
            }
        } while (!(view instanceof ViewGroup));
        return (ViewGroup) view;
    }

    private void i(Canvas canvas) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        this.f23561c = Math.min(measuredWidth, measuredHeight) >> 1;
        float width = getWidth() >> 1;
        float height = getHeight() >> 1;
        float f10 = measuredWidth / 2.0f;
        float f11 = measuredHeight / 2.0f;
        canvas.drawRoundRect(width - f10, height - f11, width + f10, height + f11, DensityUtil.dp2px(10.0f), DensityUtil.dp2px(10.0f), this.f23560b);
    }

    private void j(Context context) {
        this.f23559a = Color.parseColor("#FF417D");
        setGravity(17);
        Paint paint = new Paint();
        this.f23560b = paint;
        paint.setColor(this.f23559a);
        this.f23560b.setAntiAlias(true);
        if (context instanceof Activity) {
            this.f23563e = (ViewGroup) ((Activity) context).getWindow().getDecorView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(ImageView imageView) {
        this.f23563e.removeView(imageView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        DragIndicatorView dragIndicatorView = this.f23564f;
        if (dragIndicatorView != null) {
            this.f23563e.removeView(dragIndicatorView);
        }
        d dVar = this.f23566h;
        if (dVar != null) {
            this.f23563e.removeView(dVar);
        }
        setVisibility(0);
    }

    private void n() {
        Log.e("error", "This drag indicator view can not set custom background");
    }

    protected DragIndicatorView h() {
        DragIndicatorView dragIndicatorView = new DragIndicatorView(getContext());
        dragIndicatorView.f23559a = this.f23559a;
        dragIndicatorView.setText(getText());
        dragIndicatorView.setTextColor(getTextColors());
        dragIndicatorView.setTextSize(0, getTextSize());
        dragIndicatorView.setGravity(getGravity());
        dragIndicatorView.setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        dragIndicatorView.setEnabled(false);
        dragIndicatorView.setMinWidth(getMinWidth());
        dragIndicatorView.setMinHeight(getMinHeight());
        dragIndicatorView.setMinimumWidth(getMinimumWidth());
        dragIndicatorView.setMinimumHeight(getMinimumHeight());
        return dragIndicatorView;
    }

    protected void k(float f10, float f11) {
        final ImageView imageView = new ImageView(getContext());
        imageView.setImageResource(R.drawable.clean_anim);
        this.f23563e.addView(imageView, new ViewGroup.LayoutParams(-2, -2));
        imageView.post(new a(imageView, f10, f11));
        AnimationDrawable animationDrawable = (AnimationDrawable) imageView.getDrawable();
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        int i9 = 0;
        for (int i10 = 0; i10 < numberOfFrames; i10++) {
            i9 += animationDrawable.getDuration(i10);
        }
        animationDrawable.start();
        DragIndicatorUtils.INSTANCE.resetAniming();
        postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.views.f
            @Override // java.lang.Runnable
            public final void run() {
                DragIndicatorView.this.l(imageView);
            }
        }, i9 + 20);
        b bVar = this.f23567i;
        if (bVar != null) {
            bVar.a(this);
        }
        setVisibility(8);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        i(canvas);
        super.onDraw(canvas);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0017, code lost:
        if (r0 != 3) goto L12;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.views.DragIndicatorView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        n();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i9) {
        n();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.view.View
    public void setBackgroundResource(int i9) {
        n();
    }

    public void setDrawColor(int i9) {
        if (this.f23559a == i9) {
            return;
        }
        this.f23559a = i9;
        this.f23560b.setColor(i9);
        invalidate();
    }

    public void setOnDismissAction(b bVar) {
        this.f23567i = bVar;
    }

    public DragIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23561c = 0;
        this.f23562d = f23558n;
        this.f23568j = 0.0f;
        this.f23569k = 0.0f;
        this.f23570l = 0.0f;
        this.f23571m = 0.0f;
        j(context);
    }

    public DragIndicatorView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23561c = 0;
        this.f23562d = f23558n;
        this.f23568j = 0.0f;
        this.f23569k = 0.0f;
        this.f23570l = 0.0f;
        this.f23571m = 0.0f;
        j(context);
    }
}
