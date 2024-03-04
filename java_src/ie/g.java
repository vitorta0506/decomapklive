package ie;

import com.google.gson.Gson;
/* loaded from: classes4.dex */
public final class g implements eg.c<f> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<com.snapchat.kit.sdk.f> f41046a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<ce.c> f41047b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<String> f41048c;

    /* renamed from: d  reason: collision with root package name */
    private final fi.a<Gson> f41049d;

    private g(fi.a<com.snapchat.kit.sdk.f> aVar, fi.a<ce.c> aVar2, fi.a<String> aVar3, fi.a<Gson> aVar4) {
        this.f41046a = aVar;
        this.f41047b = aVar2;
        this.f41048c = aVar3;
        this.f41049d = aVar4;
    }

    public static eg.c<f> a(fi.a<com.snapchat.kit.sdk.f> aVar, fi.a<ce.c> aVar2, fi.a<String> aVar3, fi.a<Gson> aVar4) {
        return new g(aVar, aVar2, aVar3, aVar4);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return new f(this.f41046a.get(), this.f41047b.get(), this.f41048c.get(), this.f41049d.get());
    }
}
