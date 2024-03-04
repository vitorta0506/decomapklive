package hd;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.annotation.NonNull;
import ed.b;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class j extends hd.a<AnimatorSet> {

    /* renamed from: d  reason: collision with root package name */
    int f40608d;

    /* renamed from: e  reason: collision with root package name */
    int f40609e;

    /* renamed from: f  reason: collision with root package name */
    int f40610f;

    /* renamed from: g  reason: collision with root package name */
    boolean f40611g;

    /* renamed from: h  reason: collision with root package name */
    int f40612h;

    /* renamed from: i  reason: collision with root package name */
    int f40613i;

    /* renamed from: j  reason: collision with root package name */
    private gd.h f40614j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ gd.h f40615a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f40616b;

        a(gd.h hVar, boolean z10) {
            this.f40615a = hVar;
            this.f40616b = z10;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            j.this.l(this.f40615a, valueAnimator, this.f40616b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        final int f40618a;

        /* renamed from: b  reason: collision with root package name */
        final int f40619b;

        /* renamed from: c  reason: collision with root package name */
        final int f40620c;

        /* renamed from: d  reason: collision with root package name */
        final int f40621d;

        b(int i9, int i10, int i11, int i12) {
            this.f40618a = i9;
            this.f40619b = i10;
            this.f40620c = i11;
            this.f40621d = i12;
        }
    }

    public j(@NonNull b.a aVar) {
        super(aVar);
        this.f40614j = new gd.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(@NonNull gd.h hVar, @NonNull ValueAnimator valueAnimator, boolean z10) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        if (this.f40611g) {
            if (!z10) {
                hVar.c(intValue);
            } else {
                hVar.d(intValue);
            }
        } else if (!z10) {
            hVar.d(intValue);
        } else {
            hVar.c(intValue);
        }
        b.a aVar = this.f40571b;
        if (aVar != null) {
            aVar.a(hVar);
        }
    }

    @Override // hd.a
    @NonNull
    /* renamed from: g */
    public AnimatorSet a() {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public b h(boolean z10) {
        int i9;
        int i10;
        int i11;
        int i12;
        if (z10) {
            int i13 = this.f40608d;
            int i14 = this.f40610f;
            i9 = i13 + i14;
            int i15 = this.f40609e;
            i10 = i15 + i14;
            i11 = i13 - i14;
            i12 = i15 - i14;
        } else {
            int i16 = this.f40608d;
            int i17 = this.f40610f;
            i9 = i16 - i17;
            int i18 = this.f40609e;
            i10 = i18 - i17;
            i11 = i16 + i17;
            i12 = i18 + i17;
        }
        return new b(i9, i10, i11, i12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ValueAnimator i(int i9, int i10, long j10, boolean z10, gd.h hVar) {
        ValueAnimator ofInt = ValueAnimator.ofInt(i9, i10);
        ofInt.setInterpolator(new AccelerateDecelerateInterpolator());
        ofInt.setDuration(j10);
        ofInt.addUpdateListener(new a(hVar, z10));
        return ofInt;
    }

    public j j(long j10) {
        super.b(j10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean k(int i9, int i10, int i11, boolean z10) {
        return (this.f40608d == i9 && this.f40609e == i10 && this.f40610f == i11 && this.f40611g == z10) ? false : true;
    }

    @Override // hd.a
    /* renamed from: m */
    public j d(float f10) {
        T t10 = this.f40572c;
        if (t10 == 0) {
            return this;
        }
        long j10 = f10 * ((float) this.f40570a);
        Iterator<Animator> it = ((AnimatorSet) t10).getChildAnimations().iterator();
        while (it.hasNext()) {
            ValueAnimator valueAnimator = (ValueAnimator) it.next();
            long duration = valueAnimator.getDuration();
            if (j10 <= duration) {
                duration = j10;
            }
            valueAnimator.setCurrentPlayTime(duration);
            j10 -= duration;
        }
        return this;
    }

    public j n(int i9, int i10, int i11, boolean z10) {
        if (k(i9, i10, i11, z10)) {
            this.f40572c = a();
            this.f40608d = i9;
            this.f40609e = i10;
            this.f40610f = i11;
            this.f40611g = z10;
            int i12 = i9 - i11;
            this.f40612h = i12;
            this.f40613i = i9 + i11;
            this.f40614j.d(i12);
            this.f40614j.c(this.f40613i);
            b h10 = h(z10);
            long j10 = this.f40570a / 2;
            ((AnimatorSet) this.f40572c).playSequentially(i(h10.f40618a, h10.f40619b, j10, false, this.f40614j), i(h10.f40620c, h10.f40621d, j10, true, this.f40614j));
        }
        return this;
    }
}
