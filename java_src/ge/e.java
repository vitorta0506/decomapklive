package ge;

import com.snapchat.kit.sdk.core.metrics.model.ServerEvent;
/* loaded from: classes4.dex */
public final class e implements eg.c<d> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<i> f40048a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<de.d<ServerEvent>> f40049b;

    private e(fi.a<i> aVar, fi.a<de.d<ServerEvent>> aVar2) {
        this.f40048a = aVar;
        this.f40049b = aVar2;
    }

    public static eg.c<d> a(fi.a<i> aVar, fi.a<de.d<ServerEvent>> aVar2) {
        return new e(aVar, aVar2);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return new d(this.f40048a.get(), this.f40049b.get());
    }
}
