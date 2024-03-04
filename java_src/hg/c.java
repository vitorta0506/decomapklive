package hg;

import com.google.common.base.o;
import io.grpc.Status;
import io.grpc.internal.m2;
import io.grpc.k;
import io.grpc.lb.v1.ClientStats;
import io.grpc.lb.v1.ClientStatsPerToken;
import io.grpc.s0;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class c extends k.a {

    /* renamed from: g  reason: collision with root package name */
    private static final AtomicLongFieldUpdater<c> f40670g = AtomicLongFieldUpdater.newUpdater(c.class, "b");

    /* renamed from: h  reason: collision with root package name */
    private static final AtomicLongFieldUpdater<c> f40671h = AtomicLongFieldUpdater.newUpdater(c.class, com.huawei.hms.opendevice.c.f27627a);

    /* renamed from: i  reason: collision with root package name */
    private static final AtomicLongFieldUpdater<c> f40672i = AtomicLongFieldUpdater.newUpdater(c.class, com.huawei.hms.push.e.f27721a);

    /* renamed from: j  reason: collision with root package name */
    private static final AtomicLongFieldUpdater<c> f40673j = AtomicLongFieldUpdater.newUpdater(c.class, "f");

    /* renamed from: a  reason: collision with root package name */
    private final m2 f40674a;

    /* renamed from: b  reason: collision with root package name */
    private volatile long f40675b;

    /* renamed from: c  reason: collision with root package name */
    private volatile long f40676c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, b> f40677d = new HashMap(1);

    /* renamed from: e  reason: collision with root package name */
    private volatile long f40678e;

    /* renamed from: f  reason: collision with root package name */
    private volatile long f40679f;

    /* loaded from: classes5.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        long f40680a;

        private b() {
        }
    }

    /* renamed from: hg.c$c  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private class C0444c extends io.grpc.k {

        /* renamed from: a  reason: collision with root package name */
        private volatile boolean f40681a;

        /* renamed from: b  reason: collision with root package name */
        private volatile boolean f40682b;

        private C0444c() {
        }

        @Override // io.grpc.c1
        public void a(int i9) {
            this.f40682b = true;
        }

        @Override // io.grpc.c1
        public void i(Status status) {
            c.f40671h.getAndIncrement(c.this);
            if (!this.f40681a) {
                c.f40672i.getAndIncrement(c.this);
            }
            if (this.f40682b) {
                c.f40673j.getAndIncrement(c.this);
            }
        }

        @Override // io.grpc.k
        public void j() {
            this.f40682b = true;
        }

        @Override // io.grpc.k
        public void l() {
            this.f40681a = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(m2 m2Var) {
        this.f40674a = (m2) o.t(m2Var, "time provider");
    }

    @Override // io.grpc.k.a
    public io.grpc.k a(k.b bVar, s0 s0Var) {
        f40670g.getAndIncrement(this);
        return new C0444c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ClientStats e() {
        ClientStats.b o02 = ClientStats.newBuilder().s0(v6.d.e(this.f40674a.a())).r0(f40670g.getAndSet(this, 0L)).n0(f40671h.getAndSet(this, 0L)).q0(f40672i.getAndSet(this, 0L)).o0(f40673j.getAndSet(this, 0L));
        Map<String, b> emptyMap = Collections.emptyMap();
        synchronized (this) {
            if (!this.f40677d.isEmpty()) {
                emptyMap = this.f40677d;
                this.f40677d = new HashMap(emptyMap.size());
            }
        }
        for (Map.Entry<String, b> entry : emptyMap.entrySet()) {
            o02.W(ClientStatsPerToken.newBuilder().j0(entry.getKey()).k0(entry.getValue().f40680a).build());
        }
        return o02.build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(String str) {
        f40670g.getAndIncrement(this);
        f40671h.getAndIncrement(this);
        synchronized (this) {
            b bVar = this.f40677d.get(str);
            if (bVar == null) {
                Map<String, b> map = this.f40677d;
                b bVar2 = new b();
                map.put(str, bVar2);
                bVar = bVar2;
            }
            bVar.f40680a++;
        }
    }
}
