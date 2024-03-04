package ge;

import android.content.SharedPreferences;
import com.snapchat.kit.sdk.core.metrics.MetricsClient;
/* loaded from: classes4.dex */
public final class c implements eg.c<b> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<SharedPreferences> f40042a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<i> f40043b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<MetricsClient> f40044c;

    /* renamed from: d  reason: collision with root package name */
    private final fi.a<fe.a> f40045d;

    private c(fi.a<SharedPreferences> aVar, fi.a<i> aVar2, fi.a<MetricsClient> aVar3, fi.a<fe.a> aVar4) {
        this.f40042a = aVar;
        this.f40043b = aVar2;
        this.f40044c = aVar3;
        this.f40045d = aVar4;
    }

    public static eg.c<b> a(fi.a<SharedPreferences> aVar, fi.a<i> aVar2, fi.a<MetricsClient> aVar3, fi.a<fe.a> aVar4) {
        return new c(aVar, aVar2, aVar3, aVar4);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return new b(this.f40042a.get(), this.f40043b.get(), this.f40044c.get(), this.f40045d.get());
    }
}
