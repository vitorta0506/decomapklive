package io.grpc.netty.shaded.io.netty.handler.codec.http;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import pg.g;
/* loaded from: classes5.dex */
public class a extends e {

    /* renamed from: io.grpc.netty.shaded.io.netty.handler.codec.http.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private static final class C0485a extends pg.g<CharSequence, CharSequence, C0485a> {

        /* renamed from: h  reason: collision with root package name */
        private c<Object> f43850h;

        /* renamed from: i  reason: collision with root package name */
        private c<CharSequence> f43851i;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.grpc.netty.shaded.io.netty.handler.codec.http.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class C0486a implements c<Object> {
            C0486a() {
            }

            @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.a.C0485a.c
            public CharSequence a(Object obj) {
                return io.grpc.netty.shaded.io.netty.util.internal.b0.d((CharSequence) C0485a.this.R().a(obj), true);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.grpc.netty.shaded.io.netty.handler.codec.http.a$a$b */
        /* loaded from: classes5.dex */
        public class b implements c<CharSequence> {
            b() {
            }

            @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.a.C0485a.c
            /* renamed from: b */
            public CharSequence a(CharSequence charSequence) {
                return io.grpc.netty.shaded.io.netty.util.internal.b0.d(charSequence, true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: io.grpc.netty.shaded.io.netty.handler.codec.http.a$a$c */
        /* loaded from: classes5.dex */
        public interface c<T> {
            CharSequence a(T t10);
        }

        C0485a(io.grpc.netty.shaded.io.netty.util.l<CharSequence> lVar, pg.o<CharSequence> oVar, g.d<CharSequence> dVar) {
            super(lVar, oVar, dVar);
        }

        private C0485a e0(CharSequence charSequence, CharSequence charSequence2) {
            CharSequence charSequence3 = (CharSequence) super.get(charSequence);
            if (charSequence3 != null && !k0(charSequence)) {
                super.M(charSequence, p0(charSequence3, charSequence2));
            } else {
                super.Z0(charSequence, charSequence2);
            }
            return this;
        }

        private static boolean k0(CharSequence charSequence) {
            return r.f44007n0.k(charSequence);
        }

        private c<CharSequence> m0() {
            if (this.f43851i == null) {
                this.f43851i = new b();
            }
            return this.f43851i;
        }

        private static <T> CharSequence n0(c<T> cVar, Iterable<? extends T> iterable) {
            StringBuilder sb2 = iterable instanceof Collection ? new StringBuilder(((Collection) iterable).size() * 10) : new StringBuilder();
            Iterator<? extends T> it = iterable.iterator();
            if (it.hasNext()) {
                T next = it.next();
                while (it.hasNext()) {
                    sb2.append(cVar.a(next));
                    sb2.append(',');
                    next = it.next();
                }
                sb2.append(cVar.a(next));
            }
            return sb2;
        }

        private static <T> CharSequence o0(c<T> cVar, T... tArr) {
            StringBuilder sb2 = new StringBuilder(tArr.length * 10);
            if (tArr.length > 0) {
                int length = tArr.length - 1;
                for (int i9 = 0; i9 < length; i9++) {
                    sb2.append(cVar.a(tArr[i9]));
                    sb2.append(',');
                }
                sb2.append(cVar.a(tArr[length]));
            }
            return sb2;
        }

        private static CharSequence p0(CharSequence charSequence, CharSequence charSequence2) {
            StringBuilder sb2 = new StringBuilder(charSequence.length() + 1 + charSequence2.length());
            sb2.append(charSequence);
            sb2.append(',');
            sb2.append(charSequence2);
            return sb2;
        }

        private c<Object> s0() {
            if (this.f43850h == null) {
                this.f43850h = new C0486a();
            }
            return this.f43850h;
        }

        @Override // pg.g, pg.i
        /* renamed from: b0 */
        public C0485a Z0(CharSequence charSequence, CharSequence charSequence2) {
            return e0(charSequence, m0().a(charSequence2));
        }

        @Override // pg.g
        /* renamed from: c0 */
        public C0485a g(pg.i<? extends CharSequence, ? extends CharSequence, ?> iVar) {
            if (iVar != this) {
                if (iVar instanceof C0485a) {
                    if (isEmpty()) {
                        n(iVar);
                    } else {
                        for (Map.Entry<? extends CharSequence, ? extends CharSequence> entry : iVar) {
                            e0(entry.getKey(), entry.getValue());
                        }
                    }
                } else {
                    for (Map.Entry<? extends CharSequence, ? extends CharSequence> entry2 : iVar) {
                        Z0(entry2.getKey(), entry2.getValue());
                    }
                }
                return this;
            }
            throw new IllegalArgumentException("can't add to itself.");
        }

        @Override // pg.g
        /* renamed from: f0 */
        public C0485a u(CharSequence charSequence, Object obj) {
            return e0(charSequence, o0(s0(), obj));
        }

        @Override // pg.g, pg.i
        /* renamed from: q0 */
        public List<CharSequence> d0(CharSequence charSequence) {
            List<CharSequence> d02 = super.d0(charSequence);
            if (d02.isEmpty() || k0(charSequence)) {
                return d02;
            }
            if (d02.size() == 1) {
                return io.grpc.netty.shaded.io.netty.util.internal.b0.o(d02.get(0));
            }
            throw new IllegalStateException("CombinedHttpHeaders should only have one value");
        }

        @Override // pg.g
        /* renamed from: u0 */
        public C0485a N(pg.i<? extends CharSequence, ? extends CharSequence, ?> iVar) {
            if (iVar == this) {
                return this;
            }
            x();
            return g(iVar);
        }

        @Override // pg.g
        /* renamed from: v0 */
        public C0485a O(CharSequence charSequence, Iterable<?> iterable) {
            super.M(charSequence, n0(s0(), iterable));
            return this;
        }

        @Override // pg.g
        /* renamed from: w0 */
        public C0485a P(CharSequence charSequence, Object obj) {
            super.M(charSequence, o0(s0(), obj));
            return this;
        }

        @Override // pg.g
        /* renamed from: y0 */
        public Iterator<CharSequence> S(CharSequence charSequence) {
            Iterator<CharSequence> S = super.S(charSequence);
            if (!S.hasNext() || k0(charSequence)) {
                return S;
            }
            Iterator<CharSequence> it = io.grpc.netty.shaded.io.netty.util.internal.b0.o(S.next()).iterator();
            if (S.hasNext()) {
                throw new IllegalStateException("CombinedHttpHeaders should only have one value");
            }
            return it;
        }
    }

    public a(boolean z10) {
        super(new C0485a(io.grpc.netty.shaded.io.netty.util.c.f45005g, e.m0(z10), e.e0(z10)));
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public boolean z(CharSequence charSequence, CharSequence charSequence2, boolean z10) {
        return super.z(charSequence, io.grpc.netty.shaded.io.netty.util.internal.b0.n(charSequence2), z10);
    }
}
