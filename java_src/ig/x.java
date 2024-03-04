package ig;

import ig.h0;
import io.grpc.ManagedChannelProvider;
/* loaded from: classes5.dex */
public final class x extends ManagedChannelProvider {
    @Override // io.grpc.ManagedChannelProvider
    public boolean b() {
        return true;
    }

    @Override // io.grpc.ManagedChannelProvider
    public ManagedChannelProvider.a c(String str, io.grpc.e eVar) {
        h0.d b10 = h0.b(eVar);
        String str2 = b10.f41179c;
        if (str2 != null) {
            return ManagedChannelProvider.a.b(str2);
        }
        return ManagedChannelProvider.a.a(new v(str, eVar, b10.f41178b, b10.f41177a));
    }

    @Override // io.grpc.ManagedChannelProvider
    public int d() {
        return 5;
    }

    @Override // io.grpc.ManagedChannelProvider
    /* renamed from: f */
    public v a(String str, int i9) {
        return v.H(str, i9);
    }
}
