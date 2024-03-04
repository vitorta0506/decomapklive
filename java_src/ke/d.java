package ke;

import com.snapchat.kit.sdk.core.metrics.model.OpMetric;
/* loaded from: classes4.dex */
public final class d implements eg.c<c> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<de.b<OpMetric>> f53702a;

    private d(fi.a<de.b<OpMetric>> aVar) {
        this.f53702a = aVar;
    }

    public static eg.c<c> a(fi.a<de.b<OpMetric>> aVar) {
        return new d(aVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return new c(this.f53702a.get());
    }
}
