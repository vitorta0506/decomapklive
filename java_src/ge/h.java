package ge;

import com.snapchat.kit.sdk.core.metrics.model.KitPluginType;
/* loaded from: classes4.dex */
public final class h implements eg.c<a> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<String> f40052a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<KitPluginType> f40053b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<Boolean> f40054c;

    private h(fi.a<String> aVar, fi.a<KitPluginType> aVar2, fi.a<Boolean> aVar3) {
        this.f40052a = aVar;
        this.f40053b = aVar2;
        this.f40054c = aVar3;
    }

    public static eg.c<a> a(fi.a<String> aVar, fi.a<KitPluginType> aVar2, fi.a<Boolean> aVar3) {
        return new h(aVar, aVar2, aVar3);
    }

    public static a b(String str, KitPluginType kitPluginType, boolean z10) {
        return new a(str, kitPluginType, z10);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return new a(this.f40052a.get(), this.f40053b.get(), this.f40054c.get().booleanValue());
    }
}
