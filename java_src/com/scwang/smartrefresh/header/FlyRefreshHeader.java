package com.scwang.smartrefresh.header;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.constraintlayout.motion.widget.Key;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.scwang.smartrefresh.header.flyrefresh.MountainSceneView;
import com.scwang.smartrefresh.layout.header.FalsifyHeader;
import wd.i;
import wd.j;
/* loaded from: classes4.dex */
public class FlyRefreshHeader extends FalsifyHeader {

    /* renamed from: e  reason: collision with root package name */
    protected View f29068e;

    /* renamed from: f  reason: collision with root package name */
    protected AnimatorSet f29069f;

    /* renamed from: g  reason: collision with root package name */
    protected j f29070g;

    /* renamed from: h  reason: collision with root package name */
    protected i f29071h;

    /* renamed from: i  reason: collision with root package name */
    protected MountainSceneView f29072i;

    /* renamed from: j  reason: collision with root package name */
    protected int f29073j;

    /* renamed from: k  reason: collision with root package name */
    protected float f29074k;

    /* renamed from: l  reason: collision with root package name */
    protected boolean f29075l;

    /* loaded from: classes4.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            FlyRefreshHeader.this.o(true, ((Float) valueAnimator.getAnimatedValue()).floatValue(), 0, 0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            View view = FlyRefreshHeader.this.f29068e;
            if (view != null) {
                view.setRotationY(180.0f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AnimatorListenerAdapter f29078a;

        c(AnimatorListenerAdapter animatorListenerAdapter) {
            this.f29078a = animatorListenerAdapter;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            j jVar = FlyRefreshHeader.this.f29070g;
            if (jVar != null) {
                jVar.f(true);
            }
            AnimatorListenerAdapter animatorListenerAdapter = this.f29078a;
            if (animatorListenerAdapter != null) {
                animatorListenerAdapter.onAnimationEnd(animator);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            View view = FlyRefreshHeader.this.f29068e;
            if (view != null) {
                view.setRotationY(0.0f);
            }
        }
    }

    public FlyRefreshHeader(Context context) {
        super(context);
        this.f29073j = 0;
        this.f29075l = false;
    }

    @Override // com.scwang.smartrefresh.layout.header.FalsifyHeader, com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void a(@NonNull j jVar, int i9, int i10) {
        this.f29071h.d(0);
        float f10 = this.f29074k;
        if (f10 > 0.0f) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f10, 0.0f);
            ofFloat.setDuration(300L);
            ofFloat.addUpdateListener(new a());
            ofFloat.start();
            this.f29074k = 0.0f;
        }
        if (this.f29068e == null || this.f29075l) {
            return;
        }
        AnimatorSet animatorSet = this.f29069f;
        if (animatorSet != null) {
            animatorSet.end();
            this.f29068e.clearAnimation();
        }
        this.f29075l = true;
        jVar.f(false);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f29068e, "translationX", 0.0f, ((View) this.f29070g).getWidth() - this.f29068e.getLeft());
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f29068e, "translationY", 0.0f, ((-(this.f29068e.getTop() - this.f29073j)) * 2) / 3);
        ofFloat3.setInterpolator(PathInterpolatorCompat.create(0.7f, 1.0f));
        View view = this.f29068e;
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(view, Key.ROTATION, view.getRotation(), 0.0f);
        ofFloat4.setInterpolator(new DecelerateInterpolator());
        View view2 = this.f29068e;
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(view2, "rotationX", view2.getRotationX(), 50.0f);
        ofFloat5.setInterpolator(new DecelerateInterpolator());
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.setDuration(800L);
        View view3 = this.f29068e;
        float[] fArr = {view3.getScaleX(), 0.5f};
        View view4 = this.f29068e;
        animatorSet2.playTogether(ofFloat2, ofFloat3, ofFloat4, ofFloat5, ObjectAnimator.ofFloat(view3, "scaleX", fArr), ObjectAnimator.ofFloat(view4, "scaleY", view4.getScaleY(), 0.5f));
        this.f29069f = animatorSet2;
        animatorSet2.start();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public int c(@NonNull j jVar, boolean z10) {
        if (this.f29075l) {
            r();
        }
        return super.c(jVar, z10);
    }

    @Override // com.scwang.smartrefresh.layout.header.FalsifyHeader, com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void g(@NonNull i iVar, int i9, int i10) {
        this.f29071h = iVar;
        j k10 = iVar.k();
        this.f29070g = k10;
        k10.a(false);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void o(boolean z10, float f10, int i9, int i10, int i11) {
        if (z10 || !this.f29075l) {
            if (i9 < 0) {
                if (this.f29073j <= 0) {
                    return;
                }
                i9 = 0;
                f10 = 0.0f;
            }
            this.f29073j = i9;
            this.f29074k = f10;
            MountainSceneView mountainSceneView = this.f29072i;
            if (mountainSceneView != null) {
                mountainSceneView.c(f10);
                this.f29072i.postInvalidate();
            }
            View view = this.f29068e;
            if (view != null) {
                int i12 = i10 + i11;
                if (i12 > 0) {
                    view.setRotation((i9 * (-45.0f)) / i12);
                } else {
                    view.setRotation(f10 * (-45.0f));
                }
            }
        }
    }

    public void r() {
        s(null);
    }

    public void s(AnimatorListenerAdapter animatorListenerAdapter) {
        if (this.f29068e == null || !this.f29075l || this.f29070g == null) {
            return;
        }
        AnimatorSet animatorSet = this.f29069f;
        if (animatorSet != null) {
            animatorSet.end();
            this.f29068e.clearAnimation();
        }
        this.f29075l = false;
        this.f29070g.d(0);
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.setDuration(800L);
        View view = this.f29068e;
        float f10 = -this.f29068e.getRight();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationX", view.getTranslationX(), f10);
        View view2 = this.f29068e;
        float f11 = -ae.b.b(10.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view2, "translationY", view2.getTranslationY(), f11);
        ofFloat2.setInterpolator(PathInterpolatorCompat.create(0.1f, 1.0f));
        View view3 = this.f29068e;
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view3, Key.ROTATION, view3.getRotation(), 0.0f);
        View view4 = this.f29068e;
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(view4, "rotationX", view4.getRotationX(), 30.0f);
        ofFloat3.setInterpolator(new AccelerateInterpolator());
        View view5 = this.f29068e;
        float[] fArr = {view5.getScaleX(), 0.9f};
        View view6 = this.f29068e;
        animatorSet2.playTogether(ofFloat, ofFloat2, ofFloat3, ofFloat4, ObjectAnimator.ofFloat(view5, "scaleX", fArr), ObjectAnimator.ofFloat(view6, "scaleY", view6.getScaleY(), 0.9f));
        animatorSet2.addListener(new b());
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.setDuration(800L);
        animatorSet3.setInterpolator(new DecelerateInterpolator());
        animatorSet3.playTogether(ObjectAnimator.ofFloat(this.f29068e, "translationX", f10, 0.0f), ObjectAnimator.ofFloat(this.f29068e, "translationY", f11, 0.0f), ObjectAnimator.ofFloat(this.f29068e, "rotationX", 30.0f, 0.0f), ObjectAnimator.ofFloat(this.f29068e, "scaleX", 0.9f, 1.0f), ObjectAnimator.ofFloat(this.f29068e, "scaleY", 0.9f, 1.0f));
        animatorSet3.setStartDelay(100L);
        animatorSet3.addListener(new c(animatorListenerAdapter));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.f29069f = animatorSet4;
        animatorSet4.playSequentially(animatorSet2, animatorSet3);
        this.f29069f.start();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        MountainSceneView mountainSceneView;
        if (iArr.length <= 0 || (mountainSceneView = this.f29072i) == null) {
            return;
        }
        mountainSceneView.setPrimaryColor(iArr[0]);
    }

    public FlyRefreshHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f29073j = 0;
        this.f29075l = false;
    }

    public FlyRefreshHeader(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f29073j = 0;
        this.f29075l = false;
    }
}
