package io.grpc.netty.shaded.io.netty.channel;

import io.grpc.netty.shaded.io.netty.channel.e;
import io.grpc.netty.shaded.io.netty.channel.socket.ChannelOutputShutdownException;
import io.grpc.netty.shaded.io.netty.channel.v0;
import java.io.IOException;
import java.net.ConnectException;
import java.net.NoRouteToHostException;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.NotYetConnectedException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes5.dex */
public abstract class a extends io.grpc.netty.shaded.io.netty.util.k implements io.grpc.netty.shaded.io.netty.channel.e {

    /* renamed from: r  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f43442r = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(a.class);

    /* renamed from: d  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.channel.e f43443d;

    /* renamed from: j  reason: collision with root package name */
    private volatile SocketAddress f43449j;

    /* renamed from: k  reason: collision with root package name */
    private volatile SocketAddress f43450k;

    /* renamed from: l  reason: collision with root package name */
    private volatile l0 f43451l;

    /* renamed from: m  reason: collision with root package name */
    private volatile boolean f43452m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f43453n;

    /* renamed from: o  reason: collision with root package name */
    private Throwable f43454o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f43455p;

    /* renamed from: q  reason: collision with root package name */
    private String f43456q;

    /* renamed from: h  reason: collision with root package name */
    private final e1 f43447h = new e1(this, false);

    /* renamed from: i  reason: collision with root package name */
    private final e f43448i = new e(this);

    /* renamed from: e  reason: collision with root package name */
    private final ChannelId f43444e = z0();

    /* renamed from: f  reason: collision with root package name */
    private final e.a f43445f = A0();

