package io.grpc.netty.shaded.io.netty.handler.codec.http;

import io.grpc.netty.shaded.io.netty.handler.codec.PrematureChannelClosureException;
import io.grpc.netty.shaded.io.netty.handler.codec.TooLongFrameException;
import java.util.List;
import kg.s0;
import kotlin.UByte;
/* loaded from: classes5.dex */
public abstract class b0 extends pg.a {

    /* renamed from: l  reason: collision with root package name */
    private final int f43870l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f43871m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f43872n;

    /* renamed from: o  reason: collision with root package name */
    protected final boolean f43873o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f43874p;

    /* renamed from: q  reason: collision with root package name */
    private final b f43875q;

    /* renamed from: r  reason: collision with root package name */
    private final c f43876r;

    /* renamed from: s  reason: collision with root package name */
    private v f43877s;

    /* renamed from: t  reason: collision with root package name */
    private long f43878t;

    /* renamed from: u  reason: collision with root package name */
    private long f43879u;

    /* renamed from: v  reason: collision with root package name */
    private volatile boolean f43880v;

    /* renamed from: w  reason: collision with root package name */
    private CharSequence f43881w;

    /* renamed from: x  reason: collision with root package name */
    private CharSequence f43882x;

    /* renamed from: y  reason: collision with root package name */
    private k0 f43883y;

    /* renamed from: z  reason: collision with root package name */
    private d f43884z;

    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f43885a;

