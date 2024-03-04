package fe;

import com.google.gson.Gson;
import eg.c;
/* loaded from: classes4.dex */
public final class b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<Gson> f39694a;

    private b(fi.a<Gson> aVar) {
        this.f39694a = aVar;
    }

    public static c<a> a(fi.a<Gson> aVar) {
        return new b(aVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return new a(this.f39694a.get());
    }
}
