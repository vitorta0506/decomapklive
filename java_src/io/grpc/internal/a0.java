package io.grpc.internal;

import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.k1;
import io.grpc.n0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class a0 implements k1 {

    /* renamed from: c  reason: collision with root package name */
    private final Executor f42396c;

    /* renamed from: d  reason: collision with root package name */
    private final io.grpc.d1 f42397d;

    /* renamed from: e  reason: collision with root package name */
    private Runnable f42398e;

    /* renamed from: f  reason: collision with root package name */
    private Runnable f42399f;

    /* renamed from: g  reason: collision with root package name */
    private Runnable f42400g;

    /* renamed from: h  reason: collision with root package name */
    private k1.a f42401h;

    /* renamed from: j  reason: collision with root package name */
    private Status f42403j;

    /* renamed from: k  reason: collision with root package name */
    private n0.i f42404k;

    /* renamed from: l  reason: collision with root package name */
    private long f42405l;

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.g0 f42394a = io.grpc.g0.a(a0.class, null);

    /* renamed from: b  reason: collision with root package name */
    private final Object f42395b = new Object();

    /* renamed from: i  reason: collision with root package name */
    private Collection<e> f42402i = new LinkedHashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k1.a f42406a;

        a(k1.a aVar) {
            this.f42406a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f42406a.c(true);
        }
    }

    /* loaded from: classes5.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k1.a f42408a;

        b(k1.a aVar) {
            this.f42408a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f42408a.c(false);
        }
    }

    /* loaded from: classes5.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k1.a f42410a;

        c(k1.a aVar) {
            this.f42410a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f42410a.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Status f42412a;

        d(Status status) {
            this.f42412a = status;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.this.f42401h.a(this.f42412a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class e extends b0 {

        /* renamed from: j  reason: collision with root package name */
        private final n0.f f42414j;

        /* renamed from: k  reason: collision with root package name */
        private final io.grpc.r f42415k;

        /* renamed from: l  reason: collision with root package name */
        private final io.grpc.k[] f42416l;

        /* synthetic */ e(a0 a0Var, n0.f fVar, io.grpc.k[] kVarArr, a aVar) {
            this(fVar, kVarArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Runnable A(r rVar) {
            io.grpc.r c10 = this.f42415k.c();
            try {
                q e10 = rVar.e(this.f42414j.c(), this.f42414j.b(), this.f42414j.a(), this.f42416l);
                this.f42415k.k(c10);
                return w(e10);
            } catch (Throwable th2) {
                this.f42415k.k(c10);
                throw th2;
            }
        }

        @Override // io.grpc.internal.b0, io.grpc.internal.q
        public void e(Status status) {
            super.e(status);
            synchronized (a0.this.f42395b) {
                if (a0.this.f42400g != null) {
                    boolean remove = a0.this.f42402i.remove(this);
                    if (!a0.this.r() && remove) {
                        a0.this.f42397d.b(a0.this.f42399f);
                        if (a0.this.f42403j != null) {
                            a0.this.f42397d.b(a0.this.f42400g);
                            a0.this.f42400g = null;
                        }
                    }
                }
            }
            a0.this.f42397d.a();
        }

        @Override // io.grpc.internal.b0, io.grpc.internal.q
        public void l(x0 x0Var) {
            if (this.f42414j.a().j()) {
                x0Var.a("wait_for_ready");
            }
            super.l(x0Var);
        }

        @Override // io.grpc.internal.b0
        protected void u(Status status) {
            for (io.grpc.k kVar : this.f42416l) {
                kVar.i(status);
            }
        }

        private e(n0.f fVar, io.grpc.k[] kVarArr) {
            this.f42415k = io.grpc.r.j();
            this.f42414j = fVar;
            this.f42416l = kVarArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(Executor executor, io.grpc.d1 d1Var) {
        this.f42396c = executor;
        this.f42397d = d1Var;
    }

    private e p(n0.f fVar, io.grpc.k[] kVarArr) {
        e eVar = new e(this, fVar, kVarArr, null);
        this.f42402i.add(eVar);
        if (q() == 1) {
            this.f42397d.b(this.f42398e);
        }
        return eVar;
    }

    @Override // io.grpc.internal.k1
    public final void b(Status status) {
        Collection<e> collection;
        Runnable runnable;
        g(status);
        synchronized (this.f42395b) {
            collection = this.f42402i;
            runnable = this.f42400g;
            this.f42400g = null;
            if (!collection.isEmpty()) {
                this.f42402i = Collections.emptyList();
            }
        }
        if (runnable != null) {
            for (e eVar : collection) {
                Runnable w6 = eVar.w(new f0(status, ClientStreamListener.RpcProgress.REFUSED, eVar.f42416l));
                if (w6 != null) {
                    w6.run();
                }
            }
            this.f42397d.execute(runnable);
        }
    }

    @Override // io.grpc.l0
    public io.grpc.g0 c() {
        return this.f42394a;
    }

    @Override // io.grpc.internal.r
    public final q e(MethodDescriptor<?, ?> methodDescriptor, io.grpc.s0 s0Var, io.grpc.c cVar, io.grpc.k[] kVarArr) {
        q f0Var;
        try {
            t1 t1Var = new t1(methodDescriptor, s0Var, cVar);
            n0.i iVar = null;
            long j10 = -1;
            while (true) {
                synchronized (this.f42395b) {
                    if (this.f42403j != null) {
                        f0Var = new f0(this.f42403j, kVarArr);
                        break;
                    }
                    n0.i iVar2 = this.f42404k;
                    if (iVar2 == null) {
                        f0Var = p(t1Var, kVarArr);
                        break;
                    } else if (iVar != null && j10 == this.f42405l) {
                        f0Var = p(t1Var, kVarArr);
                        break;
                    } else {
                        j10 = this.f42405l;
                        r l10 = GrpcUtil.l(iVar2.a(t1Var), cVar.j());
                        if (l10 != null) {
                            f0Var = l10.e(t1Var.c(), t1Var.b(), t1Var.a(), kVarArr);
                            break;
                        }
                        iVar = iVar2;
                    }
                }
            }
            return f0Var;
        } finally {
            this.f42397d.a();
        }
    }

    @Override // io.grpc.internal.k1
    public final void g(Status status) {
        Runnable runnable;
        synchronized (this.f42395b) {
            if (this.f42403j != null) {
                return;
            }
            this.f42403j = status;
            this.f42397d.b(new d(status));
            if (!r() && (runnable = this.f42400g) != null) {
                this.f42397d.b(runnable);
                this.f42400g = null;
            }
            this.f42397d.a();
        }
    }

    @Override // io.grpc.internal.k1
    public final Runnable h(k1.a aVar) {
        this.f42401h = aVar;
        this.f42398e = new a(aVar);
        this.f42399f = new b(aVar);
        this.f42400g = new c(aVar);
        return null;
    }

    final int q() {
        int size;
        synchronized (this.f42395b) {
            size = this.f42402i.size();
        }
        return size;
    }

    public final boolean r() {
        boolean z10;
        synchronized (this.f42395b) {
            z10 = !this.f42402i.isEmpty();
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void s(n0.i iVar) {
        Runnable runnable;
        synchronized (this.f42395b) {
            this.f42404k = iVar;
            this.f42405l++;
            if (iVar != null && r()) {
                ArrayList arrayList = new ArrayList(this.f42402i);
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    e eVar = (e) it.next();
                    n0.e a10 = iVar.a(eVar.f42414j);
                    io.grpc.c a11 = eVar.f42414j.a();
                    r l10 = GrpcUtil.l(a10, a11.j());
                    if (l10 != null) {
                        Executor executor = this.f42396c;
                        if (a11.e() != null) {
                            executor = a11.e();
                        }
                        Runnable A = eVar.A(l10);
                        if (A != null) {
                            executor.execute(A);
                        }
                        arrayList2.add(eVar);
                    }
                }
                synchronized (this.f42395b) {
                    if (r()) {
                        this.f42402i.removeAll(arrayList2);
                        if (this.f42402i.isEmpty()) {
                            this.f42402i = new LinkedHashSet();
                        }
                        if (!r()) {
                            this.f42397d.b(this.f42399f);
                            if (this.f42403j != null && (runnable = this.f42400g) != null) {
                                this.f42397d.b(runnable);
                                this.f42400g = null;
                            }
                        }
                        this.f42397d.a();
                    }
                }
            }
        }
    }
}
