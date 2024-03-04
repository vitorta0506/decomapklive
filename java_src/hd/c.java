package hd;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.annotation.NonNull;
import ed.b;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class c extends hd.a<AnimatorSet> {

    /* renamed from: d  reason: collision with root package name */
    private int f40577d;

    /* renamed from: e  reason: collision with root package name */
    private int f40578e;

    /* renamed from: f  reason: collision with root package name */
    private int f40579f;

    /* renamed from: g  reason: collision with root package name */
    private int f40580g;

    /* renamed from: h  reason: collision with root package name */
    private int f40581h;

    /* renamed from: i  reason: collision with root package name */
    private gd.b f40582i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ EnumC0441c f40583a;

        a(EnumC0441c enumC0441c) {
            this.f40583a = enumC0441c;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            c.this.k(valueAnimator, this.f40583a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f40585a;

        static {
            int[] iArr = new int[EnumC0441c.values().length];
            f40585a = iArr;
            try {
                iArr[EnumC0441c.Width.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f40585a[EnumC0441c.Height.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f40585a[EnumC0441c.Radius.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hd.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public enum EnumC0441c {
        Width,
        Height,
        Radius
    }

    public c(@NonNull b.a aVar) {
        super(aVar);
        this.f40582i = new gd.b();
    }

    private ValueAnimator h(int i9, int i10, long j10, EnumC0441c enumC0441c) {
        ValueAnimator ofInt = ValueAnimator.ofInt(i9, i10);
        ofInt.setInterpolator(new AccelerateDecelerateInterpolator());
        ofInt.setDuration(j10);
        ofInt.addUpdateListener(new a(enumC0441c));
        return ofInt;
    }

    private boolean j(int i9, int i10, int i11, int i12, int i13) {
        return (this.f40577d == i9 && this.f40578e == i10 && this.f40579f == i11 && this.f40580g == i12 && this.f40581h == i13) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(@NonNull ValueAnimator valueAnimator, @NonNull EnumC0441c enumC0441c) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        int i9 = b.f40585a[enumC0441c.ordinal()];
        if (i9 == 1) {
            this.f40582i.f(intValue);
        } else if (i9 == 2) {
            this.f40582i.d(intValue);
        } else if (i9 == 3) {
            this.f40582i.e(intValue);
        }
        b.a aVar = this.f40571b;
        if (aVar != null) {
            aVar.a(this.f40582i);
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

    public c i(long j10) {
        super.b(j10);
        return this;
    }

    @Override // hd.a
    /* renamed from: l */
    public c d(float f10) {
        T t10 = this.f40572c;
        if (t10 != 0) {
            long j10 = f10 * ((float) this.f40570a);
            boolean z10 = false;
            Iterator<Animator> it = ((AnimatorSet) t10).getChildAnimations().iterator();
            while (it.hasNext()) {
                ValueAnimator valueAnimator = (ValueAnimator) it.next();
                long duration = valueAnimator.getDuration();
                long j11 = z10 ? j10 - duration : j10;
                if (j11 >= 0) {
                    if (j11 >= duration) {
                        j11 = duration;
                    }
                    if (valueAnimator.getValues() != null && valueAnimator.getValues().length > 0) {
                        valueAnimator.setCurrentPlayTime(j11);
                    }
                    if (!z10 && duration >= this.f40570a) {
                        z10 = true;
                    }
                }
            }
        }
        return this;
    }

    public c m(int i9, int i10, int i11, int i12, int i13) {
        if (j(i9, i10, i11, i12, i13)) {
            this.f40572c = a();
            this.f40577d = i9;
            this.f40578e = i10;
            this.f40579f = i11;
            this.f40580g = i12;
            this.f40581h = i13;
            int i14 = (int) (i13 / 1.5d);
            long j10 = this.f40570a;
            long j11 = j10 / 2;
            ValueAnimator h10 = h(i9, i10, j10, EnumC0441c.Width);
            EnumC0441c enumC0441c = EnumC0441c.Height;
            ValueAnimator h11 = h(i11, i12, j11, enumC0441c);
            EnumC0441c enumC0441c2 = EnumC0441c.Radius;
            ValueAnimator h12 = h(i13, i14, j11, enumC0441c2);
            ValueAnimator h13 = h(i12, i11, j11, enumC0441c);
            ((AnimatorSet) this.f40572c).play(h11).with(h12).with(h10).before(h13).before(h(i14, i13, j11, enumC0441c2));
        }
        return this;
    }
}
