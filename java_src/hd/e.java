package hd;

import android.animation.IntEvaluator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.annotation.NonNull;
import ed.b;
/* loaded from: classes4.dex */
public class e extends b {

    /* renamed from: g  reason: collision with root package name */
    int f40594g;

    /* renamed from: h  reason: collision with root package name */
    float f40595h;

    /* renamed from: i  reason: collision with root package name */
    private gd.d f40596i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            e.this.j(valueAnimator);
        }
    }

    public e(@NonNull b.a aVar) {
        super(aVar);
        this.f40596i = new gd.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(@NonNull ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue("ANIMATION_COLOR")).intValue();
        int intValue2 = ((Integer) valueAnimator.getAnimatedValue("ANIMATION_COLOR_REVERSE")).intValue();
        int intValue3 = ((Integer) valueAnimator.getAnimatedValue("ANIMATION_SCALE")).intValue();
        int intValue4 = ((Integer) valueAnimator.getAnimatedValue("ANIMATION_SCALE_REVERSE")).intValue();
        this.f40596i.c(intValue);
        this.f40596i.d(intValue2);
        this.f40596i.g(intValue3);
        this.f40596i.h(intValue4);
        b.a aVar = this.f40571b;
        if (aVar != null) {
            aVar.a(this.f40596i);
        }
    }

    private boolean o(int i9, int i10, int i11, float f10) {
        return (this.f40574e == i9 && this.f40575f == i10 && this.f40594g == i11 && this.f40595h == f10) ? false : true;
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
    protected PropertyValuesHolder n(boolean z10) {
        int i9;
        int i10;
        String str;
        if (z10) {
            i10 = this.f40594g;
            i9 = (int) (i10 * this.f40595h);
            str = "ANIMATION_SCALE_REVERSE";
        } else {
            i9 = this.f40594g;
            i10 = (int) (i9 * this.f40595h);
            str = "ANIMATION_SCALE";
        }
        PropertyValuesHolder ofInt = PropertyValuesHolder.ofInt(str, i10, i9);
        ofInt.setEvaluator(new IntEvaluator());
        return ofInt;
    }

    @NonNull
    public e p(int i9, int i10, int i11, float f10) {
        if (this.f40572c != 0 && o(i9, i10, i11, f10)) {
            this.f40574e = i9;
            this.f40575f = i10;
            this.f40594g = i11;
            this.f40595h = f10;
            ((ValueAnimator) this.f40572c).setValues(h(false), h(true), n(false), n(true));
        }
        return this;
    }
}
