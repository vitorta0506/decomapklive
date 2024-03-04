package hd;

import android.animation.IntEvaluator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.annotation.NonNull;
import ed.b;
/* loaded from: classes4.dex */
public class g extends hd.a<ValueAnimator> {

    /* renamed from: d  reason: collision with root package name */
    private gd.e f40598d;

    /* renamed from: e  reason: collision with root package name */
    private int f40599e;

    /* renamed from: f  reason: collision with root package name */
    private int f40600f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            g.this.j(valueAnimator);
        }
    }

    public g(@NonNull b.a aVar) {
        super(aVar);
        this.f40599e = -1;
        this.f40600f = -1;
        this.f40598d = new gd.e();
    }

    private PropertyValuesHolder h() {
        PropertyValuesHolder ofInt = PropertyValuesHolder.ofInt("ANIMATION_COORDINATE", this.f40599e, this.f40600f);
        ofInt.setEvaluator(new IntEvaluator());
        return ofInt;
    }

    private boolean i(int i9, int i10) {
        return (this.f40599e == i9 && this.f40600f == i10) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(@NonNull ValueAnimator valueAnimator) {
        this.f40598d.b(((Integer) valueAnimator.getAnimatedValue("ANIMATION_COORDINATE")).intValue());
        b.a aVar = this.f40571b;
        if (aVar != null) {
            aVar.a(this.f40598d);
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
    public g d(float f10) {
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
    public g l(int i9, int i10) {
        if (this.f40572c != 0 && i(i9, i10)) {
            this.f40599e = i9;
            this.f40600f = i10;
            ((ValueAnimator) this.f40572c).setValues(h());
        }
        return this;
    }
}
