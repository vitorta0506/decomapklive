package io.grpc.internal;

import io.grpc.internal.k2;
import io.grpc.internal.l1;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class g implements l1.b {

    /* renamed from: a  reason: collision with root package name */
    private final d f42602a;

    /* renamed from: b  reason: collision with root package name */
    private final l1.b f42603b;

    /* renamed from: c  reason: collision with root package name */
    private final Queue<InputStream> f42604c = new ArrayDeque();

    /* loaded from: classes5.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f42605a;

        a(int i9) {
            this.f42605a = i9;
        }

        @Override // java.lang.Runnable
        public void run() {
            g.this.f42603b.b(this.f42605a);
        }
    }

    /* loaded from: classes5.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f42607a;

        b(boolean z10) {
            this.f42607a = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            g.this.f42603b.d(this.f42607a);
        }
    }

    /* loaded from: classes5.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Throwable f42609a;

        c(Throwable th2) {
            this.f42609a = th2;
        }

        @Override // java.lang.Runnable
        public void run() {
            g.this.f42603b.c(this.f42609a);
        }
    }

    /* loaded from: classes5.dex */
    public interface d {
        void e(Runnable runnable);
    }

    public g(l1.b bVar, d dVar) {
        this.f42603b = (l1.b) com.google.common.base.o.t(bVar, "listener");
        this.f42602a = (d) com.google.common.base.o.t(dVar, "transportExecutor");
    }

    @Override // io.grpc.internal.l1.b
    public void a(k2.a aVar) {
        while (true) {
            InputStream next = aVar.next();
            if (next == null) {
                return;
            }
            this.f42604c.add(next);
        }
    }

    @Override // io.grpc.internal.l1.b
    public void b(int i9) {
        this.f42602a.e(new a(i9));
    }

    @Override // io.grpc.internal.l1.b
    public void c(Throwable th2) {
        this.f42602a.e(new c(th2));
    }

    @Override // io.grpc.internal.l1.b
    public void d(boolean z10) {
        this.f42602a.e(new b(z10));
    }

    public InputStream f() {
        return this.f42604c.poll();
    }
}
