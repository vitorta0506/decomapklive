package com.scwang.smartrefresh.header;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import wd.g;
import wd.j;
/* loaded from: classes4.dex */
public class TaurusHeader extends InternalAbstract implements g {

    /* renamed from: t  reason: collision with root package name */
    protected static String[] f29140t = {"m23.01,81.48c-0.21,-0.3 -0.38,-0.83 -0.38,-1.19 0,-0.55 0.24,-0.78 1.5,-1.48 1.78,-0.97 2.62,-1.94 2.24,-2.57 -0.57,-0.93 -1.97,-1.24 -11.64,-2.59 -5.35,-0.74 -10.21,-1.44 -10.82,-1.54l-1.09,-0.18 1.19,-0.91c0.99,-0.76 1.38,-0.91 2.35,-0.91 0.64,0 6.39,0.33 12.79,0.74 6.39,0.41 12.09,0.71 12.65,0.67l1.03,-0.07 -1.24,-2.19C30.18,66.77 15.91,42 15.13,40.68l-0.51,-0.87 4.19,-1.26c2.3,-0.69 4.27,-1.26 4.37,-1.26 0.1,0 5.95,3.85 13,8.55 14.69,9.81 17.1,11.31 19.7,12.31 4.63,1.78 6.45,1.69 12.94,-0.64 13.18,-4.73 25.22,-9.13 25.75,-9.4 0.69,-0.36 3.6,1.33 -24.38,-14.22L50.73,23.07 46.74,16.42 42.75,9.77 43.63,8.89c0.83,-0.83 0.91,-0.86 1.46,-0.52 0.32,0.2 3.72,3.09 7.55,6.44 3.83,3.34 7.21,6.16 7.5,6.27 0.29,0.11 13.6,2.82 29.58,6.03 15.98,3.21 31.86,6.4 35.3,7.1l6.26,1.26 3.22,-1.13c41.63,-14.63 67.88,-23.23 85.38,-28 14.83,-4.04 23.75,-4.75 32.07,-2.57 7.04,1.84 9.87,4.88 7.71,8.27 -1.6,2.5 -4.6,4.63 -10.61,7.54 -5.94,2.88 -10.22,4.46 -25.4,9.41 -8.15,2.66 -16.66,5.72 -39.01,14.02 -66.79,24.82 -88.49,31.25 -121.66,36.07 -14.56,2.11 -24.17,2.95 -34.08,2.95 -5.43,0 -5.52,-0.01 -5.89,-0.54z"};

    /* renamed from: u  reason: collision with root package name */
    protected static int[] f29141u = {-1};

