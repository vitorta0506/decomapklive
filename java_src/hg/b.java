package hg;

import com.facebook.internal.ServerProtocol;
import com.google.common.base.o;
import hg.k;
import io.grpc.d1;
import io.grpc.n0;
import io.grpc.q;
import io.grpc.x;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class b implements k {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<x, c> f40657a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final n0.d f40658b;

    /* renamed from: c  reason: collision with root package name */
    private k.a f40659c;

    /* loaded from: classes5.dex */
    class a implements n0.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n0.h f40660a;

        a(n0.h hVar) {
            this.f40660a = hVar;
        }

        @Override // io.grpc.n0.j
        public void a(q qVar) {
            b.this.g(this.f40660a, qVar);
            b.this.f40659c.a(this.f40660a, qVar);
        }
    }

    /* renamed from: hg.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class RunnableC0443b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n0.h f40662a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ c f40663b;

        RunnableC0443b(n0.h hVar, c cVar) {
            this.f40662a = hVar;
            this.f40663b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.f40659c.a(this.f40662a, this.f40663b.f40667c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        final n0.h f40665a;

        /* renamed from: b  reason: collision with root package name */
        final d1.c f40666b;

        /* renamed from: c  reason: collision with root package name */
        q f40667c;

        c(n0.h hVar, d1.c cVar, q qVar) {
            this.f40665a = (n0.h) o.t(hVar, "subchannel");
            this.f40666b = (d1.c) o.t(cVar, "shutdownTimer");
            this.f40667c = (q) o.t(qVar, ServerProtocol.DIALOG_PARAM_STATE);
        }
    }

    /* loaded from: classes5.dex */
    final class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final n0.h f40668a;

        /* synthetic */ d(b bVar, n0.h hVar, a aVar) {
            this(hVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            o.A(((c) b.this.f40657a.remove(this.f40668a.b())).f40665a == this.f40668a, "Inconsistent state");
            this.f40668a.h();
        }

        private d(n0.h hVar) {
            this.f40668a = (n0.h) o.t(hVar, "subchannel");
        }
    }

    public b(n0.d dVar) {
        this.f40658b = (n0.d) o.t(dVar, "helper");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(n0.h hVar, q qVar) {
        c cVar = this.f40657a.get(hVar.b());
        if (cVar == null || cVar.f40665a != hVar) {
            return;
        }
        cVar.f40667c = qVar;
    }

    @Override // hg.k
    public n0.h a(x xVar, io.grpc.a aVar) {
        c remove = this.f40657a.remove(xVar);
        if (remove == null) {
            n0.h b10 = this.f40658b.b(n0.b.c().d(xVar).f(aVar).b());
            b10.i(new a(b10));
            return b10;
        }
        n0.h hVar = remove.f40665a;
        remove.f40666b.a();
        this.f40658b.h().execute(new RunnableC0443b(hVar, remove));
        return hVar;
    }

    @Override // hg.k
    public void b(k.a aVar) {
        this.f40659c = (k.a) o.t(aVar, "listener");
    }

    @Override // hg.k
    public void c(n0.h hVar, q qVar) {
        c cVar = this.f40657a.get(hVar.b());
        if (cVar != null) {
            if (cVar.f40665a != hVar) {
                hVar.h();
                return;
            }
            return;
        }
        this.f40657a.put(hVar.b(), new c(hVar, this.f40658b.h().d(new d(this, hVar, null), 10000L, TimeUnit.MILLISECONDS, this.f40658b.g()), qVar));
    }

    @Override // hg.k
    public void clear() {
        for (c cVar : this.f40657a.values()) {
            cVar.f40666b.a();
            cVar.f40665a.h();
        }
        this.f40657a.clear();
    }
}
