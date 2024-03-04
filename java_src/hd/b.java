package hd;

import android.animation.ArgbEvaluator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import ed.b;
/* loaded from: classes4.dex */
public class b extends hd.a<ValueAnimator> {

    /* renamed from: d  reason: collision with root package name */
    private gd.a f40573d;

    /* renamed from: e  reason: collision with root package name */
    int f40574e;

    /* renamed from: f  reason: collision with root package name */
    int f40575f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            b.this.j(valueAnimator);
        }
    }

    public b(@Nullable b.a aVar) {
        super(aVar);
        this.f40573d = new gd.a();
    }

    private boolean i(int i9, int i10) {
        return (this.f40574e == i9 && this.f40575f == i10) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(@NonNull ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue("ANIMATION_COLOR")).intValue();
        int intValue2 = ((Integer) valueAnimator.getAnimatedValue("ANIMATION_COLOR_REVERSE")).intValue();
        this.f40573d.c(intValue);
        this.f40573d.d(intValue2);
        b.a aVar = this.f40571b;
        if (aVar != null) {
            aVar.a(this.f40573d);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public PropertyValuesHolder h(boolean z10) {
        int i9;
        int i10;
        String str;
        if (z10) {
            i9 = this.f40575f;
            i10 = this.f40574e;
            str = "ANIMATION_COLOR_REVERSE";
        } else {
            i9 = this.f40574e;
            i10 = this.f40575f;
            str = "ANIMATION_COLOR";
        }
        PropertyValuesHolder ofInt = PropertyValuesHolder.ofInt(str, i9, i10);
        ofInt.setEvaluator(new ArgbEvaluator());
        return ofInt;
    }

    @Override // hd.a
    /* renamed from: k */
    public b d(float f10) {
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
    public b l(int i9, int i10) {
        if (this.f40572c != 0 && i(i9, i10)) {
            this.f40574e = i9;
            this.f40575f = i10;
            ((ValueAnimator) this.f40572c).setValues(h(false), h(true));
        }
        return this;
    }
}
