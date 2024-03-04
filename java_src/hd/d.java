package hd;

import android.animation.IntEvaluator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.annotation.NonNull;
import ed.b;
/* loaded from: classes4.dex */
public class d extends b {

    /* renamed from: g  reason: collision with root package name */
    private gd.c f40590g;

    /* renamed from: h  reason: collision with root package name */
    private int f40591h;

    /* renamed from: i  reason: collision with root package name */
    private int f40592i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            d.this.j(valueAnimator);
        }
    }

    public d(@NonNull b.a aVar) {
        super(aVar);
        this.f40590g = new gd.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(@NonNull ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue("ANIMATION_COLOR")).intValue();
        int intValue2 = ((Integer) valueAnimator.getAnimatedValue("ANIMATION_COLOR_REVERSE")).intValue();
        int intValue3 = ((Integer) valueAnimator.getAnimatedValue("ANIMATION_RADIUS")).intValue();
        int intValue4 = ((Integer) valueAnimator.getAnimatedValue("ANIMATION_RADIUS_REVERSE")).intValue();
        int intValue5 = ((Integer) valueAnimator.getAnimatedValue("ANIMATION_STROKE")).intValue();
        int intValue6 = ((Integer) valueAnimator.getAnimatedValue("ANIMATION_STROKE_REVERSE")).intValue();
        this.f40590g.c(intValue);
        this.f40590g.d(intValue2);
        this.f40590g.i(intValue3);
        this.f40590g.j(intValue4);
        this.f40590g.k(intValue5);
        this.f40590g.l(intValue6);
        b.a aVar = this.f40571b;
        if (aVar != null) {
            aVar.a(this.f40590g);
        }
    }

    @NonNull
    private PropertyValuesHolder n(boolean z10) {
        int i9;
        int i10;
        String str;
        if (z10) {
            i10 = this.f40591h;
            i9 = i10 / 2;
            str = "ANIMATION_RADIUS_REVERSE";
        } else {
            i9 = this.f40591h;
            i10 = i9 / 2;
            str = "ANIMATION_RADIUS";
        }
        PropertyValuesHolder ofInt = PropertyValuesHolder.ofInt(str, i9, i10);
        ofInt.setEvaluator(new IntEvaluator());
        return ofInt;
    }

    @NonNull
    private PropertyValuesHolder o(boolean z10) {
        String str;
        int i9;
        int i10;
        if (z10) {
            i10 = this.f40591h;
            str = "ANIMATION_STROKE_REVERSE";
            i9 = 0;
        } else {
            str = "ANIMATION_STROKE";
            i9 = this.f40591h;
            i10 = 0;
        }
        PropertyValuesHolder ofInt = PropertyValuesHolder.ofInt(str, i10, i9);
        ofInt.setEvaluator(new IntEvaluator());
        return ofInt;
    }

    private boolean p(int i9, int i10, int i11, int i12) {
        return (this.f40574e == i9 && this.f40575f == i10 && this.f40591h == i11 && this.f40592i == i12) ? false : true;
    }

    @Override // hd.b, hd.a
    @NonNull
    /* renamed from: g */
    public ValueAnimator a() {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setDuration(350L);
        valueAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimator.addUpdateListener(new a());
        return valueAnimator;
    }

    @NonNull
    public d q(int i9, int i10, int i11, int i12) {
        if (this.f40572c != 0 && p(i9, i10, i11, i12)) {
            this.f40574e = i9;
            this.f40575f = i10;
            this.f40591h = i11;
            this.f40592i = i12;
            ((ValueAnimator) this.f40572c).setValues(h(false), h(true), n(false), n(true), o(false), o(true));
        }
        return this;
    }
}
