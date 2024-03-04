package he;

import android.content.SharedPreferences;
import java.util.Random;
/* loaded from: classes4.dex */
public final class e implements eg.c<d> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<SharedPreferences> f40648a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<Random> f40649b;

    private e(fi.a<SharedPreferences> aVar, fi.a<Random> aVar2) {
        this.f40648a = aVar;
        this.f40649b = aVar2;
    }

    public static eg.c<d> a(fi.a<SharedPreferences> aVar, fi.a<Random> aVar2) {
        return new e(aVar, aVar2);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return new d(this.f40648a.get(), this.f40649b.get());
    }
}
