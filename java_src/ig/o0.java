package ig;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class o0 {

    /* renamed from: b  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.channel.e f41266b;

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f41265a = new a();

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f41268d = new AtomicBoolean();

    /* renamed from: c  reason: collision with root package name */
    private final Queue<c> f41267c = new ConcurrentLinkedQueue();

    /* loaded from: classes5.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.this.e();
        }
    }

    /* loaded from: classes5.dex */
    static abstract class b implements c {

        /* renamed from: a  reason: collision with root package name */
        private io.grpc.netty.shaded.io.netty.channel.y f41270a;

        /* renamed from: b  reason: collision with root package name */
        private final qh.b f41271b = qh.c.f();

        @Override // ig.o0.c
        public final io.grpc.netty.shaded.io.netty.channel.y a() {
            return this.f41270a;
        }

        @Override // ig.o0.c
        public final void b(io.grpc.netty.shaded.io.netty.channel.y yVar) {
            this.f41270a = yVar;
        }

        public qh.b c() {
            return this.f41271b;
        }

        @Override // ig.o0.c
        public final void e(io.grpc.netty.shaded.io.netty.channel.e eVar) {
            eVar.c(this, this.f41270a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface c {
        io.grpc.netty.shaded.io.netty.channel.y a();

        void b(io.grpc.netty.shaded.io.netty.channel.y yVar);

        void e(io.grpc.netty.shaded.io.netty.channel.e eVar);
    }

    /* loaded from: classes5.dex */
    private static class d implements c {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f41272a;

        /* renamed from: b  reason: collision with root package name */
        private final qh.b f41273b = qh.c.f();

        public d(Runnable runnable) {
            this.f41272a = runnable;
        }

        @Override // ig.o0.c
        public final io.grpc.netty.shaded.io.netty.channel.y a() {
            throw new UnsupportedOperationException();
        }

        @Override // ig.o0.c
        public final void b(io.grpc.netty.shaded.io.netty.channel.y yVar) {
            throw new UnsupportedOperationException();
        }

        @Override // ig.o0.c
        public final void e(io.grpc.netty.shaded.io.netty.channel.e eVar) {
            this.f41272a.run();
        }
    }

    public o0(io.grpc.netty.shaded.io.netty.channel.e eVar) {
        this.f41266b = (io.grpc.netty.shaded.io.netty.channel.e) com.google.common.base.o.t(eVar, "channel");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        qh.c.g("WriteQueue.periodicFlush");
        int i9 = 0;
        boolean z10 = false;
        while (true) {
            try {
                c poll = this.f41267c.poll();
                if (poll == null) {
                    break;
                }
                poll.e(this.f41266b);
                i9++;
                if (i9 == 128) {
                    qh.c.g("WriteQueue.flush0");
                    this.f41266b.flush();
                    qh.c.i("WriteQueue.flush0");
                    z10 = true;
                    i9 = 0;
                }
            } finally {
                qh.c.i("WriteQueue.periodicFlush");
                this.f41268d.set(false);
                if (!this.f41267c.isEmpty()) {
                    f();
                }
            }
        }
        if (i9 != 0 || !z10) {
            qh.c.g("WriteQueue.flush1");
            this.f41266b.flush();
            qh.c.i("WriteQueue.flush1");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        com.google.common.base.o.A(this.f41266b.a0().Y(), "must be on the event loop");
        if (this.f41267c.peek() == null) {
            return;
        }
        e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public io.grpc.netty.shaded.io.netty.channel.i c(c cVar, boolean z10) {
        com.google.common.base.o.e(cVar.a() == null, "promise must not be set on command");
        io.grpc.netty.shaded.io.netty.channel.y F = this.f41266b.F();
        cVar.b(F);
        this.f41267c.add(cVar);
        if (z10) {
            f();
        }
        return F;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(Runnable runnable, boolean z10) {
        this.f41267c.add(new d(runnable));
        if (z10) {
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        if (this.f41268d.compareAndSet(false, true)) {
            this.f41266b.a0().execute(this.f41265a);
        }
    }
}
