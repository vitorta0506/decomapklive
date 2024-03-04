package io.grpc.internal;

import io.grpc.internal.g;
import io.grpc.internal.k2;
import io.grpc.internal.l1;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes5.dex */
public class f implements y {

    /* renamed from: a  reason: collision with root package name */
    private final l1.b f42571a;

    /* renamed from: b  reason: collision with root package name */
    private final io.grpc.internal.g f42572b;

    /* renamed from: c  reason: collision with root package name */
    private final l1 f42573c;

    /* loaded from: classes5.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f42574a;

        a(int i9) {
            this.f42574a = i9;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f.this.f42573c.isClosed()) {
                return;
            }
            try {
                f.this.f42573c.b(this.f42574a);
            } catch (Throwable th2) {
                f.this.f42572b.c(th2);
                f.this.f42573c.close();
            }
        }
    }

    /* loaded from: classes5.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ v1 f42576a;

        b(v1 v1Var) {
            this.f42576a = v1Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                f.this.f42573c.e(this.f42576a);
            } catch (Throwable th2) {
                f.this.f42572b.c(th2);
                f.this.f42573c.close();
            }
        }
    }

    /* loaded from: classes5.dex */
    class c implements Closeable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ v1 f42578a;

        c(v1 v1Var) {
            this.f42578a = v1Var;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f42578a.close();
        }
    }

    /* loaded from: classes5.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.f42573c.j();
        }
    }

    /* loaded from: classes5.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.f42573c.close();
        }
    }

    /* renamed from: io.grpc.internal.f$f  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private class C0469f extends g implements Closeable {

        /* renamed from: d  reason: collision with root package name */
        private final Closeable f42582d;

        public C0469f(Runnable runnable, Closeable closeable) {
            super(f.this, runnable, null);
            this.f42582d = closeable;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f42582d.close();
        }
    }

    /* loaded from: classes5.dex */
    private class g implements k2.a {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f42584a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f42585b;

        /* synthetic */ g(f fVar, Runnable runnable, a aVar) {
            this(runnable);
        }

        private void a() {
            if (this.f42585b) {
                return;
            }
            this.f42584a.run();
            this.f42585b = true;
        }

        @Override // io.grpc.internal.k2.a
        public InputStream next() {
            a();
            return f.this.f42572b.f();
        }

        private g(Runnable runnable) {
            this.f42585b = false;
            this.f42584a = runnable;
        }
    }

    /* loaded from: classes5.dex */
    interface h extends g.d {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(l1.b bVar, h hVar, l1 l1Var) {
        h2 h2Var = new h2((l1.b) com.google.common.base.o.t(bVar, "listener"));
        this.f42571a = h2Var;
        io.grpc.internal.g gVar = new io.grpc.internal.g(h2Var, hVar);
        this.f42572b = gVar;
        l1Var.w(gVar);
        this.f42573c = l1Var;
    }

    @Override // io.grpc.internal.y
    public void b(int i9) {
        this.f42571a.a(new g(this, new a(i9), null));
    }

    @Override // io.grpc.internal.y
    public void c(int i9) {
        this.f42573c.c(i9);
    }

    @Override // io.grpc.internal.y
    public void close() {
        this.f42573c.y();
        this.f42571a.a(new g(this, new e(), null));
    }

    @Override // io.grpc.internal.y
    public void d(io.grpc.u uVar) {
        this.f42573c.d(uVar);
    }

    @Override // io.grpc.internal.y
    public void e(v1 v1Var) {
        this.f42571a.a(new C0469f(new b(v1Var), new c(v1Var)));
    }

    @Override // io.grpc.internal.y
    public void j() {
        this.f42571a.a(new g(this, new d(), null));
    }
}