        static {
            int[] iArr = new int[d.values().length];
            f43885a = iArr;
            try {
                iArr[d.SKIP_CONTROL_CHARS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f43885a[d.READ_CHUNK_SIZE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f43885a[d.READ_INITIAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f43885a[d.READ_HEADER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f43885a[d.READ_VARIABLE_LENGTH_CONTENT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f43885a[d.READ_FIXED_LENGTH_CONTENT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f43885a[d.READ_CHUNKED_CONTENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f43885a[d.READ_CHUNK_DELIMITER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f43885a[d.READ_CHUNK_FOOTER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f43885a[d.BAD_MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f43885a[d.UPGRADED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class b implements io.grpc.netty.shaded.io.netty.util.g {

        /* renamed from: a  reason: collision with root package name */
        private final io.grpc.netty.shaded.io.netty.util.internal.a f43886a;

        /* renamed from: b  reason: collision with root package name */
        private final int f43887b;

        /* renamed from: c  reason: collision with root package name */
        int f43888c;

        b(io.grpc.netty.shaded.io.netty.util.internal.a aVar, int i9) {
            this.f43886a = aVar;
            this.f43887b = i9;
        }

        @Override // io.grpc.netty.shaded.io.netty.util.g
        public boolean a(byte b10) throws Exception {
            char c10 = (char) (b10 & UByte.MAX_VALUE);
            if (c10 == '\n') {
                int length = this.f43886a.length();
                if (length >= 1) {
                    int i9 = length - 1;
                    if (this.f43886a.d(i9) == '\r') {
                        this.f43888c--;
                        this.f43886a.g(i9);
                        return false;
                    }
                    return false;
                }
                return false;
            }
            b();
            this.f43886a.append(c10);
            return true;
        }

        protected final void b() {
            int i9 = this.f43888c + 1;
            this.f43888c = i9;
            int i10 = this.f43887b;
            if (i9 > i10) {
                throw c(i10);
            }
        }

        protected TooLongFrameException c(int i9) {
            return new TooLongFrameException("HTTP header is larger than " + i9 + " bytes.");
        }

        public io.grpc.netty.shaded.io.netty.util.internal.a d(kg.j jVar) {
            int i9 = this.f43888c;
            this.f43886a.f();
            int p02 = jVar.p0(this);
            if (p02 == -1) {
                this.f43888c = i9;
                return null;
            }
            jVar.R1(p02 + 1);
            return this.f43886a;
        }

        public void e() {
            this.f43888c = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class c extends b {
        c(io.grpc.netty.shaded.io.netty.util.internal.a aVar, int i9) {
            super(aVar, i9);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.b0.b, io.grpc.netty.shaded.io.netty.util.g
        public boolean a(byte b10) throws Exception {
            if (b0.this.f43884z == d.SKIP_CONTROL_CHARS) {
                char c10 = (char) (b10 & UByte.MAX_VALUE);
                if (!Character.isISOControl(c10) && !Character.isWhitespace(c10)) {
                    b0.this.f43884z = d.READ_INITIAL;
                } else {
                    b();
                    return true;
                }
            }
            return super.a(b10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.b0.b
        protected TooLongFrameException c(int i9) {
            return new TooLongFrameException("An HTTP line is larger than " + i9 + " bytes.");
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.b0.b
        public io.grpc.netty.shaded.io.netty.util.internal.a d(kg.j jVar) {
            e();
            return super.d(jVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum d {
        SKIP_CONTROL_CHARS,
        READ_INITIAL,
        READ_HEADER,
        READ_VARIABLE_LENGTH_CONTENT,
        READ_FIXED_LENGTH_CONTENT,
        READ_CHUNK_SIZE,
        READ_CHUNKED_CONTENT,
        READ_CHUNK_DELIMITER,
        READ_CHUNK_FOOTER,
        BAD_MESSAGE,
        UPGRADED
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b0(int i9, int i10, int i11, boolean z10, boolean z11) {
        this(i9, i10, i11, z10, z11, 128);
    }

    private long O() {
        if (this.f43879u == Long.MIN_VALUE) {
            this.f43879u = i0.b(this.f43877s, -1L);
        }
        return this.f43879u;
    }

    private static int R(io.grpc.netty.shaded.io.netty.util.internal.a aVar) {
        for (int length = aVar.length() - 1; length > 0; length--) {
            if (!Character.isWhitespace(aVar.d(length))) {
                return length + 1;
            }
        }
        return 0;
    }

    private static int S(io.grpc.netty.shaded.io.netty.util.internal.a aVar, int i9) {
        while (i9 < aVar.length()) {
            char d10 = aVar.d(i9);
            if (!g0(d10)) {
                if (Character.isWhitespace(d10)) {
                    throw new IllegalArgumentException("Invalid separator");
                }
                return i9;
            }
            i9++;
        }
        return aVar.length();
    }

    private static int T(io.grpc.netty.shaded.io.netty.util.internal.a aVar, int i9) {
        while (i9 < aVar.length()) {
            char d10 = aVar.d(i9);
            if (!Character.isWhitespace(d10)) {
                return i9;
            }
            if (!f0(d10)) {
                throw new IllegalArgumentException("Invalid separator, only a single space or horizontal tab allowed, but received a '" + d10 + "' (0x" + Integer.toHexString(d10) + ")");
            }
            i9++;
        }
        return aVar.length();
    }

    private static int U(io.grpc.netty.shaded.io.netty.util.internal.a aVar, int i9) {
        while (i9 < aVar.length()) {
            if (g0(aVar.d(i9))) {
                return i9;
            }
            i9++;
        }
        return aVar.length();
    }

    private static int W(String str) {
        String trim = str.trim();
        for (int i9 = 0; i9 < trim.length(); i9++) {
            char charAt = trim.charAt(i9);
            if (charAt == ';' || Character.isWhitespace(charAt) || Character.isISOControl(charAt)) {
                trim = trim.substring(0, i9);
                break;
            }
        }
        return Integer.parseInt(trim, 16);
    }

    private p b0(kg.j jVar, Exception exc) {
        this.f43884z = d.BAD_MESSAGE;
        jVar.l2(jVar.P1());
        j jVar2 = new j(s0.f53902d);
        jVar2.e(pg.e.b(exc));
        this.f43877s = null;
        this.f43883y = null;
        return jVar2;
    }

    private v c0(kg.j jVar, Exception exc) {
        this.f43884z = d.BAD_MESSAGE;
        jVar.l2(jVar.P1());
        if (this.f43877s == null) {
            this.f43877s = P();
        }
        this.f43877s.e(pg.e.b(exc));
        v vVar = this.f43877s;
        this.f43877s = null;
        return vVar;
    }

    private static boolean f0(char c10) {
        return c10 == ' ' || c10 == '\t';
    }

    private static boolean g0(char c10) {
        return c10 == ' ' || c10 == '\t' || c10 == 11 || c10 == '\f' || c10 == '\r';
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private io.grpc.netty.shaded.io.netty.handler.codec.http.b0.d i0(kg.j r10) {
        /*
            r9 = this;
            io.grpc.netty.shaded.io.netty.handler.codec.http.v r0 = r9.f43877s
            io.grpc.netty.shaded.io.netty.handler.codec.http.t r1 = r0.h()
            io.grpc.netty.shaded.io.netty.handler.codec.http.b0$b r2 = r9.f43875q
            io.grpc.netty.shaded.io.netty.util.internal.a r2 = r2.d(r10)
            r3 = 0
            if (r2 != 0) goto L10
            return r3
        L10:
            int r4 = r2.length()
            r5 = 0
            if (r4 <= 0) goto L63
        L17:
            char r4 = r2.d(r5)
            java.lang.CharSequence r6 = r9.f43881w
            if (r6 == 0) goto L4a
            r7 = 32
            if (r4 == r7) goto L27
            r8 = 9
            if (r4 != r8) goto L4a
        L27:
            java.lang.String r2 = r2.toString()
            java.lang.String r2 = r2.trim()
            java.lang.CharSequence r4 = r9.f43882x
            java.lang.String r4 = java.lang.String.valueOf(r4)
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r4)
            r6.append(r7)
            r6.append(r2)
            java.lang.String r2 = r6.toString()
            r9.f43882x = r2
            goto L54
        L4a:
            if (r6 == 0) goto L51
            java.lang.CharSequence r4 = r9.f43882x
            r1.d(r6, r4)
        L51:
            r9.m0(r2)
        L54:
            io.grpc.netty.shaded.io.netty.handler.codec.http.b0$b r2 = r9.f43875q
            io.grpc.netty.shaded.io.netty.util.internal.a r2 = r2.d(r10)
            if (r2 != 0) goto L5d
            return r3
        L5d:
            int r4 = r2.length()
            if (r4 > 0) goto L17
        L63:
            java.lang.CharSequence r10 = r9.f43881w
            if (r10 == 0) goto L6c
            java.lang.CharSequence r2 = r9.f43882x
            r1.d(r10, r2)
        L6c:
            r9.f43881w = r3
            r9.f43882x = r3
            io.grpc.netty.shaded.io.netty.handler.codec.http.w r10 = new io.grpc.netty.shaded.io.netty.handler.codec.http.w
            io.grpc.netty.shaded.io.netty.handler.codec.http.b0$c r2 = r9.f43876r
            int r2 = r2.f43888c
            io.grpc.netty.shaded.io.netty.handler.codec.http.b0$b r3 = r9.f43875q
            int r3 = r3.f43888c
            r10.<init>(r2, r3)
            r0.e(r10)
            io.grpc.netty.shaded.io.netty.util.c r10 = io.grpc.netty.shaded.io.netty.handler.codec.http.r.f44024w
            java.util.List r2 = r1.H(r10)
            boolean r3 = r2.isEmpty()
            if (r3 != 0) goto Lba
            io.grpc.netty.shaded.io.netty.handler.codec.http.j0 r3 = r0.b()
            int r4 = r3.d()
            r6 = 1
            if (r4 < r6) goto La5
            int r4 = r3.d()
            if (r4 != r6) goto La4
            int r3 = r3.e()
            if (r3 != 0) goto La4
            goto La5
        La4:
            r6 = 0
        La5:
            boolean r3 = r9.f43874p
            long r3 = io.grpc.netty.shaded.io.netty.handler.codec.http.i0.j(r2, r6, r3)
            r9.f43879u = r3
            r6 = -1
            int r8 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r8 == 0) goto Lba
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            r1.O(r10, r3)
        Lba:
            boolean r10 = r9.d0(r0)
            if (r10 == 0) goto Lc6
            io.grpc.netty.shaded.io.netty.handler.codec.http.i0.k(r0, r5)
            io.grpc.netty.shaded.io.netty.handler.codec.http.b0$d r10 = io.grpc.netty.shaded.io.netty.handler.codec.http.b0.d.SKIP_CONTROL_CHARS
            return r10
        Lc6:
            boolean r10 = io.grpc.netty.shaded.io.netty.handler.codec.http.i0.h(r0)
            if (r10 == 0) goto Le0
            boolean r10 = r2.isEmpty()
            if (r10 != 0) goto Ldd
            io.grpc.netty.shaded.io.netty.handler.codec.http.j0 r10 = r0.b()
            io.grpc.netty.shaded.io.netty.handler.codec.http.j0 r1 = io.grpc.netty.shaded.io.netty.handler.codec.http.j0.f43961i
            if (r10 != r1) goto Ldd
            r9.a0(r0)
        Ldd:
            io.grpc.netty.shaded.io.netty.handler.codec.http.b0$d r10 = io.grpc.netty.shaded.io.netty.handler.codec.http.b0.d.READ_CHUNK_SIZE
            return r10
        Le0:
            long r0 = r9.O()
            r2 = 0
            int r10 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r10 < 0) goto Led
            io.grpc.netty.shaded.io.netty.handler.codec.http.b0$d r10 = io.grpc.netty.shaded.io.netty.handler.codec.http.b0.d.READ_FIXED_LENGTH_CONTENT
            return r10
        Led:
            io.grpc.netty.shaded.io.netty.handler.codec.http.b0$d r10 = io.grpc.netty.shaded.io.netty.handler.codec.http.b0.d.READ_VARIABLE_LENGTH_CONTENT
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.handler.codec.http.b0.i0(kg.j):io.grpc.netty.shaded.io.netty.handler.codec.http.b0$d");
    }

    private k0 j0(kg.j jVar) {
        int size;
        io.grpc.netty.shaded.io.netty.util.internal.a d10 = this.f43875q.d(jVar);
        if (d10 == null) {
            return null;
        }
        k0 k0Var = this.f43883y;
        if (d10.length() == 0 && k0Var == null) {
            return k0.f43971k3;
        }
        if (k0Var == null) {
            k0Var = new j(s0.f53902d, this.f43873o);
            this.f43883y = k0Var;
        }
        CharSequence charSequence = null;
        while (d10.length() > 0) {
            char d11 = d10.d(0);
            if (charSequence != null && (d11 == ' ' || d11 == '\t')) {
                List<String> H = k0Var.x().H(charSequence);
                if (!H.isEmpty()) {
                    H.set(H.size() - 1, H.get(size) + d10.toString().trim());
                }
            } else {
                m0(d10);
                CharSequence charSequence2 = this.f43881w;
                if (!r.f44024w.k(charSequence2) && !r.f44015r0.k(charSequence2) && !r.f44013q0.k(charSequence2)) {
                    k0Var.x().d(charSequence2, this.f43882x);
                }
                charSequence = this.f43881w;
                this.f43881w = null;
                this.f43882x = null;
            }
            d10 = this.f43875q.d(jVar);
            if (d10 == null) {
                return null;
            }
        }
        this.f43883y = null;
        return k0Var;
    }

    private void l0() {
        f0 f0Var;
        v vVar = this.f43877s;
        this.f43877s = null;
        this.f43881w = null;
        this.f43882x = null;
        this.f43879u = Long.MIN_VALUE;
        this.f43876r.e();
        this.f43875q.e();
        this.f43883y = null;
        if (!e0() && (f0Var = (f0) vVar) != null && h0(f0Var)) {
            this.f43884z = d.UPGRADED;
            return;
        }
        this.f43880v = false;
        this.f43884z = d.SKIP_CONTROL_CHARS;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
        r4 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
        if (r4 >= r0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002d, code lost:
        if (r7.d(r4) != ':') goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002f, code lost:
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0032, code lost:
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0035, code lost:
        r6.f43881w = r7.i(r1, r2);
        r1 = T(r7, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003f, code lost:
        if (r1 != r0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0041, code lost:
        r6.f43882x = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0046, code lost:
        r6.f43882x = r7.i(r1, R(r7));
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0050, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m0(io.grpc.netty.shaded.io.netty.util.internal.a r7) {
        /*
            r6 = this;
            int r0 = r7.length()
            r1 = 0
            int r1 = T(r7, r1)
            r2 = r1
        La:
            r3 = 58
            if (r2 >= r0) goto L24
            char r4 = r7.d(r2)
            if (r4 == r3) goto L24
            boolean r5 = r6.e0()
            if (r5 != 0) goto L21
            boolean r4 = f0(r4)
            if (r4 == 0) goto L21
            goto L24
        L21:
            int r2 = r2 + 1
            goto La
        L24:
            if (r2 == r0) goto L51
            r4 = r2
        L27:
            if (r4 >= r0) goto L35
            char r5 = r7.d(r4)
            if (r5 != r3) goto L32
            int r4 = r4 + 1
            goto L35
        L32:
            int r4 = r4 + 1
            goto L27
        L35:
            java.lang.String r1 = r7.i(r1, r2)
            r6.f43881w = r1
            int r1 = T(r7, r4)
            if (r1 != r0) goto L46
            java.lang.String r7 = ""
            r6.f43882x = r7
            goto L50
        L46:
            int r0 = R(r7)
            java.lang.String r7 = r7.i(r1, r0)
            r6.f43882x = r7
        L50:
            return
        L51:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "No colon found"
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.handler.codec.http.b0.m0(io.grpc.netty.shaded.io.netty.util.internal.a):void");
    }

    private static String[] n0(io.grpc.netty.shaded.io.netty.util.internal.a aVar) {
        int S = S(aVar, 0);
        int U = U(aVar, S);
        int S2 = S(aVar, U);
        int U2 = U(aVar, S2);
        int S3 = S(aVar, U2);
        int R = R(aVar);
        String[] strArr = new String[3];
        strArr[0] = aVar.i(S, U);
        strArr[1] = aVar.i(S2, U2);
        strArr[2] = S3 < R ? aVar.i(S3, R) : "";
        return strArr;
    }

    protected abstract v P();

    protected abstract v Q(String[] strArr) throws Exception;

    @Override // pg.a, io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void X(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj) throws Exception {
        int i9;
        if ((obj instanceof q) && ((i9 = a.f43885a[this.f43884z.ordinal()]) == 2 || i9 == 5 || i9 == 6)) {
            k0();
        }
        super.X(mVar, obj);
    }

    protected void a0(v vVar) {
        vVar.h().K(r.f44024w);
        this.f43879u = Long.MIN_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean d0(v vVar) {
        if (vVar instanceof f0) {
            f0 f0Var = (f0) vVar;
            int a10 = f0Var.t().a();
            return (a10 < 100 || a10 >= 200) ? a10 == 204 || a10 == 304 : (a10 == 101 && !f0Var.h().m(r.f44001k0) && f0Var.h().n(r.f44017s0, s.f44033a0, true)) ? false : true;
        }
        return false;
    }

    protected abstract boolean e0();

    protected boolean h0(f0 f0Var) {
        if (f0Var.t().a() != h0.f43927g.a()) {
            return false;
        }
        String F = f0Var.h().F(r.f44017s0);
        return F == null || !(F.contains(j0.f43960h.g()) || F.contains(j0.f43961i.g()));
    }

    public void k0() {
        this.f43880v = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0111 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00f0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0144 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0145 A[Catch: Exception -> 0x01a2, TryCatch #3 {Exception -> 0x01a2, blocks: (B:74:0x013e, B:77:0x0145, B:81:0x0153, B:85:0x0161, B:88:0x0168, B:90:0x0171, B:92:0x0174, B:94:0x0182, B:96:0x0186, B:98:0x018c, B:99:0x0193, B:100:0x0194), top: B:112:0x013e }] */
    @Override // pg.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void x(io.grpc.netty.shaded.io.netty.channel.m r8, kg.j r9, java.util.List<java.lang.Object> r10) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.handler.codec.http.b0.x(io.grpc.netty.shaded.io.netty.channel.m, kg.j, java.util.List):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // pg.a
    public void y(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, List<Object> list) throws Exception {
        super.y(mVar, jVar, list);
        if (this.f43880v) {
            l0();
        }
        v vVar = this.f43877s;
        if (vVar != null) {
            boolean h10 = i0.h(vVar);
            if (this.f43884z == d.READ_VARIABLE_LENGTH_CONTENT && !jVar.j1() && !h10) {
                list.add(k0.f43971k3);
                l0();
            } else if (this.f43884z == d.READ_HEADER) {
                list.add(c0(s0.f53902d, new PrematureChannelClosureException("Connection closed before received headers")));
                l0();
            } else {
                boolean z10 = true;
                if (!e0() && !h10 && O() <= 0) {
                    z10 = false;
                }
                if (!z10) {
                    list.add(k0.f43971k3);
                }
                l0();
            }
        }
    }

    protected b0(int i9, int i10, int i11, boolean z10, boolean z11, int i12) {
        this(i9, i10, i11, z10, z11, i12, false);
    }

    protected b0(int i9, int i10, int i11, boolean z10, boolean z11, int i12, boolean z12) {
        this(i9, i10, i11, z10, z11, i12, z12, true);
    }

    protected b0(int i9, int i10, int i11, boolean z10, boolean z11, int i12, boolean z12, boolean z13) {
        this.f43879u = Long.MIN_VALUE;
        this.f43884z = d.SKIP_CONTROL_CHARS;
        io.grpc.netty.shaded.io.netty.util.internal.s.l(i9, "maxInitialLineLength");
        io.grpc.netty.shaded.io.netty.util.internal.s.l(i10, "maxHeaderSize");
        io.grpc.netty.shaded.io.netty.util.internal.s.l(i11, "maxChunkSize");
        io.grpc.netty.shaded.io.netty.util.internal.a aVar = new io.grpc.netty.shaded.io.netty.util.internal.a(i12);
        this.f43876r = new c(aVar, i9);
        this.f43875q = new b(aVar, i10);
        this.f43870l = i11;
        this.f43871m = z10;
        this.f43873o = z11;
        this.f43874p = z12;
        this.f43872n = z13;
    }
}
