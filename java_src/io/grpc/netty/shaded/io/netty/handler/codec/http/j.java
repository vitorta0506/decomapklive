package io.grpc.netty.shaded.io.netty.handler.codec.http;

import java.util.Iterator;
import java.util.Map;
import pg.g;
/* loaded from: classes5.dex */
public class j extends d implements k0 {

    /* renamed from: c  reason: collision with root package name */
    private final t f43956c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f43957d;

    /* loaded from: classes5.dex */
    private static final class a extends e {

        /* renamed from: e  reason: collision with root package name */
        private static final g.d<CharSequence> f43958e = new C0488a();

        /* renamed from: io.grpc.netty.shaded.io.netty.handler.codec.http.j$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        static class C0488a implements g.d<CharSequence> {
            C0488a() {
            }

            @Override // pg.g.d
            /* renamed from: b */
            public void a(CharSequence charSequence) {
                e.f43913d.a(charSequence);
                if (r.f44024w.k(charSequence) || r.f44015r0.k(charSequence) || r.f44013q0.k(charSequence)) {
                    throw new IllegalArgumentException("prohibited trailing header: " + ((Object) charSequence));
                }
            }
        }

        a(boolean z10) {
            super(z10, z10 ? f43958e : g.d.f56865a);
        }
    }

    public j(kg.j jVar) {
        this(jVar, true);
    }

    private void l(StringBuilder sb2) {
        Iterator<Map.Entry<String, String>> it = x().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            sb2.append(next.getKey());
            sb2.append(": ");
            sb2.append(next.getValue());
            sb2.append(io.grpc.netty.shaded.io.netty.util.internal.b0.f45033a);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.d, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: n */
    public k0 retain() {
        super.retain();
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.d, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: o */
    public k0 touch(Object obj) {
        super.touch(obj);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.d
    public String toString() {
        StringBuilder sb2 = new StringBuilder(super.toString());
        String str = io.grpc.netty.shaded.io.netty.util.internal.b0.f45033a;
        sb2.append(str);
        l(sb2);
        sb2.setLength(sb2.length() - str.length());
        return sb2.toString();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.k0
    public t x() {
        return this.f43956c;
    }

    public j(kg.j jVar, boolean z10) {
        super(jVar);
        this.f43956c = new a(z10);
        this.f43957d = z10;
    }
}
