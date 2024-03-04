package xg;

import io.grpc.ManagedChannelProvider;
import io.grpc.j0;
import xg.d;
/* loaded from: classes5.dex */
public final class e extends ManagedChannelProvider {
    @Override // io.grpc.ManagedChannelProvider
    public boolean b() {
        return true;
    }

    @Override // io.grpc.ManagedChannelProvider
    public ManagedChannelProvider.a c(String str, io.grpc.e eVar) {
        d.g J = d.J(eVar);
        String str2 = J.f59807c;
        if (str2 != null) {
            return ManagedChannelProvider.a.b(str2);
        }
        return ManagedChannelProvider.a.a(new d(str, eVar, J.f59806b, J.f59805a));
    }

    @Override // io.grpc.ManagedChannelProvider
    public int d() {
        return j0.a(e.class.getClassLoader()) ? 8 : 3;
    }

    @Override // io.grpc.ManagedChannelProvider
    /* renamed from: f */
    public d a(String str, int i9) {
        return d.C(str, i9);
    }
}
