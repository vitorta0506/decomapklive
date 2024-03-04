package rk;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes7.dex */
public class e {

    /* renamed from: h  reason: collision with root package name */
    public static final e f57552h;

    /* renamed from: i  reason: collision with root package name */
    public static final e f57553i;

    /* renamed from: j  reason: collision with root package name */
    public static final e f57554j;

    /* renamed from: k  reason: collision with root package name */
    public static final e f57555k;

    /* renamed from: l  reason: collision with root package name */
    private static final Map<Object, e> f57556l;

    /* renamed from: a  reason: collision with root package name */
    private final int f57557a;

    /* renamed from: b  reason: collision with root package name */
    private final int f57558b;

    /* renamed from: c  reason: collision with root package name */
    private final int f57559c;

    /* renamed from: d  reason: collision with root package name */
    private final int f57560d;

    /* renamed from: e  reason: collision with root package name */
    private final int f57561e;

    /* renamed from: f  reason: collision with root package name */
    private final int f57562f;

    /* renamed from: g  reason: collision with root package name */
    private final org.bouncycastle.asn1.n f57563g;

    /* loaded from: classes7.dex */
    static class a extends HashMap<Object, e> {
        a() {
            e eVar = e.f57552h;
            put(Integer.valueOf(eVar.f57557a), eVar);
            e eVar2 = e.f57553i;
            put(Integer.valueOf(eVar2.f57557a), eVar2);
            e eVar3 = e.f57554j;
            put(Integer.valueOf(eVar3.f57557a), eVar3);
            e eVar4 = e.f57555k;
            put(Integer.valueOf(eVar4.f57557a), eVar4);
        }
    }

    static {
        org.bouncycastle.asn1.n nVar = ej.b.f39449c;
        f57552h = new e(1, 32, 1, 265, 7, 8516, nVar);
        f57553i = new e(2, 32, 2, 133, 6, 4292, nVar);
        f57554j = new e(3, 32, 4, 67, 4, 2180, nVar);
        f57555k = new e(4, 32, 8, 34, 0, 1124, nVar);
        f57556l = new a();
    }

    protected e(int i9, int i10, int i11, int i12, int i13, int i14, org.bouncycastle.asn1.n nVar) {
        this.f57557a = i9;
        this.f57558b = i10;
        this.f57559c = i11;
        this.f57560d = i12;
        this.f57561e = i13;
        this.f57562f = i14;
        this.f57563g = nVar;
    }

    public static e f(int i9) {
        return f57556l.get(Integer.valueOf(i9));
    }

    public org.bouncycastle.asn1.n b() {
        return this.f57563g;
    }

    public int c() {
        return this.f57561e;
    }

    public int d() {
        return this.f57558b;
    }

    public int e() {
        return this.f57560d;
    }

    public int g() {
        return this.f57557a;
    }

    public int h() {
        return this.f57559c;
    }
}
