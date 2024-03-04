package ce;

import android.os.Handler;
/* loaded from: classes4.dex */
public final class d implements eg.c<c> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<Handler> f1723a;

    private d(fi.a<Handler> aVar) {
        this.f1723a = aVar;
    }

    public static eg.c<c> a(fi.a<Handler> aVar) {
        return new d(aVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return new c(this.f1723a.get());
    }
}
