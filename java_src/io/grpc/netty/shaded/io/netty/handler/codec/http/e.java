package io.grpc.netty.shaded.io.netty.handler.codec.http;

import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import pg.g;
/* loaded from: classes5.dex */
public class e extends t {

    /* renamed from: c  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.g f43912c = new a();

    /* renamed from: d  reason: collision with root package name */
    static final g.d<CharSequence> f43913d = new b();

    /* renamed from: b  reason: collision with root package name */
    private final pg.g<CharSequence, CharSequence, ?> f43914b;

    /* loaded from: classes5.dex */
    static class a implements io.grpc.netty.shaded.io.netty.util.g {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.g
        public boolean a(byte b10) throws Exception {
            e.f0(b10);
            return true;
        }
    }

    /* loaded from: classes5.dex */
    static class b implements g.d<CharSequence> {
        b() {
        }

        @Override // pg.g.d
        /* renamed from: b */
        public void a(CharSequence charSequence) {
            if (charSequence != null && charSequence.length() != 0) {
                if (charSequence instanceof io.grpc.netty.shaded.io.netty.util.c) {
                    try {
                        ((io.grpc.netty.shaded.io.netty.util.c) charSequence).q(e.f43912c);
                        return;
                    } catch (Exception e10) {
                        io.grpc.netty.shaded.io.netty.util.internal.t.R0(e10);
                        return;
                    }
                }
                for (int i9 = 0; i9 < charSequence.length(); i9++) {
                    e.k0(charSequence.charAt(i9));
                }
                return;
            }
            throw new IllegalArgumentException("empty headers are not allowed [" + ((Object) charSequence) + "]");
        }
    }

    /* loaded from: classes5.dex */
    class c implements Iterator<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Iterator f43915a;

