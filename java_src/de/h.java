package de;

import com.snapchat.kit.sdk.core.config.ConfigClient;
/* loaded from: classes4.dex */
public final class h implements eg.c<ConfigClient> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<ie.a> f38071a;

    private h(fi.a<ie.a> aVar) {
        this.f38071a = aVar;
    }

    public static eg.c<ConfigClient> a(fi.a<ie.a> aVar) {
        return new h(aVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return (ConfigClient) eg.d.b((ConfigClient) this.f38071a.get().c("https://api.snapkit.com", ConfigClient.class), "Cannot return null from a non-@Nullable @Provides method");
    }
}
