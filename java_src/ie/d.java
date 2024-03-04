package ie;

import com.google.gson.Gson;
import okhttp3.Cache;
/* loaded from: classes4.dex */
public final class d implements eg.c<a> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<Cache> f41037a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<Gson> f41038b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<f> f41039c;

    /* renamed from: d  reason: collision with root package name */
    private final fi.a<h> f41040d;

    private d(fi.a<Cache> aVar, fi.a<Gson> aVar2, fi.a<f> aVar3, fi.a<h> aVar4) {
        this.f41037a = aVar;
        this.f41038b = aVar2;
        this.f41039c = aVar3;
        this.f41040d = aVar4;
    }

    public static eg.c<a> a(fi.a<Cache> aVar, fi.a<Gson> aVar2, fi.a<f> aVar3, fi.a<h> aVar4) {
        return new d(aVar, aVar2, aVar3, aVar4);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return new a(this.f41037a.get(), this.f41038b.get(), this.f41039c.get(), this.f41040d.get());
    }
}
