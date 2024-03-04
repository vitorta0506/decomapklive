package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.handler.ssl.u;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLHandshakeException;
/* loaded from: classes5.dex */
class v implements u {

    /* renamed from: e  reason: collision with root package name */
    static final u.e f44825e = new a();

    /* renamed from: f  reason: collision with root package name */
    static final u.e f44826f = new b();

    /* renamed from: g  reason: collision with root package name */
    static final u.c f44827g = new c();

    /* renamed from: h  reason: collision with root package name */
    static final u.c f44828h = new d();

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f44829a;

    /* renamed from: b  reason: collision with root package name */
    private final u.e f44830b;

    /* renamed from: c  reason: collision with root package name */
    private final u.c f44831c;

    /* renamed from: d  reason: collision with root package name */
    private final u.f f44832d;

    /* loaded from: classes5.dex */
    static class a implements u.e {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u.e
        public u.d a(SSLEngine sSLEngine, Set<String> set) {
            return new f((a0) sSLEngine, set);
        }
    }

    /* loaded from: classes5.dex */
    static class b implements u.e {
        b() {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u.e
        public u.d a(SSLEngine sSLEngine, Set<String> set) {
            return new h((a0) sSLEngine, set);
        }
    }

    /* loaded from: classes5.dex */
    static class c implements u.c {
        c() {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u.c
        public u.b a(SSLEngine sSLEngine, List<String> list) {
            return new e((a0) sSLEngine, list);
        }
    }

    /* loaded from: classes5.dex */
    static class d implements u.c {
        d() {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u.c
        public u.b a(SSLEngine sSLEngine, List<String> list) {
            return new g((a0) sSLEngine, list);
        }
    }

    /* loaded from: classes5.dex */
    private static final class e extends g {
        e(a0 a0Var, List<String> list) {
            super(a0Var, list);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.v.g
        protected void c(String str) throws Exception {
            throw new SSLHandshakeException("No compatible protocols found");
        }
    }

    /* loaded from: classes5.dex */
    private static final class f extends h {
        f(a0 a0Var, Set<String> set) {
            super(a0Var, set);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.v.h
        public String c() throws Exception {
            throw new SSLHandshakeException("Selected protocol is not supported");
        }
    }

    /* loaded from: classes5.dex */
    private static class g implements u.b {

        /* renamed from: a  reason: collision with root package name */
        private final a0 f44833a;

        /* renamed from: b  reason: collision with root package name */
        private final List<String> f44834b;

        g(a0 a0Var, List<String> list) {
            this.f44833a = a0Var;
            this.f44834b = list;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u.b
        public void a() {
            this.f44833a.c(null);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u.b
        public void b(String str) throws Exception {
            if (this.f44834b.contains(str)) {
                this.f44833a.c(str);
            } else {
                c(str);
            }
        }

        protected void c(String str) throws Exception {
        }
    }

    /* loaded from: classes5.dex */
    static class h implements u.d {

        /* renamed from: a  reason: collision with root package name */
        private final a0 f44835a;

        /* renamed from: b  reason: collision with root package name */
        private final Set<String> f44836b;

        h(a0 a0Var, Set<String> set) {
            this.f44835a = a0Var;
            this.f44836b = set;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u.d
        public void a() {
            this.f44835a.c(null);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u.d
        public String b(List<String> list) throws Exception {
            for (String str : this.f44836b) {
                if (list.contains(str)) {
                    this.f44835a.c(str);
                    return str;
                }
            }
            return c();
        }

        public String c() throws Exception {
            this.f44835a.c(null);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(u.f fVar, u.e eVar, u.c cVar, Iterable<String> iterable) {
        this(fVar, eVar, cVar, io.grpc.netty.shaded.io.netty.handler.ssl.c.b(iterable));
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.b
    public List<String> b() {
        return this.f44829a;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u
    public u.c c() {
        return this.f44831c;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u
    public u.e e() {
        return this.f44830b;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.u
    public u.f f() {
        return this.f44832d;
    }

    private v(u.f fVar, u.e eVar, u.c cVar, List<String> list) {
        this.f44832d = (u.f) io.grpc.netty.shaded.io.netty.util.internal.s.h(fVar, "wrapperFactory");
        this.f44830b = (u.e) io.grpc.netty.shaded.io.netty.util.internal.s.h(eVar, "selectorFactory");
        this.f44831c = (u.c) io.grpc.netty.shaded.io.netty.util.internal.s.h(cVar, "listenerFactory");
        this.f44829a = Collections.unmodifiableList((List) io.grpc.netty.shaded.io.netty.util.internal.s.h(list, "protocols"));
    }
}
