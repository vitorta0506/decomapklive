package a6;
/* loaded from: classes2.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f689a;

    /* renamed from: b  reason: collision with root package name */
    private final int f690b;

    /* renamed from: c  reason: collision with root package name */
    private final int f691c;

    private r(Class<?> cls, int i9, int i10) {
        this.f689a = (Class) z.c(cls, "Null dependency anInterface.");
        this.f690b = i9;
        this.f691c = i10;
    }

    private static String a(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 == 2) {
                    return "deferred";
                }
                throw new AssertionError("Unsupported injection: " + i9);
            }
            return "provider";
        }
        return "direct";
    }

    @Deprecated
    public static r g(Class<?> cls) {
        return new r(cls, 0, 0);
    }

    public static r h(Class<?> cls) {
        return new r(cls, 0, 1);
    }

    public static r i(Class<?> cls) {
        return new r(cls, 1, 0);
    }

    public static r j(Class<?> cls) {
        return new r(cls, 1, 1);
    }

    public static r k(Class<?> cls) {
        return new r(cls, 2, 0);
    }

    public Class<?> b() {
        return this.f689a;
    }

    public boolean c() {
        return this.f691c == 2;
    }

    public boolean d() {
        return this.f691c == 0;
    }

    public boolean e() {
        return this.f690b == 1;
    }

    public boolean equals(Object obj) {
        if (obj instanceof r) {
            r rVar = (r) obj;
            return this.f689a == rVar.f689a && this.f690b == rVar.f690b && this.f691c == rVar.f691c;
        }
        return false;
    }

    public boolean f() {
        return this.f690b == 2;
    }

    public int hashCode() {
        return ((((this.f689a.hashCode() ^ 1000003) * 1000003) ^ this.f690b) * 1000003) ^ this.f691c;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("Dependency{anInterface=");
        sb2.append(this.f689a);
        sb2.append(", type=");
        int i9 = this.f690b;
        sb2.append(i9 == 1 ? "required" : i9 == 0 ? "optional" : "set");
        sb2.append(", injection=");
        sb2.append(a(this.f691c));
        sb2.append("}");
        return sb2.toString();
    }
}
