package hd;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.annotation.NonNull;
import ed.b;
import hd.j;
/* loaded from: classes4.dex */
public class i extends j {

    /* renamed from: k  reason: collision with root package name */
    private gd.g f40606k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            i.this.r(valueAnimator);
        }
    }

    public i(@NonNull b.a aVar) {
        super(aVar);
        this.f40606k = new gd.g();
    }

    private ValueAnimator p(int i9, int i10, long j10) {
        ValueAnimator ofInt = ValueAnimator.ofInt(i9, i10);
        ofInt.setInterpolator(new AccelerateDecelerateInterpolator());
        ofInt.setDuration(j10);
        ofInt.addUpdateListener(new a());
        return ofInt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(@NonNull ValueAnimator valueAnimator) {
        this.f40606k.f(((Integer) valueAnimator.getAnimatedValue()).intValue());
        b.a aVar = this.f40571b;
        if (aVar != null) {
            aVar.a(this.f40606k);
        }
    }

    @Override // hd.j
    public j n(int i9, int i10, int i11, boolean z10) {
        if (k(i9, i10, i11, z10)) {
            this.f40572c = a();
            this.f40608d = i9;
            this.f40609e = i10;
            this.f40610f = i11;
            this.f40611g = z10;
            int i12 = i11 * 2;
            int i13 = i9 - i11;
            this.f40612h = i13;
            this.f40613i = i9 + i11;
            this.f40606k.d(i13);
            this.f40606k.c(this.f40613i);
            this.f40606k.f(i12);
            j.b h10 = h(z10);
            long j10 = this.f40570a;
            long j11 = (long) (j10 * 0.8d);
            long j12 = (long) (j10 * 0.2d);
            long j13 = (long) (j10 * 0.5d);
            long j14 = (long) (j10 * 0.5d);
            ValueAnimator i14 = i(h10.f40618a, h10.f40619b, j11, false, this.f40606k);
            ValueAnimator i15 = i(h10.f40620c, h10.f40621d, j11, true, this.f40606k);
            i15.setStartDelay(j12);
            ValueAnimator p10 = p(i12, i11, j13);
            ValueAnimator p11 = p(i11, i12, j13);
            p11.setStartDelay(j14);
            ((AnimatorSet) this.f40572c).playTogether(i14, i15, p10, p11);
        }
        return this;
    }

    @Override // hd.j
    /* renamed from: q */
    public i j(long j10) {
        super.j(j10);
        return this;
    }

    @Override // hd.j
    /* renamed from: s */
    public i m(float f10) {
        T t10 = this.f40572c;
        if (t10 != 0) {
            long j10 = f10 * ((float) this.f40570a);
            int size = ((AnimatorSet) t10).getChildAnimations().size();
            for (int i9 = 0; i9 < size; i9++) {
                ValueAnimator valueAnimator = (ValueAnimator) ((AnimatorSet) this.f40572c).getChildAnimations().get(i9);
                long startDelay = j10 - valueAnimator.getStartDelay();
                long duration = valueAnimator.getDuration();
                if (startDelay > duration) {
                    startDelay = duration;
                } else if (startDelay < 0) {
                    startDelay = 0;
                }
                if ((i9 != size - 1 || startDelay > 0) && valueAnimator.getValues() != null && valueAnimator.getValues().length > 0) {
                    valueAnimator.setCurrentPlayTime(startDelay);
                }
            }
        }
        return this;
    }
}
