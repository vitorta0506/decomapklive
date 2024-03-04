package io.grpc;

import com.google.common.io.BaseEncoding;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public final class s0 {

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f45381c = Logger.getLogger(s0.class.getName());

    /* renamed from: d  reason: collision with root package name */
    public static final f<byte[]> f45382d = new a();

    /* renamed from: e  reason: collision with root package name */
    public static final d<String> f45383e = new b();

    /* renamed from: f  reason: collision with root package name */
    static final BaseEncoding f45384f = BaseEncoding.b().n();

    /* renamed from: a  reason: collision with root package name */
    private Object[] f45385a;

    /* renamed from: b  reason: collision with root package name */
    private int f45386b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements f<byte[]> {
        a() {
        }

        @Override // io.grpc.s0.f
        /* renamed from: c */
        public byte[] b(byte[] bArr) {
            return bArr;
        }

        @Override // io.grpc.s0.f
        /* renamed from: d */
        public byte[] a(byte[] bArr) {
            return bArr;
        }
    }

    /* loaded from: classes5.dex */
    class b implements d<String> {
        b() {
        }

        @Override // io.grpc.s0.d
        /* renamed from: c */
        public String b(String str) {
            return str;
        }

        @Override // io.grpc.s0.d
        /* renamed from: d */
        public String a(String str) {
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class c<T> extends i<T> {

        /* renamed from: f  reason: collision with root package name */
        private final d<T> f45387f;

        /* synthetic */ c(String str, boolean z10, d dVar, a aVar) {
            this(str, z10, dVar);
        }

        @Override // io.grpc.s0.i
        T i(byte[] bArr) {
            return this.f45387f.b(new String(bArr, com.google.common.base.e.f12354a));
        }

        @Override // io.grpc.s0.i
        byte[] k(T t10) {
            return this.f45387f.a(t10).getBytes(com.google.common.base.e.f12354a);
        }

        private c(String str, boolean z10, d<T> dVar) {
            super(str, z10, dVar, null);
            com.google.common.base.o.n(!str.endsWith("-bin"), "ASCII header is named %s.  Only binary headers may end with %s", str, "-bin");
            this.f45387f = (d) com.google.common.base.o.t(dVar, "marshaller");
        }
    }

    /* loaded from: classes5.dex */
    public interface d<T> {
        String a(T t10);

        T b(String str);
    }

    /* loaded from: classes5.dex */
    private static class e<T> extends i<T> {

        /* renamed from: f  reason: collision with root package name */
        private final f<T> f45388f;

        /* synthetic */ e(String str, f fVar, a aVar) {
            this(str, fVar);
        }

        @Override // io.grpc.s0.i
        T i(byte[] bArr) {
            return this.f45388f.b(bArr);
        }

        @Override // io.grpc.s0.i
        byte[] k(T t10) {
            return this.f45388f.a(t10);
        }

        private e(String str, f<T> fVar) {
            super(str, false, fVar, null);
            com.google.common.base.o.n(str.endsWith("-bin"), "Binary header is named %s. It must end with %s", str, "-bin");
            com.google.common.base.o.e(str.length() > 4, "empty key name");
            this.f45388f = (f) com.google.common.base.o.t(fVar, "marshaller is null");
        }
    }

    /* loaded from: classes5.dex */
    public interface f<T> {
        byte[] a(T t10);

        T b(byte[] bArr);
    }

    /* loaded from: classes5.dex */
    public interface g<T> {
        InputStream a(T t10);

        T b(InputStream inputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class h<T> implements Iterable<T> {

        /* renamed from: a  reason: collision with root package name */
        private final i<T> f45389a;

        /* renamed from: b  reason: collision with root package name */
        private int f45390b;

        /* loaded from: classes5.dex */
        class a implements Iterator<T> {

            /* renamed from: a  reason: collision with root package name */
            private boolean f45392a = true;

            /* renamed from: b  reason: collision with root package name */
            private int f45393b;

            a() {
                this.f45393b = h.this.f45390b;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.f45392a) {
                    return true;
                }
                while (this.f45393b < s0.this.f45386b) {
                    h hVar = h.this;
                    if (s0.this.g(hVar.f45389a.a(), s0.this.s(this.f45393b))) {
                        this.f45392a = true;
                        return true;
                    }
                    this.f45393b++;
                }
                return false;
            }

            @Override // java.util.Iterator
            public T next() {
                if (hasNext()) {
                    this.f45392a = false;
                    h hVar = h.this;
                    s0 s0Var = s0.this;
                    int i9 = this.f45393b;
                    this.f45393b = i9 + 1;
                    return (T) s0Var.A(i9, hVar.f45389a);
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        /* synthetic */ h(s0 s0Var, i iVar, int i9, a aVar) {
            this(iVar, i9);
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return new a();
        }

        private h(i<T> iVar, int i9) {
            this.f45389a = iVar;
            this.f45390b = i9;
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class i<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final BitSet f45395e = b();

        /* renamed from: a  reason: collision with root package name */
        private final String f45396a;

        /* renamed from: b  reason: collision with root package name */
        private final String f45397b;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f45398c;

        /* renamed from: d  reason: collision with root package name */
        private final Object f45399d;

        /* synthetic */ i(String str, boolean z10, Object obj, a aVar) {
            this(str, z10, obj);
        }

        private static BitSet b() {
            BitSet bitSet = new BitSet(127);
            bitSet.set(45);
            bitSet.set(95);
            bitSet.set(46);
            for (char c10 = '0'; c10 <= '9'; c10 = (char) (c10 + 1)) {
                bitSet.set(c10);
            }
            for (char c11 = 'a'; c11 <= 'z'; c11 = (char) (c11 + 1)) {
                bitSet.set(c11);
            }
            return bitSet;
        }

        public static <T> i<T> e(String str, d<T> dVar) {
            return g(str, false, dVar);
        }

        public static <T> i<T> f(String str, f<T> fVar) {
            return new e(str, fVar, null);
        }

        static <T> i<T> g(String str, boolean z10, d<T> dVar) {
            return new c(str, z10, dVar, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static <T> i<T> h(String str, boolean z10, l<T> lVar) {
            return new k(str, z10, lVar, null);
        }

        private static String l(String str, boolean z10) {
            com.google.common.base.o.t(str, "name");
            com.google.common.base.o.e(!str.isEmpty(), "token must have at least 1 tchar");
            if (str.equals("connection")) {
                s0.f45381c.log(Level.WARNING, "Metadata key is 'Connection', which should not be used. That is used by HTTP/1 for connection-specific headers which are not to be forwarded. There is probably an HTTP/1 conversion bug. Simply removing the Connection header is not enough; you should remove all headers it references as well. See RFC 7230 section 6.1", (Throwable) new RuntimeException("exception to show backtrace"));
            }
            for (int i9 = 0; i9 < str.length(); i9++) {
                char charAt = str.charAt(i9);
                if (!z10 || charAt != ':' || i9 != 0) {
                    com.google.common.base.o.g(f45395e.get(charAt), "Invalid character '%s' in key name '%s'", charAt, str);
                }
            }
            return str;
        }

        byte[] a() {
            return this.f45398c;
        }

        final <M> M c(Class<M> cls) {
            if (cls.isInstance(this.f45399d)) {
                return cls.cast(this.f45399d);
            }
            return null;
        }

        public final String d() {
            return this.f45397b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return this.f45397b.equals(((i) obj).f45397b);
        }

        public final int hashCode() {
            return this.f45397b.hashCode();
        }

        abstract T i(byte[] bArr);

        boolean j() {
            return false;
        }

        abstract byte[] k(T t10);

        public String toString() {
            return "Key{name='" + this.f45397b + "'}";
        }

        private i(String str, boolean z10, Object obj) {
            String str2 = (String) com.google.common.base.o.t(str, "name");
            this.f45396a = str2;
            String l10 = l(str2.toLowerCase(Locale.ROOT), z10);
            this.f45397b = l10;
            this.f45398c = l10.getBytes(com.google.common.base.e.f12354a);
            this.f45399d = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class j<T> {

        /* renamed from: a  reason: collision with root package name */
        private final g<T> f45400a;

        /* renamed from: b  reason: collision with root package name */
        private final T f45401b;

        /* renamed from: c  reason: collision with root package name */
        private volatile byte[] f45402c;

        j(g<T> gVar, T t10) {
            this.f45400a = gVar;
            this.f45401b = t10;
        }

        static <T> j<T> a(i<T> iVar, T t10) {
            return new j<>((g) com.google.common.base.o.s(b(iVar)), t10);
        }

        private static <T> g<T> b(i<T> iVar) {
            return (g) iVar.c(g.class);
        }

        byte[] c() {
            if (this.f45402c == null) {
                synchronized (this) {
                    if (this.f45402c == null) {
                        this.f45402c = s0.v(e());
                    }
                }
            }
            return this.f45402c;
        }

        <T2> T2 d(i<T2> iVar) {
            g b10;
            if (iVar.j() && (b10 = b(iVar)) != null) {
                return (T2) b10.b(e());
            }
            return iVar.i(c());
        }

        InputStream e() {
            return this.f45400a.a(this.f45401b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class k<T> extends i<T> {

        /* renamed from: f  reason: collision with root package name */
        private final l<T> f45403f;

        /* synthetic */ k(String str, boolean z10, l lVar, a aVar) {
            this(str, z10, lVar);
        }

        @Override // io.grpc.s0.i
        T i(byte[] bArr) {
            return this.f45403f.b(bArr);
        }

        @Override // io.grpc.s0.i
        byte[] k(T t10) {
            return this.f45403f.a(t10);
        }

        private k(String str, boolean z10, l<T> lVar) {
            super(str, z10, lVar, null);
            com.google.common.base.o.n(!str.endsWith("-bin"), "ASCII header is named %s.  Only binary headers may end with %s", str, "-bin");
            this.f45403f = (l) com.google.common.base.o.t(lVar, "marshaller");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface l<T> {
        byte[] a(T t10);

        T b(byte[] bArr);
    }

    public s0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s0(byte[]... bArr) {
        this(bArr.length / 2, bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> T A(int i9, i<T> iVar) {
        Object w6 = w(i9);
        if (w6 instanceof byte[]) {
            return iVar.i((byte[]) w6);
        }
        return (T) ((j) w6).d(iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(byte[] bArr, byte[] bArr2) {
        return Arrays.equals(bArr, bArr2);
    }

    private int h() {
        Object[] objArr = this.f45385a;
        if (objArr != null) {
            return objArr.length;
        }
        return 0;
    }

    private void j(int i9) {
        Object[] objArr = new Object[i9];
        if (!n()) {
            System.arraycopy(this.f45385a, 0, objArr, 0, o());
        }
        this.f45385a = objArr;
    }

    private boolean n() {
        return this.f45386b == 0;
    }

    private int o() {
        return this.f45386b * 2;
    }

    private void p() {
        if (o() == 0 || o() == h()) {
            j(Math.max(o() * 2, 8));
        }
    }

    private void r(int i9, byte[] bArr) {
        this.f45385a[i9 * 2] = bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] s(int i9) {
        return (byte[]) this.f45385a[i9 * 2];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] v(InputStream inputStream) {
        try {
            return com.google.common.io.c.e(inputStream);
        } catch (IOException e10) {
            throw new RuntimeException("failure reading serialized stream", e10);
        }
    }

    private Object w(int i9) {
        return this.f45385a[(i9 * 2) + 1];
    }

    private void x(int i9, Object obj) {
        if (this.f45385a instanceof byte[][]) {
            j(h());
        }
        this.f45385a[(i9 * 2) + 1] = obj;
    }

    private void y(int i9, byte[] bArr) {
        this.f45385a[(i9 * 2) + 1] = bArr;
    }

    private byte[] z(int i9) {
        Object w6 = w(i9);
        if (w6 instanceof byte[]) {
            return (byte[]) w6;
        }
        return ((j) w6).c();
    }

    public <T> void i(i<T> iVar) {
        if (n()) {
            return;
        }
        int i9 = 0;
        for (int i10 = 0; i10 < this.f45386b; i10++) {
            if (!g(iVar.a(), s(i10))) {
                r(i9, s(i10));
                x(i9, w(i10));
                i9++;
            }
        }
        Arrays.fill(this.f45385a, i9 * 2, o(), (Object) null);
        this.f45386b = i9;
    }

    public <T> T k(i<T> iVar) {
        for (int i9 = this.f45386b - 1; i9 >= 0; i9--) {
            if (g(iVar.a(), s(i9))) {
                return (T) A(i9, iVar);
            }
        }
        return null;
    }

    public <T> Iterable<T> l(i<T> iVar) {
        for (int i9 = 0; i9 < this.f45386b; i9++) {
            if (g(iVar.a(), s(i9))) {
                return new h(this, iVar, i9, null);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int m() {
        return this.f45386b;
    }

    public void q(s0 s0Var) {
        if (s0Var.n()) {
            return;
        }
        int h10 = h() - o();
        if (n() || h10 < s0Var.o()) {
            j(o() + s0Var.o());
        }
        System.arraycopy(s0Var.f45385a, 0, this.f45385a, o(), s0Var.o());
        this.f45386b += s0Var.f45386b;
    }

    public <T> void t(i<T> iVar, T t10) {
        com.google.common.base.o.t(iVar, "key");
        com.google.common.base.o.t(t10, "value");
        p();
        r(this.f45386b, iVar.a());
        if (iVar.j()) {
            x(this.f45386b, j.a(iVar, t10));
        } else {
            y(this.f45386b, iVar.k(t10));
        }
        this.f45386b++;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("Metadata(");
        for (int i9 = 0; i9 < this.f45386b; i9++) {
            if (i9 != 0) {
                sb2.append(',');
            }
            byte[] s10 = s(i9);
            Charset charset = com.google.common.base.e.f12354a;
            String str = new String(s10, charset);
            sb2.append(str);
            sb2.append('=');
            if (str.endsWith("-bin")) {
                sb2.append(f45384f.g(z(i9)));
            } else {
                sb2.append(new String(z(i9), charset));
            }
        }
        sb2.append(')');
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[][] u() {
        byte[][] bArr = new byte[o()];
        Object[] objArr = this.f45385a;
        if (objArr instanceof byte[][]) {
            System.arraycopy(objArr, 0, bArr, 0, o());
        } else {
            for (int i9 = 0; i9 < this.f45386b; i9++) {
                int i10 = i9 * 2;
                bArr[i10] = s(i9);
                bArr[i10 + 1] = z(i9);
            }
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s0(int i9, byte[]... bArr) {
        this(i9, (Object[]) bArr);
    }

    s0(int i9, Object[] objArr) {
        this.f45386b = i9;
        this.f45385a = objArr;
    }
}
