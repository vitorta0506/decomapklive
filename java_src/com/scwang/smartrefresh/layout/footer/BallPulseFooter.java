package com.scwang.smartrefresh.layout.footer;

import ae.b;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.ColorUtils;
import com.scwang.smartrefresh.layout.R$styleable;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import wd.f;
import wd.j;
/* loaded from: classes4.dex */
public class BallPulseFooter extends InternalAbstract implements f {

    /* renamed from: d  reason: collision with root package name */
    protected boolean f29360d;

    /* renamed from: e  reason: collision with root package name */
    protected boolean f29361e;

    /* renamed from: f  reason: collision with root package name */
    protected Paint f29362f;

    /* renamed from: g  reason: collision with root package name */
    protected int f29363g;

    /* renamed from: h  reason: collision with root package name */
    protected int f29364h;

    /* renamed from: i  reason: collision with root package name */
    protected float f29365i;

    /* renamed from: j  reason: collision with root package name */
    protected float[] f29366j;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f29367k;

    /* renamed from: l  reason: collision with root package name */
    protected ArrayList<ValueAnimator> f29368l;

    /* renamed from: m  reason: collision with root package name */
    protected Map<ValueAnimator, ValueAnimator.AnimatorUpdateListener> f29369m;

    /* loaded from: classes4.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29370a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f29371b;

        a(int i9, View view) {
            this.f29370a = i9;
            this.f29371b = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BallPulseFooter.this.f29366j[this.f29370a] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.f29371b.postInvalidate();
        }
    }

    public BallPulseFooter(@NonNull Context context) {
        this(context, null);
    }

    @Override // wd.f
    public boolean b(boolean z10) {
        return false;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public int c(@NonNull j jVar, boolean z10) {
        ArrayList<ValueAnimator> arrayList = this.f29368l;
        if (arrayList != null && this.f29367k) {
            this.f29367k = false;
            this.f29366j = new float[]{1.0f, 1.0f, 1.0f};
            Iterator<ValueAnimator> it = arrayList.iterator();
            while (it.hasNext()) {
                ValueAnimator next = it.next();
                if (next != null) {
                    next.removeAllUpdateListeners();
                    next.end();
                }
            }
        }
        this.f29362f.setColor(this.f29363g);
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        float f10 = this.f29365i;
        float min = (Math.min(width, height) - (f10 * 2.0f)) / 6.0f;
        float f11 = 2.0f * min;
        float f12 = (width / 2) - (f10 + f11);
        float f13 = height / 2;
        for (int i9 = 0; i9 < 3; i9++) {
            canvas.save();
            float f14 = i9;
            canvas.translate((f11 * f14) + f12 + (this.f29365i * f14), f13);
            float[] fArr = this.f29366j;
            canvas.scale(fArr[i9], fArr[i9]);
            canvas.drawCircle(0.0f, 0.0f, min, this.f29362f);
            canvas.restore();
        }
        super.dispatchDraw(canvas);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void k(@NonNull j jVar, int i9, int i10) {
        if (this.f29367k) {
            return;
        }
        for (int i11 = 0; i11 < this.f29368l.size(); i11++) {
            ValueAnimator valueAnimator = this.f29368l.get(i11);
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.f29369m.get(valueAnimator);
            if (animatorUpdateListener != null) {
                valueAnimator.addUpdateListener(animatorUpdateListener);
            }
            valueAnimator.start();
        }
        this.f29367k = true;
        this.f29362f.setColor(this.f29364h);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f29368l != null) {
            for (int i9 = 0; i9 < this.f29368l.size(); i9++) {
                this.f29368l.get(i9).cancel();
                this.f29368l.get(i9).removeAllListeners();
                this.f29368l.get(i9).removeAllUpdateListeners();
            }
        }
    }

    public BallPulseFooter r(@ColorInt int i9) {
        this.f29364h = i9;
        this.f29361e = true;
        if (this.f29367k) {
            this.f29362f.setColor(i9);
        }
        return this;
    }

    public BallPulseFooter s(@ColorInt int i9) {
        this.f29363g = i9;
        this.f29360d = true;
        if (!this.f29367k) {
            this.f29362f.setColor(i9);
        }
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (!this.f29361e && iArr.length > 1) {
            r(iArr[0]);
            this.f29361e = false;
        }
        if (this.f29360d) {
            return;
        }
        if (iArr.length > 1) {
            s(iArr[1]);
        } else if (iArr.length > 0) {
            s(ColorUtils.compositeColors(-1711276033, iArr[0]));
        }
        this.f29360d = false;
    }

    public BallPulseFooter(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BallPulseFooter(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i9) {
        super(context, attributeSet, i9);
        this.f29363g = -1118482;
        this.f29364h = -1615546;
        this.f29366j = new float[]{1.0f, 1.0f, 1.0f};
        this.f29367k = false;
        this.f29369m = new HashMap();
        setMinimumHeight(b.b(60.0f));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.BallPulseFooter);
        Paint paint = new Paint();
        this.f29362f = paint;
        paint.setColor(-1);
        this.f29362f.setStyle(Paint.Style.FILL);
        this.f29362f.setAntiAlias(true);
        this.f29434b = SpinnerStyle.Translate;
        this.f29434b = SpinnerStyle.values()[obtainStyledAttributes.getInt(R$styleable.BallPulseFooter_srlClassicsSpinnerStyle, this.f29434b.ordinal())];
        int i10 = R$styleable.BallPulseFooter_srlNormalColor;
        if (obtainStyledAttributes.hasValue(i10)) {
            s(obtainStyledAttributes.getColor(i10, 0));
        }
        int i11 = R$styleable.BallPulseFooter_srlAnimatingColor;
        if (obtainStyledAttributes.hasValue(i11)) {
            r(obtainStyledAttributes.getColor(i11, 0));
        }
        obtainStyledAttributes.recycle();
        this.f29365i = b.b(4.0f);
        this.f29368l = new ArrayList<>();
        int[] iArr = {120, 240, 360};
        for (int i12 = 0; i12 < 3; i12++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.3f, 1.0f);
            ofFloat.setDuration(750L);
            ofFloat.setRepeatCount(-1);
            ofFloat.setTarget(Integer.valueOf(i12));
            ofFloat.setStartDelay(iArr[i12]);
            this.f29369m.put(ofFloat, new a(i12, this));
            this.f29368l.add(ofFloat);
        }
    }
}