    /* renamed from: v  reason: collision with root package name */
    protected static String[] f29142v = {"M551.81,1.01A65.42,65.42 0,0 0,504.38 21.5A50.65,50.65 0,0 0,492.4 20A50.65,50.65 0,0 0,441.75 70.65A50.65,50.65 0,0 0,492.4 121.3A50.65,50.65 0,0 0,511.22 117.64A65.42,65.42 0,0 0,517.45 122L586.25,122A65.42,65.42 0,0 0,599.79 110.78A59.79,59.79 0,0 0,607.81 122L696.34,122A59.79,59.79 0,0 0,711.87 81.9A59.79,59.79 0,0 0,652.07 22.11A59.79,59.79 0,0 0,610.93 38.57A65.42,65.42 0,0 0,551.81 1.01zM246.2,1.71A54.87,54.87 0,0 0,195.14 36.64A46.78,46.78 0,0 0,167.77 27.74A46.78,46.78 0,0 0,120.99 74.52A46.78,46.78 0,0 0,167.77 121.3A46.78,46.78 0,0 0,208.92 96.74A54.87,54.87 0,0 0,246.2 111.45A54.87,54.87 0,0 0,268.71 106.54A39.04,39.04 0,0 0,281.09 122L327.6,122A39.04,39.04 0,0 0,343.38 90.7A39.04,39.04 0,0 0,304.34 51.66A39.04,39.04 0,0 0,300.82 51.85A54.87,54.87 0,0 0,246.2 1.71z", "m506.71,31.37a53.11,53.11 0,0 0,-53.11 53.11,53.11 53.11,0 0,0 15.55,37.5h75.12a53.11,53.11 0,0 0,1.88 -2.01,28.49 28.49,0 0,0 0.81,2.01h212.96a96.72,96.72 0,0 0,-87.09 -54.85,96.72 96.72,0 0,0 -73.14,33.52 28.49,28.49 0,0 0,-26.74 -18.74,28.49 28.49,0 0,0 -13.16,3.23 53.11,53.11 0,0 0,0.03 -0.66,53.11 53.11,0 0,0 -53.11,-53.11zM206.23,31.81a53.81,53.81 0,0 0,-49.99 34.03,74.91 74.91,0 0,0 -47.45,-17 74.91,74.91 0,0 0,-73.54 60.82,31.3 31.3,0 0,0 -10.17,-1.73 31.3,31.3 0,0 0,-26.09 14.05L300.86,121.98a37.63,37.63 0,0 0,0.2 -3.85,37.63 37.63,0 0,0 -37.63,-37.63 37.63,37.63 0,0 0,-3.65 0.21,53.81 53.81,0 0,0 -53.54,-48.9z", "m424.05,36.88a53.46,53.46 0,0 0,-40.89 19.02,53.46 53.46,0 0,0 -1.34,1.76 62.6,62.6 0,0 0,-5.39 -0.27,62.6 62.6,0 0,0 -61.36,50.17 62.6,62.6 0,0 0,-0.53 3.51,15.83 15.83,0 0,0 -10.33,-3.84 15.83,15.83 0,0 0,-8.06 2.23,21.1 21.1,0 0,0 -18.31,-10.67 21.1,21.1 0,0 0,-19.47 12.97,21.81 21.81,0 0,0 -6.56,-1.01 21.81,21.81 0,0 0,-19.09 11.32L522.84,122.07a43.61,43.61 0,0 0,-43.11 -37.35,43.61 43.61,0 0,0 -2.57,0.09 53.46,53.46 0,0 0,-53.11 -47.93zM129.08,38.4a50.29,50.29 0,0 0,-50.29 50.29,50.29 50.29,0 0,0 2.37,15.06 15.48,15.83 0,0 0,-5.87 1.68,15.48 15.83,0 0,0 -0.98,0.58 16.53,16.18 0,0 0,-0.19 -0.21,16.53 16.18,0 0,0 -11.86,-4.91 16.53,16.18 0,0 0,-16.38 14.13,20.05 16.18,0 0,0 -14.97,7.04L223.95,122.07a42.56,42.56 0,0 0,1.14 -9.56,42.56 42.56,0 0,0 -42.56,-42.56 42.56,42.56 0,0 0,-6.58 0.54,50.29 50.29,0 0,0 -0,-0.01 50.29,50.29 0,0 0,-46.88 -32.07zM631.67,82.61a64.01,64.01 0,0 0,-44.9 18.42,26.73 26.73,0 0,0 -10.67,-2.24 26.73,26.73 0,0 0,-22.72 12.71,16.88 16.88,0 0,0 -0.25,-0.12 16.88,16.88 0,0 0,-6.57 -1.33,16.88 16.88,0 0,0 -16.15,12.03h160.36a64.01,64.01 0,0 0,-59.1 -39.46z"};

    /* renamed from: w  reason: collision with root package name */
    protected static int[] f29143w = {-1429742351, -571935747, -131587};

    /* renamed from: x  reason: collision with root package name */
    protected static final Interpolator f29144x = new AccelerateDecelerateInterpolator();

    /* renamed from: d  reason: collision with root package name */
    protected Drawable f29145d;

    /* renamed from: e  reason: collision with root package name */
    protected Drawable f29146e;

    /* renamed from: f  reason: collision with root package name */
    protected Matrix f29147f;

    /* renamed from: g  reason: collision with root package name */
    protected float f29148g;

    /* renamed from: h  reason: collision with root package name */
    protected int f29149h;

