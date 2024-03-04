package com.lcodecore.tkrefreshlayout.footer;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes4.dex */
public class BallPulseView extends View implements kc.a {

    /* renamed from: a  reason: collision with root package name */
    private float f27948a;

    /* renamed from: b  reason: collision with root package name */
    private float[] f27949b;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<ValueAnimator> f27950c;

    /* renamed from: d  reason: collision with root package name */
    private Map<ValueAnimator, ValueAnimator.AnimatorUpdateListener> f27951d;

    /* renamed from: e  reason: collision with root package name */
    private Paint f27952e;

    /* renamed from: f  reason: collision with root package name */
    private int f27953f;

    /* renamed from: g  reason: collision with root package name */
    private int f27954g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f27955a;

        a(int i9) {
            this.f27955a = i9;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BallPulseView.this.f27949b[this.f27955a] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            BallPulseView.this.postInvalidate();
        }
    }

    public BallPulseView(Context context) {
        this(context, null);
    }

    private void e() {
        this.f27950c = new ArrayList<>();
        int[] iArr = {120, 240, 360};
        for (int i9 = 0; i9 < 3; i9++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.3f, 1.0f);
            ofFloat.setDuration(750L);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay(iArr[i9]);
            this.f27951d.put(ofFloat, new a(i9));
            this.f27950c.add(ofFloat);
        }
    }

    private boolean f() {
        Iterator<ValueAnimator> it = this.f27950c.iterator();
        if (it.hasNext()) {
            return it.next().isStarted();
        }
        return false;
    }

    @Override // kc.a
    public void a(float f10, float f11) {
        g();
    }

    @Override // kc.a
    public void b(float f10, float f11, float f12) {
        h();
    }

    @Override // kc.a
    public void c(float f10, float f11, float f12) {
        h();
    }

    public void g() {
        if (this.f27950c == null) {
            e();
        }
        if (this.f27950c == null || f()) {
            return;
        }
        for (int i9 = 0; i9 < this.f27950c.size(); i9++) {
            ValueAnimator valueAnimator = this.f27950c.get(i9);
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.f27951d.get(valueAnimator);
            if (animatorUpdateListener != null) {
                valueAnimator.addUpdateListener(animatorUpdateListener);
            }
            valueAnimator.start();
        }
        setIndicatorColor(this.f27954g);
    }

    @Override // kc.a
    public View getView() {
        return this;
    }

    public void h() {
        ArrayList<ValueAnimator> arrayList = this.f27950c;
        if (arrayList != null) {
            Iterator<ValueAnimator> it = arrayList.iterator();
            while (it.hasNext()) {
                ValueAnimator next = it.next();
                if (next != null && next.isStarted()) {
                    next.removeAllUpdateListeners();
                    next.end();
                }
            }
        }
        setIndicatorColor(this.f27953f);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f27950c != null) {
            for (int i9 = 0; i9 < this.f27950c.size(); i9++) {
                this.f27950c.get(i9).cancel();
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float min = (Math.min(getWidth(), getHeight()) - (this.f27948a * 2.0f)) / 6.0f;
        float f10 = 2.0f * min;
        float width = (getWidth() / 2) - (this.f27948a + f10);
        float height = getHeight() / 2;
        for (int i9 = 0; i9 < 3; i9++) {
            canvas.save();
            float f11 = i9;
            canvas.translate((f10 * f11) + width + (this.f27948a * f11), height);
            float[] fArr = this.f27949b;
            canvas.scale(fArr[i9], fArr[i9]);
            canvas.drawCircle(0.0f, 0.0f, min, this.f27952e);
            canvas.restore();
        }
    }

    @Override // kc.a
    public void onFinish() {
        h();
    }

    @Override // kc.a
    public void reset() {
        h();
    }

    public void setAnimatingColor(@ColorInt int i9) {
        this.f27954g = i9;
    }

    public void setIndicatorColor(int i9) {
        this.f27952e.setColor(i9);
    }

    public void setNormalColor(@ColorInt int i9) {
        this.f27953f = i9;
    }

    public BallPulseView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BallPulseView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f27949b = new float[]{1.0f, 1.0f, 1.0f};
        this.f27951d = new HashMap();
        this.f27953f = -1118482;
        this.f27954g = -1615546;
        int a10 = nc.a.a(context, 50.0f);
        setLayoutParams(new FrameLayout.LayoutParams(a10, a10, 17));
        this.f27948a = nc.a.a(context, 4.0f);
        Paint paint = new Paint();
        this.f27952e = paint;
        paint.setColor(-1);
        this.f27952e.setStyle(Paint.Style.FILL);
        this.f27952e.setAntiAlias(true);
    }
}
