package io.grpc.netty.shaded.io.netty.handler.codec.http;
/* loaded from: classes5.dex */
public class y implements Comparable<y> {

    /* renamed from: b  reason: collision with root package name */
    public static final y f44081b;

    /* renamed from: c  reason: collision with root package name */
    public static final y f44082c;

    /* renamed from: d  reason: collision with root package name */
    public static final y f44083d;

    /* renamed from: e  reason: collision with root package name */
    public static final y f44084e;

    /* renamed from: f  reason: collision with root package name */
    public static final y f44085f;

    /* renamed from: g  reason: collision with root package name */
    public static final y f44086g;

    /* renamed from: h  reason: collision with root package name */
    public static final y f44087h;

    /* renamed from: i  reason: collision with root package name */
    public static final y f44088i;

    /* renamed from: j  reason: collision with root package name */
    public static final y f44089j;

    /* renamed from: k  reason: collision with root package name */
    private static final a<y> f44090k;

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.c f44091a;

    /* loaded from: classes5.dex */
    private static final class a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final C0489a<T>[] f44092a;

        /* renamed from: b  reason: collision with root package name */
        private final int f44093b;

        /* renamed from: io.grpc.netty.shaded.io.netty.handler.codec.http.y$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        private static final class C0489a<T> {

            /* renamed from: a  reason: collision with root package name */
            final String f44094a;

            /* renamed from: b  reason: collision with root package name */
            final T f44095b;

            C0489a(String str, T t10) {
                this.f44094a = str;
                this.f44095b = t10;
            }
        }

        a(C0489a<T>... c0489aArr) {
            C0489a<T>[] c0489aArr2;
            this.f44092a = new C0489a[io.grpc.netty.shaded.io.netty.util.internal.o.b(c0489aArr.length)];
            this.f44093b = c0489aArr2.length - 1;
            for (C0489a<T> c0489a : c0489aArr) {
                int a10 = a(c0489a.f44094a) & this.f44093b;
                C0489a<T>[] c0489aArr3 = this.f44092a;
                if (c0489aArr3[a10] == null) {
                    c0489aArr3[a10] = c0489a;
                } else {
                    throw new IllegalArgumentException("index " + a10 + " collision between values: [" + this.f44092a[a10].f44094a + ", " + c0489a.f44094a + ']');
                }
            }
        }

        private static int a(String str) {
            return str.hashCode() >>> 6;
        }
    }

    static {
        y yVar = new y("OPTIONS");
        f44081b = yVar;
        y yVar2 = new y("GET");
        f44082c = yVar2;
        y yVar3 = new y("HEAD");
        f44083d = yVar3;
        y yVar4 = new y("POST");
        f44084e = yVar4;
        y yVar5 = new y("PUT");
        f44085f = yVar5;
        y yVar6 = new y("PATCH");
        f44086g = yVar6;
        y yVar7 = new y("DELETE");
        f44087h = yVar7;
        y yVar8 = new y("TRACE");
        f44088i = yVar8;
        y yVar9 = new y("CONNECT");
        f44089j = yVar9;
        f44090k = new a<>(new a.C0489a(yVar.toString(), yVar), new a.C0489a(yVar2.toString(), yVar2), new a.C0489a(yVar3.toString(), yVar3), new a.C0489a(yVar4.toString(), yVar4), new a.C0489a(yVar5.toString(), yVar5), new a.C0489a(yVar6.toString(), yVar6), new a.C0489a(yVar7.toString(), yVar7), new a.C0489a(yVar8.toString(), yVar8), new a.C0489a(yVar9.toString(), yVar9));
    }

    public y(String str) {
        String g10 = io.grpc.netty.shaded.io.netty.util.internal.s.g(str, "name");
        for (int i9 = 0; i9 < g10.length(); i9++) {
            char charAt = g10.charAt(i9);
            if (Character.isISOControl(charAt) || Character.isWhitespace(charAt)) {
                throw new IllegalArgumentException("invalid character in name");
            }
        }
        this.f44091a = io.grpc.netty.shaded.io.netty.util.c.g(g10);
    }

    public io.grpc.netty.shaded.io.netty.util.c a() {
        return this.f44091a;
    }

    @Override // java.lang.Comparable
    /* renamed from: b */
    public int compareTo(y yVar) {
        if (yVar == this) {
            return 0;
        }
        return c().compareTo(yVar.c());
    }

    public String c() {
        return this.f44091a.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof y) {
            return c().equals(((y) obj).c());
        }
        return false;
    }

    public int hashCode() {
        return c().hashCode();
    }

    public String toString() {
        return this.f44091a.toString();
    }
}
