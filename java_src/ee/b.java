package ee;

import android.content.SharedPreferences;
import com.snapchat.kit.sdk.core.metrics.MetricsClient;
import eg.c;
/* loaded from: classes4.dex */
public final class b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<SharedPreferences> f38581a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<MetricsClient> f38582b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<fe.a> f38583c;

    private b(fi.a<SharedPreferences> aVar, fi.a<MetricsClient> aVar2, fi.a<fe.a> aVar3) {
        this.f38581a = aVar;
        this.f38582b = aVar2;
        this.f38583c = aVar3;
    }

    public static c<a> a(fi.a<SharedPreferences> aVar, fi.a<MetricsClient> aVar2, fi.a<fe.a> aVar3) {
        return new b(aVar, aVar2, aVar3);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return new a(this.f38581a.get(), this.f38582b.get(), this.f38583c.get());
    }
}