    /* renamed from: i  reason: collision with root package name */
    protected Animation f29150i;

    /* renamed from: j  reason: collision with root package name */
    protected boolean f29151j;

    /* renamed from: k  reason: collision with root package name */
    protected float f29152k;

    /* renamed from: l  reason: collision with root package name */
    protected float f29153l;

    /* renamed from: m  reason: collision with root package name */
    protected Random f29154m;

    /* renamed from: n  reason: collision with root package name */
    protected Map<Float, Float> f29155n;

    /* renamed from: o  reason: collision with root package name */
    protected Paint f29156o;

    /* renamed from: p  reason: collision with root package name */
    protected float f29157p;

    /* renamed from: q  reason: collision with root package name */
    protected boolean f29158q;

    /* renamed from: r  reason: collision with root package name */
    protected boolean f29159r;

    /* renamed from: s  reason: collision with root package name */
    protected float f29160s;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4.dex */
    public enum AnimationPart {
        FIRST,
        SECOND,
        THIRD,
        FOURTH
    }

    /* loaded from: classes4.dex */
    class a extends Animation {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f29161a;

        a(View view) {
            this.f29161a = view;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f10, @NonNull Transformation transformation) {
            TaurusHeader.this.f29152k = (f10 / 6.0f) * 80.0f;
            this.f29161a.invalidate();
        }
    }

    /* loaded from: classes4.dex */
    class b extends Animation {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f29163a;

        b(View view) {
            this.f29163a = view;
            super.setDuration(100L);
            super.setInterpolator(new AccelerateInterpolator());
        }

