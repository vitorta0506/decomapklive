package hg;

import com.google.common.base.u;
import io.grpc.internal.c0;
import io.grpc.internal.f2;
import io.grpc.t0;
import io.grpc.x;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
final class h extends c0 {
    private static final Logger C = Logger.getLogger(h.class.getName());

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(String str, String str2, t0.b bVar, f2.d<Executor> dVar, u uVar, boolean z10) {
        super(str, str2, bVar, dVar, uVar, z10);
    }

    private List<x> E() {
        String str;
        List<c0.h> emptyList = Collections.emptyList();
        c0.f v10 = v();
        Exception exc = null;
        if (v10 != null) {
            try {
                emptyList = v10.b("_grpclb._tcp." + q());
            } catch (Exception e10) {
                e = e10;
            }
        }
        e = null;
        ArrayList arrayList = new ArrayList(emptyList.size());
        Level level = Level.WARNING;
        for (c0.h hVar : emptyList) {
            try {
                String substring = hVar.f42513a.substring(0, str.length() - 1);
                List<InetAddress> a10 = this.f42487c.a(hVar.f42513a);
                ArrayList arrayList2 = new ArrayList(a10.size());
                for (InetAddress inetAddress : a10) {
                    arrayList2.add(new InetSocketAddress(inetAddress, hVar.f42514b));
                }
                arrayList.add(new x(Collections.unmodifiableList(arrayList2), io.grpc.a.c().d(e.f40689d, substring).a()));
            } catch (Exception e11) {
                C.log(level, "Can't find address for SRV record " + hVar, (Throwable) e11);
                if (exc == null) {
                    level = Level.FINE;
                    exc = e11;
                }
            }
        }
        if (e != null) {
            C.log(Level.FINE, "SRV lookup failure", (Throwable) e);
        } else if (exc != null && arrayList.isEmpty()) {
            C.log(Level.FINE, "SRV-provided hostname lookup failure", (Throwable) exc);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.internal.c0
    public c0.c o(boolean z10) {
        List<x> E = E();
        c0.c o10 = super.o(!E.isEmpty());
        if (!E.isEmpty()) {
            o10.f42506d = io.grpc.a.c().d(e.f40688c, E).a();
        }
        return o10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.internal.c0
    public String q() {
        return super.q();
    }
}
