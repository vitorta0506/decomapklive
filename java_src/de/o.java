package de;

import com.snapchat.kit.sdk.core.metrics.skate.SkateClient;
/* loaded from: classes4.dex */
public final class o implements eg.c<SkateClient> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<ie.a> f38083a;

    private o(fi.a<ie.a> aVar) {
        this.f38083a = aVar;
    }

    public static eg.c<SkateClient> a(fi.a<ie.a> aVar) {
        return new o(aVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return (SkateClient) eg.d.b((SkateClient) this.f38083a.get().d("https://api.snapkit.com", SkateClient.class), "Cannot return null from a non-@Nullable @Provides method");
    }
}