        c(Iterator it) {
            this.f43915a = it;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public String next() {
            return ((CharSequence) this.f43915a.next()).toString();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f43915a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f43915a.remove();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class d extends pg.b {

        /* renamed from: c  reason: collision with root package name */
        static final d f43917c = new d();

        private d() {
        }

        @Override // pg.b, pg.o
        /* renamed from: c */
        public CharSequence a(Object obj) {
            if (obj instanceof CharSequence) {
                return (CharSequence) obj;
            }
            if (obj instanceof Date) {
                return pg.d.c((Date) obj);
            }
            if (obj instanceof Calendar) {
                return pg.d.c(((Calendar) obj).getTime());
            }
            return obj.toString();
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: io.grpc.netty.shaded.io.netty.handler.codec.http.e$e  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0487e extends d {

        /* renamed from: d  reason: collision with root package name */
        static final C0487e f43918d = new C0487e();

        private C0487e() {
            super(null);
        }

        private static int d(CharSequence charSequence, int i9, char c10) {
            if ((c10 & 65520) == 0) {
                if (c10 == 0) {
                    throw new IllegalArgumentException("a header value contains a prohibited character '\u0000': " + ((Object) charSequence));
                } else if (c10 == 11) {
                    throw new IllegalArgumentException("a header value contains a prohibited character '\\v': " + ((Object) charSequence));
                } else if (c10 == '\f') {
                    throw new IllegalArgumentException("a header value contains a prohibited character '\\f': " + ((Object) charSequence));
                }
            }
            if (i9 != 0) {
                if (i9 == 1) {
                    if (c10 == '\n') {
                        return 2;
                    }
                    throw new IllegalArgumentException("only '\\n' is allowed after '\\r': " + ((Object) charSequence));
                } else if (i9 == 2) {
                    if (c10 == '\t' || c10 == ' ') {
                        return 0;
                    }
                    throw new IllegalArgumentException("only ' ' and '\\t' are allowed after '\\n': " + ((Object) charSequence));
                }
            } else if (c10 == '\n') {
                return 2;
            } else {
                if (c10 == '\r') {
                    return 1;
                }
            }
            return i9;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.e.d, pg.b, pg.o
        /* renamed from: c */
        public CharSequence a(Object obj) {
            CharSequence a10 = super.a(obj);
            int i9 = 0;
            for (int i10 = 0; i10 < a10.length(); i10++) {
                i9 = d(a10, i9, a10.charAt(i10));
            }
            if (i9 == 0) {
                return a10;
            }
            throw new IllegalArgumentException("a header value must not end with '\\r' or '\\n':" + ((Object) a10));
        }
    }

    public e() {
        this(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g.d<CharSequence> e0(boolean z10) {
        return z10 ? f43913d : g.d.f56865a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f0(byte b10) {
        if (b10 != 0 && b10 != 44 && b10 != 61 && b10 != 58 && b10 != 59) {
            switch (b10) {
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                    break;
                default:
                    switch (b10) {
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                            break;
                        default:
                            if (b10 >= 0) {
                                return;
                            }
                            throw new IllegalArgumentException("a header name cannot contain non-ASCII character: " + ((int) b10));
                    }
            }
        }
        throw new IllegalArgumentException("a header name cannot contain the following prohibited characters: =,;: \\t\\r\\n\\v\\f: " + ((int) b10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void k0(char c10) {
        if (c10 != 0 && c10 != ',' && c10 != '=' && c10 != ':' && c10 != ';') {
            switch (c10) {
                case '\t':
                case '\n':
                case 11:
                case '\f':
                case '\r':
                    break;
                default:
                    switch (c10) {
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case ' ':
                            break;
                        default:
                            if (c10 <= 127) {
                                return;
                            }
                            throw new IllegalArgumentException("a header name cannot contain non-ASCII character: " + c10);
                    }
            }
        }
        throw new IllegalArgumentException("a header name cannot contain the following prohibited characters: =,;: \\t\\r\\n\\v\\f: " + c10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static pg.o<CharSequence> m0(boolean z10) {
        return z10 ? C0487e.f43918d : d.f43917c;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public t B() {
        return new e(this.f43914b.z());
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public String F(CharSequence charSequence) {
        return pg.j.b(this.f43914b, charSequence);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public String G(String str) {
        return F(str);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public List<String> H(CharSequence charSequence) {
        return pg.j.a(this.f43914b, charSequence);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public List<String> I(String str) {
        return H(str);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public Iterator<Map.Entry<CharSequence, CharSequence>> J() {
        return this.f43914b.iterator();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public t K(CharSequence charSequence) {
        this.f43914b.remove(charSequence);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public t L(String str) {
        this.f43914b.remove(str);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public t M(t tVar) {
        if (tVar instanceof e) {
            this.f43914b.N(((e) tVar).f43914b);
            return this;
        }
        return super.M(tVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public t N(CharSequence charSequence, Iterable<?> iterable) {
        this.f43914b.O(charSequence, iterable);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public t O(CharSequence charSequence, Object obj) {
        this.f43914b.P(charSequence, obj);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public t P(String str, Iterable<?> iterable) {
        this.f43914b.O(str, iterable);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public t Q(String str, Object obj) {
        this.f43914b.P(str, obj);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public Iterator<CharSequence> R(CharSequence charSequence) {
        return this.f43914b.S(charSequence);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public Iterator<String> S(CharSequence charSequence) {
        return new c(R(charSequence));
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public t c(t tVar) {
        if (tVar instanceof e) {
            this.f43914b.g(((e) tVar).f43914b);
            return this;
        }
        return super.c(tVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public t d(CharSequence charSequence, Object obj) {
        this.f43914b.u(charSequence, obj);
        return this;
    }

    public boolean equals(Object obj) {
        return (obj instanceof e) && this.f43914b.B(((e) obj).f43914b, io.grpc.netty.shaded.io.netty.util.c.f45006h);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public t f(String str, Object obj) {
        this.f43914b.u(str, obj);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public t g() {
        this.f43914b.x();
        return this;
    }

    public int hashCode() {
        return this.f43914b.G(io.grpc.netty.shaded.io.netty.util.c.f45006h);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public boolean isEmpty() {
        return this.f43914b.isEmpty();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t, java.lang.Iterable
    @Deprecated
    public Iterator<Map.Entry<String, String>> iterator() {
        return pg.j.c(this.f43914b);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public boolean m(CharSequence charSequence) {
        return this.f43914b.contains(charSequence);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public boolean n(CharSequence charSequence, CharSequence charSequence2, boolean z10) {
        return this.f43914b.y(charSequence, charSequence2, z10 ? io.grpc.netty.shaded.io.netty.util.c.f45005g : io.grpc.netty.shaded.io.netty.util.c.f45006h);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public int size() {
        return this.f43914b.size();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public boolean u(String str) {
        return m(str);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.t
    public boolean x(String str, String str2, boolean z10) {
        return n(str, str2, z10);
    }

    public e(boolean z10) {
        this(z10, e0(z10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e(boolean z10, g.d<CharSequence> dVar) {
        this(new pg.h(io.grpc.netty.shaded.io.netty.util.c.f45005g, m0(z10), dVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e(pg.g<CharSequence, CharSequence, ?> gVar) {
        this.f43914b = gVar;
    }
}
