package w1;

import android.content.Context;
/* loaded from: classes.dex */
public final class u0 implements q1.b<t0> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<Context> f59352a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<String> f59353b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<Integer> f59354c;

    public u0(fi.a<Context> aVar, fi.a<String> aVar2, fi.a<Integer> aVar3) {
        this.f59352a = aVar;
        this.f59353b = aVar2;
        this.f59354c = aVar3;
    }

    public static u0 a(fi.a<Context> aVar, fi.a<String> aVar2, fi.a<Integer> aVar3) {
        return new u0(aVar, aVar2, aVar3);
    }

    public static t0 c(Context context, String str, int i9) {
        return new t0(context, str, i9);
    }

    @Override // fi.a
    /* renamed from: b */
    public t0 get() {
        return c(this.f59352a.get(), this.f59353b.get(), this.f59354c.get().intValue());
    }
}