        @Override // android.view.animation.Animation
        protected void applyTransformation(float f10, Transformation transformation) {
            if (f10 == 1.0f) {
                TaurusHeader.this.f29151j = false;
            }
            TaurusHeader.this.f29160s = f10;
            this.f29163a.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f29165a;

        static {
            int[] iArr = new int[AnimationPart.values().length];
            f29165a = iArr;
            try {
                iArr[AnimationPart.FIRST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29165a[AnimationPart.SECOND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f29165a[AnimationPart.THIRD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f29165a[AnimationPart.FOURTH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public TaurusHeader(Context context) {
        this(context, null);
    }

    private boolean r(AnimationPart animationPart) {
        int i9 = c.f29165a[animationPart.ordinal()];
        return i9 != 1 ? (i9 == 2 || i9 == 3) ? this.f29152k < ((float) x(animationPart)) : i9 == 4 && this.f29152k > ((float) x(AnimationPart.THIRD)) : this.f29152k < ((float) x(AnimationPart.FOURTH));
    }

    private void s(Canvas canvas, int i9, int i10) {
        float f10;
        float w6;
        float w8;
        Matrix matrix = this.f29147f;
        matrix.reset();
        float f11 = this.f29148g;
        if (isInEditMode()) {
            this.f29149h = i10;
            f11 = 1.0f;
        }
        if (f11 > 1.0f) {
            f10 = ((float) (1.0d - Math.pow(100.0d, (-(f11 - 1.0f)) / 2.0f))) * 20.0f;
            f11 = 1.0f;
        } else {
            f10 = 0.0f;
        }
        float width = ((i9 * f11) / 2.0f) - (this.f29145d.getBounds().width() / 2);
        float height = (this.f29149h * (1.0f - (f11 / 2.0f))) - (this.f29145d.getBounds().height() / 2);
        float f12 = this.f29160s;
        if (f12 > 0.0f) {
            height += (0.0f - height) * f12;
            width += ((i9 + this.f29145d.getBounds().width()) - width) * this.f29160s;
        }
        if (this.f29151j) {
            AnimationPart animationPart = AnimationPart.FIRST;
            if (r(animationPart)) {
                w8 = w(animationPart);
            } else {
                AnimationPart animationPart2 = AnimationPart.SECOND;
                if (r(animationPart2)) {
                    w8 = w(animationPart2);
                } else {
                    AnimationPart animationPart3 = AnimationPart.THIRD;
                    if (r(animationPart3)) {
                        w6 = w(animationPart3);
                    } else {
                        AnimationPart animationPart4 = AnimationPart.FOURTH;
                        if (r(animationPart4)) {
                            w6 = w(animationPart4);
                        }
                    }
                    height += w6;
                }
            }
            height -= w8;
        }
        if (f10 > 0.0f) {
            matrix.postRotate(f10, this.f29145d.getBounds().width() / 2, this.f29145d.getBounds().height() / 2);
        }
        int saveCount = canvas.getSaveCount();
        canvas.save();
        canvas.translate(width, height);
        canvas.concat(matrix);
        this.f29145d.draw(canvas);
        canvas.restoreToCount(saveCount);
    }

    private void t(Canvas canvas, int i9, int i10) {
        float f10;
        boolean z10;
        float f11;
        float w6;
        float f12;
        float w8;
        Matrix matrix = this.f29147f;
        matrix.reset();
        float min = Math.min(1.0f, Math.abs(this.f29148g));
        if (isInEditMode()) {
            this.f29149h = i10;
            min = 1.0f;
        }
        float f13 = this.f29148g;
        boolean z11 = true;
        if (f13 > 1.0f) {
            f10 = Math.abs(1.0f - f13);
            z10 = true;
        } else {
            f10 = 0.0f;
            z10 = false;
        }
        float f14 = min - 0.5f;
        float f15 = f14 > 0.0f ? 0.8f + ((f14 / 0.5f) * 0.19999999f) : 0.8f;
        int i11 = this.f29149h;
        float f16 = i11 * min;
        float height = i11 - (this.f29146e.getBounds().height() / 2);
        if (f16 > height) {
            f11 = f16 - height;
        } else {
            f11 = 0.0f;
            z11 = false;
        }
        float width = (i9 / 2) - (this.f29146e.getBounds().width() / 2);
        float height2 = f16 - (z11 ? (this.f29146e.getBounds().height() / 2) + f11 : this.f29146e.getBounds().height() / 2);
        float f17 = z10 ? (f10 / 4.0f) + f15 : f15;
        float f18 = z10 ? (f10 / 2.0f) + f15 : f15;
        if (this.f29151j && !z10) {
            AnimationPart animationPart = AnimationPart.FIRST;
            if (r(animationPart)) {
                w8 = w(animationPart);
            } else {
                AnimationPart animationPart2 = AnimationPart.SECOND;
                if (r(animationPart2)) {
                    w8 = w(animationPart2);
                } else {
                    AnimationPart animationPart3 = AnimationPart.THIRD;
                    if (r(animationPart3)) {
                        w6 = w(animationPart3);
                    } else {
                        AnimationPart animationPart4 = AnimationPart.FOURTH;
                        if (r(animationPart4)) {
                            w6 = w(animationPart4);
                        }
                        f18 = f17;
                    }
                    f12 = f15 + ((w6 / 80.0f) / 6.0f);
                    f17 = f12;
                    f18 = f17;
                }
            }
            f12 = f15 - ((w8 / 80.0f) / 8.0f);
            f17 = f12;
            f18 = f17;
        }
        matrix.postScale(f17, f18, this.f29146e.getBounds().width() / 2, 0.0f);
        float f19 = i10 + 2;
        if ((this.f29146e.getBounds().height() * f18) + height2 < f19) {
            height2 = f19 - (f18 * this.f29146e.getBounds().height());
        }
        int saveCount = canvas.getSaveCount();
        canvas.save();
        canvas.translate(width, height2);
        canvas.concat(matrix);
        this.f29146e.draw(canvas);
        canvas.restoreToCount(saveCount);
    }

    private void u(Canvas canvas, int i9, int i10) {
        float w6;
        float w8;
        Matrix matrix = this.f29147f;
        matrix.reset();
        Drawable drawable = this.f29146e;
        float min = Math.min(1.0f, Math.abs(this.f29148g));
        if (isInEditMode()) {
            this.f29149h = i10;
            min = 1.0f;
        }
        float f10 = min - 0.5f;
        float f11 = f10 > 0.0f ? 0.6f + ((f10 / 0.5f) * 0.39999998f) : 0.6f;
        float f12 = this.f29149h * (1.0f - min);
        float width = 0 - (drawable.getBounds().width() / 2);
        float width2 = i9 - (drawable.getBounds().width() / 2);
        if (this.f29151j) {
            AnimationPart animationPart = AnimationPart.FIRST;
            if (r(animationPart)) {
                width -= (w(animationPart) * 2.0f) / 4.0f;
                w8 = w(animationPart);
            } else {
                AnimationPart animationPart2 = AnimationPart.SECOND;
                if (r(animationPart2)) {
                    width -= (w(animationPart2) * 2.0f) / 4.0f;
                    w8 = w(animationPart2);
                } else {
                    AnimationPart animationPart3 = AnimationPart.THIRD;
                    if (r(animationPart3)) {
                        width -= w(animationPart3) / 4.0f;
                        w8 = w(animationPart3) * 2.0f;
                    } else {
                        AnimationPart animationPart4 = AnimationPart.FOURTH;
                        if (r(animationPart4)) {
                            width -= w(animationPart4) / 2.0f;
                            w6 = (w(animationPart4) * 2.0f) / 4.0f;
                            width2 += w6;
                        }
                    }
                }
            }
            w6 = w8 / 2.0f;
            width2 += w6;
        }
        float f13 = i10 + 2;
        float height = (((float) drawable.getBounds().height()) * f11) + f12 < f13 ? f13 - (drawable.getBounds().height() * f11) : f12;
        if ((drawable.getBounds().height() * f11) + f12 < f13) {
            f12 = f13 - (drawable.getBounds().height() * f11);
        }
        int saveCount = canvas.getSaveCount();
        canvas.save();
        canvas.translate(width, height);
        matrix.postScale(f11, f11, (drawable.getBounds().width() * 3) / 4, drawable.getBounds().height());
        canvas.concat(matrix);
        drawable.setAlpha(100);
        drawable.draw(canvas);
        drawable.setAlpha(255);
        canvas.restoreToCount(saveCount);
        canvas.save();
        canvas.translate(width2, f12);
        matrix.postScale(f11, f11, 0.0f, drawable.getBounds().height());
        canvas.concat(matrix);
        drawable.setAlpha(100);
        drawable.draw(canvas);
        drawable.setAlpha(255);
        canvas.restoreToCount(saveCount);
    }

    private void v(Canvas canvas, float f10, float f11, int i9) {
        float f12 = i9;
        float f13 = (f12 + f11) / 13.0f;
        float f14 = this.f29152k;
        if (this.f29153l - f14 > 0.0f) {
            this.f29159r = true;
            f14 = 13.0f - f14;
        } else {
            this.f29158q = true;
            this.f29159r = false;
        }
        float f15 = (f12 - (f14 * f13)) + f11;
        float f16 = this.f29157p;
        float f17 = f15 - f16;
        canvas.drawLine(f17, f10, f17 + f16, f10, this.f29156o);
    }

    private float w(AnimationPart animationPart) {
        float f10;
        float x10;
        int i9 = c.f29165a[animationPart.ordinal()];
        if (i9 != 1) {
            if (i9 == 2) {
                AnimationPart animationPart2 = AnimationPart.FOURTH;
                return x(animationPart2) - (this.f29152k - x(animationPart2));
            }
            if (i9 == 3) {
                f10 = this.f29152k;
                x10 = x(AnimationPart.SECOND);
            } else if (i9 != 4) {
                return 0.0f;
            } else {
                f10 = x(AnimationPart.THIRD);
                x10 = this.f29152k - x(AnimationPart.FOURTH);
            }
            return f10 - x10;
        }
        return this.f29152k;
    }

    private int x(AnimationPart animationPart) {
        int i9 = c.f29165a[animationPart.ordinal()];
        if (i9 != 2) {
            if (i9 != 3) {
                return i9 != 4 ? 0 : 20;
            }
            return x(AnimationPart.FOURTH) * 3;
        }
        return 40;
    }

    private float y(int i9, int i10) {
        return this.f29154m.nextInt((i10 - i9) + 1) + i9;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public int c(@NonNull j jVar, boolean z10) {
        clearAnimation();
        if (z10) {
            startAnimation(new b(this));
            return 200;
        }
        this.f29151j = false;
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float f10;
        int width = getWidth();
        int height = getHeight();
        if (this.f29151j) {
            while (this.f29155n.size() < 10) {
                float random = (float) (this.f29149h / (Math.random() * 5.0d));
                float y10 = y(1000, 2000);
                if (this.f29155n.size() > 1) {
                    while (true) {
                        f10 = 0.0f;
                        while (f10 == 0.0f) {
                            float random2 = (float) (this.f29149h / (Math.random() * 5.0d));
                            Iterator<Map.Entry<Float, Float>> it = this.f29155n.entrySet().iterator();
                            while (it.hasNext()) {
                                if (Math.abs(it.next().getKey().floatValue() - random2) > this.f29149h / 5) {
                                    f10 = random2;
                                }
                            }
                        }
                    }
                    random = f10;
                }
                this.f29155n.put(Float.valueOf(random), Float.valueOf(y10));
                v(canvas, random, y10, width);
            }
            if (this.f29155n.size() >= 10) {
                for (Map.Entry<Float, Float> entry : this.f29155n.entrySet()) {
                    v(canvas, entry.getKey().floatValue(), entry.getValue().floatValue(), width);
                }
            }
            if (this.f29159r && this.f29158q) {
                this.f29155n.clear();
                this.f29158q = false;
                this.f29157p = y(50, 300);
            }
            this.f29153l = this.f29152k;
        }
        s(canvas, width, height);
        u(canvas, width, height);
        t(canvas, width, height);
        super.dispatchDraw(canvas);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void k(@NonNull j jVar, int i9, int i10) {
        this.f29151j = true;
        this.f29160s = 0.0f;
        startAnimation(this.f29150i);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void o(boolean z10, float f10, int i9, int i10, int i11) {
        this.f29148g = f10;
        this.f29149h = i10;
        if (z10) {
            this.f29160s = 0.0f;
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        setBackgroundColor(iArr[0]);
    }

    public TaurusHeader(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TaurusHeader(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f29151j = false;
        ae.b bVar = new ae.b();
        setMinimumHeight(bVar.a(100.0f));
        this.f29147f = new Matrix();
        this.f29155n = new HashMap();
        this.f29154m = new Random();
        Paint paint = new Paint();
        this.f29156o = paint;
        paint.setColor(-1);
        this.f29156o.setStrokeWidth(bVar.a(3.0f));
        this.f29156o.setAlpha(50);
        this.f29434b = SpinnerStyle.Scale;
        a aVar = new a(this);
        this.f29150i = aVar;
        aVar.setRepeatCount(-1);
        this.f29150i.setRepeatMode(2);
        this.f29150i.setInterpolator(f29144x);
        this.f29150i.setDuration(1000L);
        sd.b bVar2 = new sd.b();
        if (!bVar2.g(f29140t)) {
            bVar2.c(3, 3, 257, 79);
        }
        bVar2.f(f29141u);
        sd.b bVar3 = new sd.b();
        if (!bVar3.g(f29142v)) {
            bVar3.c(-1, 1, 761, 121);
        }
        bVar3.f(f29143w);
        this.f29145d = bVar2;
        this.f29146e = bVar3;
        bVar2.setBounds(0, 0, bVar.a(65.0f), bVar.a(20.0f));
        this.f29146e.setBounds(0, 0, bVar.a(260.0f), bVar.a(45.0f));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TaurusHeader);
        int color = obtainStyledAttributes.getColor(R$styleable.TaurusHeader_thPrimaryColor, 0);
        if (color != 0) {
            setBackgroundColor(color);
        } else {
            setBackgroundColor(-15614977);
        }
        obtainStyledAttributes.recycle();
    }
}
