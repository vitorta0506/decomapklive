package de;

import com.snapchat.kit.sdk.core.metrics.MetricsClient;
/* loaded from: classes4.dex */
public final class j implements eg.c<MetricsClient> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<ie.a> f38075a;

    private j(fi.a<ie.a> aVar) {
        this.f38075a = aVar;
    }

    public static eg.c<MetricsClient> a(fi.a<ie.a> aVar) {
        return new j(aVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return (MetricsClient) eg.d.b((MetricsClient) this.f38075a.get().b("https://api.snapkit.com", MetricsClient.class), "Cannot return null from a non-@Nullable @Provides method");
    }
}
