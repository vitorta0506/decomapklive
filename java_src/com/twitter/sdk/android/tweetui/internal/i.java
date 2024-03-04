package com.twitter.sdk.android.tweetui.internal;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
/* loaded from: classes4.dex */
public class i implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private int f35547a;

    /* renamed from: b  reason: collision with root package name */
    private float f35548b;

    /* renamed from: c  reason: collision with root package name */
    private final float f35549c;

    /* renamed from: d  reason: collision with root package name */
    private final float f35550d;

    /* renamed from: e  reason: collision with root package name */
    private a f35551e;

    /* renamed from: f  reason: collision with root package name */
    private float f35552f;

    /* renamed from: g  reason: collision with root package name */
    private float f35553g;

    /* renamed from: h  reason: collision with root package name */
    private int f35554h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f35555i;

    /* loaded from: classes4.dex */
    public interface a {
        void a(float f10);

        void onDismiss();
    }

    /* loaded from: classes4.dex */
    public interface b {
        boolean a();
    }

    i(a aVar, int i9, float f10) {
        this(aVar, i9, f10, 0.2f * f10);
    }

    public static i d(View view, a aVar) {
        return new i(aVar, ViewConfiguration.get(view.getContext()).getScaledTouchSlop(), view.getContext().getResources().getDisplayMetrics().heightPixels * 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        a aVar = this.f35551e;
        if (aVar != null) {
            aVar.a(floatValue);
        }
    }

    float b(float f10) {
        float f11 = this.f35549c;
        return f10 < (-f11) ? -f11 : f10 > f11 ? f11 : f10;
    }

    double c(float f10) {
        return 1.0d - (Math.pow(Math.abs(f10), 2.0d) / Math.pow(this.f35550d * 2.0f, 2.0d));
    }

    boolean e(View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    float rawX = motionEvent.getRawX();
                    float rawY = motionEvent.getRawY();
                    float f10 = rawY - this.f35548b;
                    float f11 = rawX - this.f35552f;
                    float f12 = rawY - this.f35553g;
                    this.f35552f = rawX;
                    this.f35553g = rawY;
                    if (i(motionEvent)) {
                        if (this.f35555i || (f(f10) && g(f11, f12))) {
                            this.f35555i = true;
                            k(view, f12);
                            return false;
                        }
                        return false;
                    }
                    return false;
                } else if (actionMasked != 3) {
                    if (actionMasked != 5) {
                        return false;
                    }
                    n(view);
                    this.f35555i = false;
                    this.f35554h = -1;
                    return false;
                }
            }
            boolean m10 = (i(motionEvent) && this.f35555i) ? m(view) : false;
            this.f35555i = false;
            return m10;
        }
        this.f35552f = motionEvent.getRawX();
        float rawY2 = motionEvent.getRawY();
        this.f35553g = rawY2;
        this.f35548b = rawY2;
        this.f35555i = false;
        this.f35554h = motionEvent.getPointerId(motionEvent.getPointerCount() - 1);
        return false;
    }

    boolean f(float f10) {
        return Math.abs(f10) > ((float) this.f35547a);
    }

    boolean g(float f10, float f11) {
        return Math.abs(f11) > Math.abs(f10);
    }

    boolean h() {
        return this.f35555i;
    }

    boolean i(MotionEvent motionEvent) {
        return this.f35554h >= 0 && motionEvent.getPointerCount() == 1;
    }

    void k(View view, float f10) {
        float translationY = view.getTranslationY();
        float b10 = b(translationY + ((float) (f10 * c(translationY))));
        view.setTranslationY(b10);
        a aVar = this.f35551e;
        if (aVar != null) {
            aVar.a(b10);
        }
    }

    public void l(a aVar) {
        this.f35551e = aVar;
    }

    boolean m(View view) {
        float translationY = view.getTranslationY();
        float f10 = this.f35550d;
        if (translationY <= f10 && translationY >= (-f10)) {
            n(view);
            return false;
        }
        a aVar = this.f35551e;
        if (aVar != null) {
            aVar.onDismiss();
            return true;
        }
        return true;
    }

    void n(View view) {
        if (view.getTranslationY() != 0.0f) {
            ObjectAnimator duration = ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, 0.0f).setDuration(100L);
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.twitter.sdk.android.tweetui.internal.h
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    i.this.j(valueAnimator);
                }
            });
            duration.start();
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return ((!(view instanceof b) || ((b) view).a() || h()) ? e(view, motionEvent) : false) || view.onTouchEvent(motionEvent);
    }

    i(a aVar, int i9, float f10, float f11) {
        l(aVar);
        this.f35547a = i9;
        this.f35549c = f10;
        this.f35550d = f11;
    }
}
