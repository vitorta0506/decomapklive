package sg;

import java.io.Closeable;
import java.net.SocketAddress;
import java.util.IdentityHashMap;
import java.util.Map;
import ug.j;
import ug.q;
import ug.r;
/* loaded from: classes5.dex */
public abstract class b<T extends SocketAddress> implements Closeable {

    /* renamed from: c  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f57907c = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(b.class);

    /* renamed from: a  reason: collision with root package name */
    private final Map<j, a<T>> f57908a = new IdentityHashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<j, r<q<Object>>> f57909b = new IdentityHashMap();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        int i9;
        a[] aVarArr;
        Map.Entry[] entryArr;
        synchronized (this.f57908a) {
            aVarArr = (a[]) this.f57908a.values().toArray(new a[0]);
            this.f57908a.clear();
            entryArr = (Map.Entry[]) this.f57909b.entrySet().toArray(new Map.Entry[0]);
            this.f57909b.clear();
        }
        for (Map.Entry entry : entryArr) {
            ((j) entry.getKey()).T().f((r) entry.getValue());
        }
        for (a aVar : aVarArr) {
            try {
                aVar.close();
            } catch (Throwable th2) {
                f57907c.warn("Failed to close a resolver:", th2);
            }
        }
    }
}
