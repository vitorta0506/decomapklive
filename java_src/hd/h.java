package hd;

import android.animation.IntEvaluator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.annotation.NonNull;
import ed.b;
/* loaded from: classes4.dex */
public class h extends hd.a<ValueAnimator> {

    /* renamed from: d  reason: collision with root package name */
    private int f40602d;

    /* renamed from: e  reason: collision with root package name */
    private int f40603e;

    /* renamed from: f  reason: collision with root package name */
    private gd.f f40604f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            h.this.j(valueAnimator);
        }
    }

    public h(@NonNull b.a aVar) {
        super(aVar);
        this.f40602d = -1;
        this.f40603e = -1;
        this.f40604f = new gd.f();
    }

    private PropertyValuesHolder h(String str, int i9, int i10) {
        PropertyValuesHolder ofInt = PropertyValuesHolder.ofInt(str, i9, i10);
        ofInt.setEvaluator(new IntEvaluator());
        return ofInt;
    }

    private boolean i(int i9, int i10) {
        return (this.f40602d == i9 && this.f40603e == i10) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(@NonNull ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue("ANIMATION_COORDINATE")).intValue();
        int intValue2 = ((Integer) valueAnimator.getAnimatedValue("ANIMATION_COORDINATE_REVERSE")).intValue();
        this.f40604f.c(intValue);
        this.f40604f.d(intValue2);
        b.a aVar = this.f40571b;
        if (aVar != null) {
            aVar.a(this.f40604f);
        }
    }

    @Override // hd.a
    @NonNull
    /* renamed from: g */
    public ValueAnimator a() {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setDuration(350L);
        valueAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimator.addUpdateListener(new a());
        return valueAnimator;
    }

    @Override // hd.a
    /* renamed from: k */
    public h d(float f10) {
        T t10 = this.f40572c;
        if (t10 != 0) {
            long j10 = f10 * ((float) this.f40570a);
            if (((ValueAnimator) t10).getValues() != null && ((ValueAnimator) this.f40572c).getValues().length > 0) {
                ((ValueAnimator) this.f40572c).setCurrentPlayTime(j10);
            }
        }
        return this;
    }

    @NonNull
    public h l(int i9, int i10) {
        if (this.f40572c != 0 && i(i9, i10)) {
            this.f40602d = i9;
            this.f40603e = i10;
            ((ValueAnimator) this.f40572c).setValues(h("ANIMATION_COORDINATE", i9, i10), h("ANIMATION_COORDINATE_REVERSE", i10, i9));
        }
        return this;
    }
}
