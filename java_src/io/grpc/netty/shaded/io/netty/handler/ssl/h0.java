package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import javax.net.ssl.X509KeyManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class h0 extends s0 {

    /* renamed from: c  reason: collision with root package name */
    private final int f44576c;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f44577d;

    /* renamed from: e  reason: collision with root package name */
    private final ConcurrentMap<String, q0> f44578e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(X509KeyManager x509KeyManager, String str, int i9) {
        super(x509KeyManager, str);
        this.f44578e = new ConcurrentHashMap();
        this.f44576c = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s0
    public q0 a(kg.k kVar, String str) throws Exception {
        q0 q0Var = this.f44578e.get(str);
        if (q0Var == null) {
            q0Var = super.a(kVar, str);
            if (q0Var == null) {
                return null;
            }
            if (this.f44577d) {
                return q0Var;
            }
            if (this.f44578e.size() > this.f44576c) {
                this.f44577d = true;
                return q0Var;
            }
            q0 putIfAbsent = this.f44578e.putIfAbsent(str, q0Var);
            if (putIfAbsent != null) {
                q0Var.release();
                q0Var = putIfAbsent;
            }
        }
        return q0Var.retain();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.s0
    public void b() {
        do {
            Iterator<q0> it = this.f44578e.values().iterator();
            while (it.hasNext()) {
                it.next().release();
                it.remove();
            }
        } while (!this.f44578e.isEmpty());
    }
}
