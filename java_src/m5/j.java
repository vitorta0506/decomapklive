package m5;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.e9;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.g;
import io.grpc.q0;
import io.grpc.s0;
import io.grpc.y;
import io.grpc.z;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;
import java.util.function.ToIntFunction;
import java.util.logging.Level;
import java.util.logging.Logger;
import m5.j;
import org.threeten.bp.Duration;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class j extends q0 {

    /* renamed from: h  reason: collision with root package name */
    private static final Logger f54811h = Logger.getLogger(j.class.getName());

    /* renamed from: i  reason: collision with root package name */
    private static final Duration f54812i = Duration.ofMinutes(50);

    /* renamed from: a  reason: collision with root package name */
    private final k f54813a;

    /* renamed from: b  reason: collision with root package name */
    private final e f54814b;

    /* renamed from: c  reason: collision with root package name */
    private final ScheduledExecutorService f54815c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f54816d = new Object();

    /* renamed from: e  reason: collision with root package name */
    final AtomicReference<ImmutableList<c>> f54817e = new AtomicReference<>();

    /* renamed from: f  reason: collision with root package name */
    private final AtomicInteger f54818f = new AtomicInteger();

    /* renamed from: g  reason: collision with root package name */
    private final String f54819g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b extends io.grpc.d {

        /* renamed from: a  reason: collision with root package name */
        private final int f54820a;

        public b(int i9) {
            this.f54820a = i9;
        }

        @Override // io.grpc.d
        public String a() {
            return j.this.f54819g;
        }

        @Override // io.grpc.d
        public <RequestT, ResponseT> io.grpc.g<RequestT, ResponseT> i(MethodDescriptor<RequestT, ResponseT> methodDescriptor, io.grpc.c cVar) {
            c w6 = j.this.w(this.f54820a);
            return new d(w6.f54822a.i(methodDescriptor, cVar), w6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final q0 f54822a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicInteger f54823b;

        /* renamed from: c  reason: collision with root package name */
        private final AtomicInteger f54824c;

        /* renamed from: d  reason: collision with root package name */
        private final AtomicBoolean f54825d;

        /* renamed from: e  reason: collision with root package name */
        private final AtomicBoolean f54826e;

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            int decrementAndGet = this.f54823b.decrementAndGet();
            if (decrementAndGet >= 0) {
                if (this.f54825d.get() && this.f54823b.get() == 0) {
                    i();
                    return;
                }
                return;
            }
            throw new IllegalStateException("Bug: reference count is negative!: " + decrementAndGet);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g() {
            this.f54825d.set(true);
            if (this.f54823b.get() == 0) {
                i();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean h() {
            if (this.f54823b.incrementAndGet() > this.f54824c.get()) {
                this.f54824c.incrementAndGet();
            }
            if (this.f54825d.get()) {
                f();
                return false;
            }
            return true;
        }

        private void i() {
            if (this.f54826e.compareAndSet(false, true)) {
                this.f54822a.m();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int e() {
            return this.f54824c.getAndSet(this.f54823b.get());
        }

        private c(q0 q0Var) {
            this.f54823b = new AtomicInteger(0);
            this.f54824c = new AtomicInteger();
            this.f54825d = new AtomicBoolean();
            this.f54826e = new AtomicBoolean();
            this.f54822a = q0Var;
        }
    }

    /* loaded from: classes2.dex */
    static class d<ReqT, RespT> extends y.a<ReqT, RespT> {

        /* renamed from: b  reason: collision with root package name */
        final c f54827b;

        /* loaded from: classes2.dex */
        class a extends z.a<RespT> {
            a(g.a aVar) {
                super(aVar);
            }

            @Override // io.grpc.z.a, io.grpc.z, io.grpc.x0, io.grpc.g.a
            public void a(Status status, s0 s0Var) {
                try {
                    super.a(status, s0Var);
                } finally {
                    d.this.f54827b.f();
                }
            }
        }

        public d(io.grpc.g<ReqT, RespT> gVar, c cVar) {
            super(gVar);
            this.f54827b = cVar;
        }

        @Override // io.grpc.y, io.grpc.g
        public void e(g.a<RespT> aVar, s0 s0Var) {
            try {
                super.e(new a(aVar), s0Var);
            } catch (Exception unused) {
                this.f54827b.f();
            }
        }
    }

    j(k kVar, e eVar, ScheduledExecutorService scheduledExecutorService) throws IOException {
        this.f54813a = kVar;
        this.f54814b = eVar;
        ImmutableList.b builder = ImmutableList.builder();
        for (int i9 = 0; i9 < kVar.b(); i9++) {
            builder.a(new c(eVar.a()));
        }
        this.f54817e.set(builder.j());
        this.f54819g = this.f54817e.get().get(0).f54822a.a();
        this.f54815c = scheduledExecutorService;
        if (!kVar.h()) {
            Runnable runnable = new Runnable() { // from class: m5.g
                @Override // java.lang.Runnable
                public final void run() {
                    j.this.B();
                }
            };
            java.time.Duration duration = k.f54830a;
            scheduledExecutorService.scheduleAtFixedRate(runnable, duration.getSeconds(), duration.getSeconds(), TimeUnit.SECONDS);
        }
        if (kVar.g()) {
            Runnable runnable2 = new Runnable() { // from class: m5.f
                @Override // java.lang.Runnable
                public final void run() {
                    j.this.z();
                }
            };
            Duration duration2 = f54812i;
            scheduledExecutorService.scheduleAtFixedRate(runnable2, duration2.getSeconds(), duration2.getSeconds(), TimeUnit.SECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        try {
            synchronized (this.f54816d) {
                A();
            }
        } catch (Exception e10) {
            f54811h.log(Level.WARNING, "Failed to resize channel pool", (Throwable) e10);
        }
    }

    private void C(int i9) {
        ImmutableList<c> immutableList = this.f54817e.get();
        com.google.common.base.o.A(immutableList.size() >= i9, "current size is already smaller than the desired");
        this.f54817e.set(immutableList.subList(0, i9));
        immutableList.subList(i9, immutableList.size()).forEach(new Consumer() { // from class: m5.h
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                j.x((j.c) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j s(k kVar, e eVar) throws IOException {
        return new j(kVar, eVar, Executors.newSingleThreadScheduledExecutor());
    }

    private void t(int i9) {
        ImmutableList<c> immutableList = this.f54817e.get();
        com.google.common.base.o.A(immutableList.size() <= i9, "current size is already bigger than the desired");
        ImmutableList.b h10 = ImmutableList.builder().h(immutableList);
        for (int i10 = 0; i10 < i9 - immutableList.size(); i10++) {
            try {
                h10.a(new c(this.f54814b.a()));
            } catch (IOException e10) {
                f54811h.log(Level.WARNING, "Failed to add channel", (Throwable) e10);
            }
        }
        this.f54817e.set(h10.j());
    }

    private c v(int i9) {
        ImmutableList<c> immutableList = this.f54817e.get();
        return immutableList.get(Math.abs(i9 % immutableList.size()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void x(Object obj) {
        ((c) obj).g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        try {
            y();
        } catch (Exception e10) {
            f54811h.log(Level.WARNING, "Failed to pre-emptively refresh channnels", (Throwable) e10);
        }
    }

    void A() {
        ImmutableList<c> immutableList = this.f54817e.get();
        int sum = immutableList.stream().mapToInt(new ToIntFunction() { // from class: m5.i
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((j.c) obj).e();
            }
        }).sum();
        double d10 = sum;
        int ceil = (int) Math.ceil(d10 / this.f54813a.d());
        if (ceil < this.f54813a.e()) {
            ceil = this.f54813a.e();
        }
        int ceil2 = (int) Math.ceil(d10 / this.f54813a.f());
        if (ceil2 > this.f54813a.c()) {
            ceil2 = this.f54813a.c();
        }
        if (ceil2 < ceil) {
            ceil2 = ceil;
        }
        int i9 = (ceil2 + ceil) / 2;
        int size = immutableList.size();
        int i10 = i9 - size;
        if (Math.abs(i10) > 2) {
            i9 = ((int) Math.copySign(2.0f, i10)) + size;
        }
        if (immutableList.size() < ceil) {
            f54811h.fine(String.format("Detected throughput peak of %d, expanding channel pool size: %d -> %d.", Integer.valueOf(sum), Integer.valueOf(size), Integer.valueOf(i9)));
            t(i9);
        } else if (immutableList.size() > ceil2) {
            f54811h.fine(String.format("Detected throughput drop to %d, shrinking channel pool size: %d -> %d.", Integer.valueOf(sum), Integer.valueOf(size), Integer.valueOf(i9)));
            C(i9);
        }
    }

    @Override // io.grpc.d
    public String a() {
        return this.f54819g;
    }

    @Override // io.grpc.d
    public <ReqT, RespT> io.grpc.g<ReqT, RespT> i(MethodDescriptor<ReqT, RespT> methodDescriptor, io.grpc.c cVar) {
        return u(this.f54818f.getAndIncrement()).i(methodDescriptor, cVar);
    }

    @Override // io.grpc.q0
    public boolean j(long j10, TimeUnit timeUnit) throws InterruptedException {
        long nanoTime = System.nanoTime() + timeUnit.toNanos(j10);
        for (c cVar : this.f54817e.get()) {
            long nanoTime2 = nanoTime - System.nanoTime();
            if (nanoTime2 <= 0) {
                break;
            }
            cVar.f54822a.j(nanoTime2, TimeUnit.NANOSECONDS);
        }
        if (this.f54815c != null) {
            this.f54815c.awaitTermination(nanoTime - System.nanoTime(), TimeUnit.NANOSECONDS);
        }
        return l();
    }

    @Override // io.grpc.q0
    public boolean k() {
        for (c cVar : this.f54817e.get()) {
            if (!cVar.f54822a.k()) {
                return false;
            }
        }
        ScheduledExecutorService scheduledExecutorService = this.f54815c;
        return scheduledExecutorService == null || scheduledExecutorService.isShutdown();
    }

    @Override // io.grpc.q0
    public boolean l() {
        for (c cVar : this.f54817e.get()) {
            if (!cVar.f54822a.l()) {
                return false;
            }
        }
        ScheduledExecutorService scheduledExecutorService = this.f54815c;
        return scheduledExecutorService == null || scheduledExecutorService.isTerminated();
    }

    @Override // io.grpc.q0
    public q0 m() {
        for (c cVar : this.f54817e.get()) {
            cVar.f54822a.m();
        }
        ScheduledExecutorService scheduledExecutorService = this.f54815c;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
        return this;
    }

    @Override // io.grpc.q0
    public q0 n() {
        for (c cVar : this.f54817e.get()) {
            cVar.f54822a.n();
        }
        ScheduledExecutorService scheduledExecutorService = this.f54815c;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public io.grpc.d u(int i9) {
        return new b(i9);
    }

    c w(int i9) {
        for (int i10 = 0; i10 < 5; i10++) {
            c v10 = v(i9);
            if (v10.h()) {
                return v10;
            }
        }
        throw new IllegalStateException("Bug: failed to retain a channel");
    }

    void y() {
        synchronized (this.f54816d) {
            ArrayList arrayList = new ArrayList(this.f54817e.get());
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                try {
                    arrayList.set(i9, new c(this.f54814b.a()));
                } catch (IOException e10) {
                    f54811h.log(Level.WARNING, "Failed to refresh channel, leaving old channel", (Throwable) e10);
                }
            }
            e9<c> it = this.f54817e.getAndSet(ImmutableList.copyOf((Collection) arrayList)).iterator();
            while (it.hasNext()) {
                c next = it.next();
                if (!arrayList.contains(next)) {
                    next.g();
                }
            }
        }
    }
}