    /* renamed from: g  reason: collision with root package name */
    private final e0 f43446g = y0();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: io.grpc.netty.shaded.io.netty.channel.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public abstract class AbstractC0473a implements e.a {

        /* renamed from: a  reason: collision with root package name */
        private volatile s f43457a;

        /* renamed from: b  reason: collision with root package name */
        private v0.c f43458b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f43459c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f43460d = true;

        /* renamed from: io.grpc.netty.shaded.io.netty.channel.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class RunnableC0474a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ y f43462a;

            RunnableC0474a(y yVar) {
                this.f43462a = yVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC0473a.this.w(this.f43462a);
            }
        }

        /* renamed from: io.grpc.netty.shaded.io.netty.channel.a$a$b */
        /* loaded from: classes5.dex */
        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f43446g.m1();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.grpc.netty.shaded.io.netty.channel.a$a$c */
        /* loaded from: classes5.dex */
        public class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ y f43465a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ s f43466b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Throwable f43467c;

            /* renamed from: io.grpc.netty.shaded.io.netty.channel.a$a$c$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            class RunnableC0475a implements Runnable {
                RunnableC0475a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    AbstractC0473a abstractC0473a = AbstractC0473a.this;
                    e0 e0Var = a.this.f43446g;
                    c cVar = c.this;
                    abstractC0473a.m(e0Var, cVar.f43466b, cVar.f43467c);
                }
            }

            c(y yVar, s sVar, Throwable th2) {
                this.f43465a = yVar;
                this.f43466b = sVar;
                this.f43467c = th2;
            }

            @Override // java.lang.Runnable
            public void run() {
                l0 a02;
                RunnableC0475a runnableC0475a;
                try {
                    a.this.o0();
                    this.f43465a.m();
                    a02 = a.this.a0();
                    runnableC0475a = new RunnableC0475a();
                } catch (Throwable th2) {
                    try {
                        this.f43465a.u(th2);
                        a02 = a.this.a0();
                        runnableC0475a = new RunnableC0475a();
                    } catch (Throwable th3) {
                        a.this.a0().execute(new RunnableC0475a());
                        throw th3;
                    }
                }
                a02.execute(runnableC0475a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.grpc.netty.shaded.io.netty.channel.a$a$d */
        /* loaded from: classes5.dex */
        public class d implements j {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ y f43470a;

            d(y yVar) {
                this.f43470a = yVar;
            }

            @Override // ug.r
            /* renamed from: a */
            public void e(i iVar) throws Exception {
                this.f43470a.m();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.grpc.netty.shaded.io.netty.channel.a$a$e */
        /* loaded from: classes5.dex */
        public class e implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ y f43472a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ s f43473b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Throwable f43474c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ boolean f43475d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ ClosedChannelException f43476e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ boolean f43477f;

            /* renamed from: io.grpc.netty.shaded.io.netty.channel.a$a$e$a  reason: collision with other inner class name */
            /* loaded from: classes5.dex */
            class RunnableC0476a implements Runnable {
                RunnableC0476a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    e eVar = e.this;
                    s sVar = eVar.f43473b;
                    if (sVar != null) {
                        sVar.k(eVar.f43474c, eVar.f43475d);
                        e eVar2 = e.this;
                        eVar2.f43473b.f(eVar2.f43476e);
                    }
                    e eVar3 = e.this;
                    AbstractC0473a.this.q(eVar3.f43477f);
                }
            }

            e(y yVar, s sVar, Throwable th2, boolean z10, ClosedChannelException closedChannelException, boolean z11) {
                this.f43472a = yVar;
                this.f43473b = sVar;
                this.f43474c = th2;
                this.f43475d = z10;
                this.f43476e = closedChannelException;
                this.f43477f = z11;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    AbstractC0473a.this.o(this.f43472a);
                } finally {
                    AbstractC0473a.this.t(new RunnableC0476a());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.grpc.netty.shaded.io.netty.channel.a$a$f */
        /* loaded from: classes5.dex */
        public class f implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ boolean f43480a;

            f(boolean z10) {
                this.f43480a = z10;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC0473a.this.q(this.f43480a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.grpc.netty.shaded.io.netty.channel.a$a$g */
        /* loaded from: classes5.dex */
        public class g implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ boolean f43482a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ y f43483b;

            g(boolean z10, y yVar) {
                this.f43482a = z10;
                this.f43483b = yVar;
            }

            /* JADX WARN: Code restructure failed: missing block: B:17:0x005c, code lost:
                if (r4.f43484c.f43461e.f43452m == false) goto L10;
             */
            /* JADX WARN: Code restructure failed: missing block: B:19:0x005f, code lost:
                return;
             */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    r4 = this;
                    r0 = 0
                    io.grpc.netty.shaded.io.netty.channel.a$a r1 = io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a.this     // Catch: java.lang.Throwable -> L3b
                    io.grpc.netty.shaded.io.netty.channel.a r1 = io.grpc.netty.shaded.io.netty.channel.a.this     // Catch: java.lang.Throwable -> L3b
                    r1.i0()     // Catch: java.lang.Throwable -> L3b
                    boolean r1 = r4.f43482a
                    if (r1 == 0) goto L17
                    io.grpc.netty.shaded.io.netty.channel.a$a r1 = io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a.this
                    io.grpc.netty.shaded.io.netty.channel.a r1 = io.grpc.netty.shaded.io.netty.channel.a.this
                    io.grpc.netty.shaded.io.netty.channel.e0 r1 = io.grpc.netty.shaded.io.netty.channel.a.C(r1)
                    r1.m1()
                L17:
                    io.grpc.netty.shaded.io.netty.channel.a$a r1 = io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a.this
                    io.grpc.netty.shaded.io.netty.channel.a r1 = io.grpc.netty.shaded.io.netty.channel.a.this
                    boolean r1 = io.grpc.netty.shaded.io.netty.channel.a.e(r1)
                    if (r1 == 0) goto L33
                L21:
                    io.grpc.netty.shaded.io.netty.channel.a$a r1 = io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a.this
                    io.grpc.netty.shaded.io.netty.channel.a r1 = io.grpc.netty.shaded.io.netty.channel.a.this
                    io.grpc.netty.shaded.io.netty.channel.a.h(r1, r0)
                    io.grpc.netty.shaded.io.netty.channel.a$a r0 = io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a.this
                    io.grpc.netty.shaded.io.netty.channel.a r0 = io.grpc.netty.shaded.io.netty.channel.a.this
                    io.grpc.netty.shaded.io.netty.channel.e0 r0 = io.grpc.netty.shaded.io.netty.channel.a.C(r0)
                    r0.o1()
                L33:
                    io.grpc.netty.shaded.io.netty.channel.a$a r0 = io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a.this
                    io.grpc.netty.shaded.io.netty.channel.y r1 = r4.f43483b
                    r0.y(r1)
                    goto L5f
                L3b:
                    r1 = move-exception
                    io.grpc.netty.shaded.io.netty.util.internal.logging.b r2 = io.grpc.netty.shaded.io.netty.channel.a.t()     // Catch: java.lang.Throwable -> L60
                    java.lang.String r3 = "Unexpected exception occurred while deregistering a channel."
                    r2.warn(r3, r1)     // Catch: java.lang.Throwable -> L60
                    boolean r1 = r4.f43482a
                    if (r1 == 0) goto L54
                    io.grpc.netty.shaded.io.netty.channel.a$a r1 = io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a.this
                    io.grpc.netty.shaded.io.netty.channel.a r1 = io.grpc.netty.shaded.io.netty.channel.a.this
                    io.grpc.netty.shaded.io.netty.channel.e0 r1 = io.grpc.netty.shaded.io.netty.channel.a.C(r1)
                    r1.m1()
                L54:
                    io.grpc.netty.shaded.io.netty.channel.a$a r1 = io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a.this
                    io.grpc.netty.shaded.io.netty.channel.a r1 = io.grpc.netty.shaded.io.netty.channel.a.this
                    boolean r1 = io.grpc.netty.shaded.io.netty.channel.a.e(r1)
                    if (r1 == 0) goto L33
                    goto L21
                L5f:
                    return
                L60:
                    r1 = move-exception
                    boolean r2 = r4.f43482a
                    if (r2 == 0) goto L70
                    io.grpc.netty.shaded.io.netty.channel.a$a r2 = io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a.this
                    io.grpc.netty.shaded.io.netty.channel.a r2 = io.grpc.netty.shaded.io.netty.channel.a.this
                    io.grpc.netty.shaded.io.netty.channel.e0 r2 = io.grpc.netty.shaded.io.netty.channel.a.C(r2)
                    r2.m1()
                L70:
                    io.grpc.netty.shaded.io.netty.channel.a$a r2 = io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a.this
                    io.grpc.netty.shaded.io.netty.channel.a r2 = io.grpc.netty.shaded.io.netty.channel.a.this
                    boolean r2 = io.grpc.netty.shaded.io.netty.channel.a.e(r2)
                    if (r2 == 0) goto L8c
                    io.grpc.netty.shaded.io.netty.channel.a$a r2 = io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a.this
                    io.grpc.netty.shaded.io.netty.channel.a r2 = io.grpc.netty.shaded.io.netty.channel.a.this
                    io.grpc.netty.shaded.io.netty.channel.a.h(r2, r0)
                    io.grpc.netty.shaded.io.netty.channel.a$a r0 = io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a.this
                    io.grpc.netty.shaded.io.netty.channel.a r0 = io.grpc.netty.shaded.io.netty.channel.a.this
                    io.grpc.netty.shaded.io.netty.channel.e0 r0 = io.grpc.netty.shaded.io.netty.channel.a.C(r0)
                    r0.o1()
                L8c:
                    io.grpc.netty.shaded.io.netty.channel.a$a r0 = io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a.this
                    io.grpc.netty.shaded.io.netty.channel.y r2 = r4.f43483b
                    r0.y(r2)
                    throw r1
                */
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.channel.a.AbstractC0473a.g.run():void");
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.grpc.netty.shaded.io.netty.channel.a$a$h */
        /* loaded from: classes5.dex */
        public class h implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Exception f43485a;

            h(Exception exc) {
                this.f43485a = exc;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f43446g.v(this.f43485a);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public AbstractC0473a() {
            this.f43457a = new s(a.this);
        }

        private void j() {
        }

        private void k(y yVar, Throwable th2, ClosedChannelException closedChannelException, boolean z10) {
            if (yVar.g()) {
                if (a.this.f43453n) {
                    if (a.this.f43448i.isDone()) {
                        y(yVar);
                        return;
                    } else if (yVar instanceof e1) {
                        return;
                    } else {
                        a.this.f43448i.c((ug.r<? extends ug.q<? super Void>>) new d(yVar));
                        return;
                    }
                }
                a.this.f43453n = true;
                boolean isActive = a.this.isActive();
                s sVar = this.f43457a;
                this.f43457a = null;
                Executor v10 = v();
                if (v10 != null) {
                    v10.execute(new e(yVar, sVar, th2, z10, closedChannelException, isActive));
                    return;
                }
                try {
                    o(yVar);
                    if (this.f43459c) {
                        t(new f(isActive));
                    } else {
                        q(isActive);
                    }
                } finally {
                    if (sVar != null) {
                        sVar.k(th2, z10);
                        sVar.f(closedChannelException);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void m(w wVar, s sVar, Throwable th2) {
            sVar.k(th2, false);
            sVar.e(th2, true);
            wVar.s(ng.c.f55364a);
        }

        private void n(y yVar, boolean z10) {
            if (yVar.g()) {
                if (!a.this.f43452m) {
                    y(yVar);
                } else {
                    t(new g(z10, yVar));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void o(y yVar) {
            try {
                a.this.h0();
                a.this.f43448i.n0();
                y(yVar);
            } catch (Throwable th2) {
                a.this.f43448i.n0();
                x(yVar, th2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void q(boolean z10) {
            n(N(), z10 && !a.this.isActive());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t(Runnable runnable) {
            try {
                a.this.a0().execute(runnable);
            } catch (RejectedExecutionException e10) {
                a.f43442r.warn("Can't invoke task later as EventLoop rejected it", (Throwable) e10);
            }
        }

        private ClosedChannelException u(Throwable th2, String str) {
            c1 a10 = c1.a(AbstractC0473a.class, str);
            if (th2 != null) {
                a10.initCause(th2);
            }
            return a10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void w(y yVar) {
            try {
                if (yVar.g() && p(yVar)) {
                    boolean z10 = this.f43460d;
                    a.this.l0();
                    this.f43460d = false;
                    a.this.f43452m = true;
                    a.this.f43446g.v1();
                    y(yVar);
                    a.this.f43446g.n1();
                    if (a.this.isActive()) {
                        if (z10) {
                            a.this.f43446g.q();
                        } else if (a.this.b0().l()) {
                            T();
                        }
                    }
                }
            } catch (Throwable th2) {
                V();
                a.this.f43448i.n0();
                x(yVar, th2);
            }
        }

        private void z(y yVar, Throwable th2) {
            if (yVar.g()) {
                s sVar = this.f43457a;
                if (sVar == null) {
                    yVar.u(new ClosedChannelException());
                    return;
                }
                this.f43457a = null;
                ChannelOutputShutdownException channelOutputShutdownException = th2 == null ? new ChannelOutputShutdownException("Channel output shutdown") : new ChannelOutputShutdownException("Channel output shutdown", th2);
                Executor v10 = v();
                if (v10 != null) {
                    v10.execute(new c(yVar, sVar, channelOutputShutdownException));
                    return;
                }
                try {
                    a.this.o0();
                    yVar.m();
                } finally {
                    try {
                    } finally {
                    }
                }
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.e.a
        public final SocketAddress H() {
            return a.this.B0();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.e.a
        public final SocketAddress K() {
            return a.this.v0();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.e.a
        public void L(y yVar) {
            j();
            ClosedChannelException a10 = c1.a(a.class, "close(ChannelPromise)");
            k(yVar, a10, a10, false);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.e.a
        public final void M(y yVar) {
            j();
            if (yVar.g()) {
                boolean isActive = a.this.isActive();
                try {
                    a.this.j0();
                    a.this.f43450k = null;
                    a.this.f43449j = null;
                    if (isActive && !a.this.isActive()) {
                        t(new b());
                    }
                    y(yVar);
                    l();
                } catch (Throwable th2) {
                    x(yVar, th2);
                    l();
                }
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.e.a
        public final y N() {
            j();
            return a.this.f43447h;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.e.a
        public v0.c R() {
            if (this.f43458b == null) {
                this.f43458b = a.this.b0().m().a();
            }
            return this.f43458b;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.e.a
        public final s S() {
            return this.f43457a;
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.e.a
        public final void T() {
            j();
            try {
                a.this.g0();
            } catch (Exception e10) {
                t(new h(e10));
                L(N());
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.e.a
        public final void U(l0 l0Var, y yVar) {
            io.grpc.netty.shaded.io.netty.util.internal.s.h(l0Var, "eventLoop");
            if (a.this.O()) {
                yVar.u(new IllegalStateException("registered to an event loop already"));
            } else if (!a.this.u0(l0Var)) {
                yVar.u(new IllegalStateException("incompatible event loop type: " + l0Var.getClass().getName()));
            } else {
                a.this.f43451l = l0Var;
                if (l0Var.Y()) {
                    w(yVar);
                    return;
                }
                try {
                    l0Var.execute(new RunnableC0474a(yVar));
                } catch (Throwable th2) {
                    a.f43442r.warn("Force-closing a channel whose registration task was not accepted by an event loop: {}", a.this, th2);
                    V();
                    a.this.f43448i.n0();
                    x(yVar, th2);
                }
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.e.a
        public final void V() {
            j();
            try {
                a.this.h0();
            } catch (Exception e10) {
                a.f43442r.warn("Failed to close a channel.", (Throwable) e10);
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.e.a
        public final void c(Object obj, y yVar) {
            j();
            s sVar = this.f43457a;
            if (sVar == null) {
                try {
                    io.grpc.netty.shaded.io.netty.util.r.a(obj);
                    return;
                } finally {
                    x(yVar, u(a.this.f43454o, "write(Object, ChannelPromise)"));
                }
            }
            try {
                obj = a.this.r0(obj);
                int size = a.this.f43446g.k1().size(obj);
                if (size < 0) {
                    size = 0;
                }
                sVar.b(obj, size, yVar);
            } catch (Throwable th2) {
                try {
                    io.grpc.netty.shaded.io.netty.util.r.a(obj);
                } finally {
                    x(yVar, th2);
                }
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.e.a
        public final void flush() {
            j();
            s sVar = this.f43457a;
            if (sVar == null) {
                return;
            }
            sVar.a();
            r();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final Throwable i(Throwable th2, SocketAddress socketAddress) {
            if (th2 instanceof ConnectException) {
                return new b((ConnectException) th2, socketAddress);
            }
            if (th2 instanceof NoRouteToHostException) {
                return new c((NoRouteToHostException) th2, socketAddress);
            }
            return th2 instanceof SocketException ? new d((SocketException) th2, socketAddress) : th2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void l() {
            if (a.this.isOpen()) {
                return;
            }
            L(N());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final boolean p(y yVar) {
            if (a.this.isOpen()) {
                return true;
            }
            x(yVar, u(a.this.f43454o, "ensureOpen(ChannelPromise)"));
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void r() {
            s sVar;
            if (this.f43459c || (sVar = this.f43457a) == null || sVar.p()) {
                return;
            }
            this.f43459c = true;
            if (!a.this.isActive()) {
                try {
                    if (!sVar.p()) {
                        if (a.this.isOpen()) {
                            sVar.k(new NotYetConnectedException(), true);
                        } else {
                            sVar.k(u(a.this.f43454o, "flush0()"), false);
                        }
                    }
                    return;
                } finally {
                }
            }
            try {
                a.this.p0(sVar);
            } finally {
                try {
                } finally {
                }
            }
        }

        protected final void s(Throwable th2) {
            if ((th2 instanceof IOException) && a.this.b0().g()) {
                a.this.f43454o = th2;
                k(N(), th2, u(th2, "flush0()"), false);
                return;
            }
            try {
                z(N(), th2);
            } catch (Throwable th3) {
                a.this.f43454o = th2;
                k(N(), th3, u(th2, "flush0()"), false);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Executor v() {
            return null;
        }

        protected final void x(y yVar, Throwable th2) {
            if ((yVar instanceof e1) || yVar.z(th2)) {
                return;
            }
            a.f43442r.warn("Failed to mark a promise as failure because it's done already: {}", yVar, th2);
        }

        protected final void y(y yVar) {
            if ((yVar instanceof e1) || yVar.I()) {
                return;
            }
            a.f43442r.warn("Failed to mark a promise as success because it is done already: {}", yVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class b extends ConnectException {
        private static final long serialVersionUID = 3901958112696433556L;

        b(ConnectException connectException, SocketAddress socketAddress) {
            super(connectException.getMessage() + ": " + socketAddress);
            initCause(connectException);
        }

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c extends NoRouteToHostException {
        private static final long serialVersionUID = -6801433937592080623L;

        c(NoRouteToHostException noRouteToHostException, SocketAddress socketAddress) {
            super(noRouteToHostException.getMessage() + ": " + socketAddress);
            initCause(noRouteToHostException);
        }

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class d extends SocketException {
        private static final long serialVersionUID = 3896743275010454039L;

        d(SocketException socketException, SocketAddress socketAddress) {
            super(socketException.getMessage() + ": " + socketAddress);
            initCause(socketException);
        }

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class e extends f0 {
        e(a aVar) {
            super(aVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.f0, io.grpc.netty.shaded.io.netty.channel.y
        public boolean I() {
            throw new IllegalStateException();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.f0, io.grpc.netty.shaded.io.netty.channel.y
        public y m() {
            throw new IllegalStateException();
        }

        boolean n0() {
            return super.I();
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.f0, io.grpc.netty.shaded.io.netty.channel.y
        public y u(Throwable th2) {
            throw new IllegalStateException();
        }

        @Override // ug.h, ug.x
        public boolean z(Throwable th2) {
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(io.grpc.netty.shaded.io.netty.channel.e eVar) {
        this.f43443d = eVar;
    }

    protected abstract AbstractC0473a A0();

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public i B(Throwable th2) {
        return this.f43446g.B(th2);
    }

    protected abstract SocketAddress B0();

    /* JADX INFO: Access modifiers changed from: protected */
    public void C0(DefaultFileRegion defaultFileRegion, long j10) throws IOException {
        DefaultFileRegion.k(defaultFileRegion, j10);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public y F() {
        return this.f43446g.F();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public final ChannelId G() {
        return this.f43444e;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public SocketAddress H() {
        SocketAddress socketAddress = this.f43450k;
        if (socketAddress == null) {
            try {
                SocketAddress H = k0().H();
                this.f43450k = H;
                return H;
            } catch (Error e10) {
                throw e10;
            } catch (Throwable unused) {
                return null;
            }
        }
        return socketAddress;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public i I(SocketAddress socketAddress, SocketAddress socketAddress2) {
        return this.f43446g.I(socketAddress, socketAddress2);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public w J() {
        return this.f43446g;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public SocketAddress K() {
        SocketAddress socketAddress = this.f43449j;
        if (socketAddress == null) {
            try {
                SocketAddress K = k0().K();
                this.f43449j = K;
                return K;
            } catch (Error e10) {
                throw e10;
            } catch (Throwable unused) {
                return null;
            }
        }
        return socketAddress;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public final y N() {
        return this.f43446g.N();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public boolean O() {
        return this.f43452m;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public kg.k P() {
        return b0().a();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public long S() {
        s S = this.f43445f.S();
        if (S != null) {
            return S.c();
        }
        return 0L;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public l0 a0() {
        l0 l0Var = this.f43451l;
        if (l0Var != null) {
            return l0Var;
        }
        throw new IllegalStateException("channel not registered to an event loop");
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public i c(Object obj, y yVar) {
        return this.f43446g.c(obj, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public i c0(Object obj) {
        return this.f43446g.c0(obj);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public i close() {
        return this.f43446g.close();
    }

    @Override // java.lang.Comparable
    /* renamed from: d0 */
    public final int compareTo(io.grpc.netty.shaded.io.netty.channel.e eVar) {
        if (this == eVar) {
            return 0;
        }
        return G().compareTo(eVar.G());
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public i f(SocketAddress socketAddress) {
        return this.f43446g.f(socketAddress);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public io.grpc.netty.shaded.io.netty.channel.e flush() {
        this.f43446g.p1();
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v
    public i g(Object obj) {
        return this.f43446g.g(obj);
    }

    protected abstract void g0() throws Exception;

    protected abstract void h0() throws Exception;

    public final int hashCode() {
        return this.f43444e.hashCode();
    }

    protected void i0() throws Exception {
    }

    protected abstract void j0() throws Exception;

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public e.a k0() {
        return this.f43445f;
    }

    protected void l0() throws Exception {
    }

    protected void o0() throws Exception {
        h0();
    }

    protected abstract void p0(s sVar) throws Exception;

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public boolean q0() {
        s S = this.f43445f.S();
        return S != null && S.r();
    }

    protected Object r0(Object obj) throws Exception {
        return obj;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.e
    public io.grpc.netty.shaded.io.netty.channel.e read() {
        this.f43446g.F1();
        return this;
    }

    public String toString() {
        String str;
        boolean isActive = isActive();
        if (this.f43455p != isActive || (str = this.f43456q) == null) {
            SocketAddress H = H();
            SocketAddress K = K();
            if (H != null) {
                StringBuilder sb2 = new StringBuilder(96);
                sb2.append("[id: 0x");
                sb2.append(this.f43444e.asShortText());
                sb2.append(", L:");
                sb2.append(K);
                sb2.append(isActive ? " - " : " ! ");
                sb2.append("R:");
                sb2.append(H);
                sb2.append(']');
                this.f43456q = sb2.toString();
            } else if (K != null) {
                StringBuilder sb3 = new StringBuilder(64);
                sb3.append("[id: 0x");
                sb3.append(this.f43444e.asShortText());
                sb3.append(", L:");
                sb3.append(K);
                sb3.append(']');
                this.f43456q = sb3.toString();
            } else {
                StringBuilder sb4 = new StringBuilder(16);
                sb4.append("[id: 0x");
                sb4.append(this.f43444e.asShortText());
                sb4.append(']');
                this.f43456q = sb4.toString();
            }
            this.f43455p = isActive;
            return this.f43456q;
        }
        return str;
    }

    protected abstract boolean u0(l0 l0Var);

    protected abstract SocketAddress v0();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int w0() {
        f b02 = b0();
        if (b02 instanceof c0) {
            return ((c0) b02).p();
        }
        Integer num = (Integer) b02.b(r.f43730k);
        if (num == null) {
            return Integer.MAX_VALUE;
        }
        return num.intValue();
    }

    protected e0 y0() {
        return new e0(this);
    }

    protected ChannelId z0() {
        return DefaultChannelId.newInstance();
    }
}
