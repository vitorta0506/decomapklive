package rk;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes7.dex */
public class n {

    /* renamed from: e  reason: collision with root package name */
    public static final n f57598e;

    /* renamed from: f  reason: collision with root package name */
    public static final n f57599f;

    /* renamed from: g  reason: collision with root package name */
    public static final n f57600g;

    /* renamed from: h  reason: collision with root package name */
    public static final n f57601h;

    /* renamed from: i  reason: collision with root package name */
    public static final n f57602i;

    /* renamed from: j  reason: collision with root package name */
    private static Map<Object, n> f57603j;

    /* renamed from: a  reason: collision with root package name */
    private final int f57604a;

    /* renamed from: b  reason: collision with root package name */
    private final int f57605b;

    /* renamed from: c  reason: collision with root package name */
    private final int f57606c;

    /* renamed from: d  reason: collision with root package name */
    private final org.bouncycastle.asn1.n f57607d;

    /* loaded from: classes7.dex */
    static class a extends HashMap<Object, n> {
        a() {
            n nVar = n.f57598e;
            put(Integer.valueOf(nVar.f57604a), nVar);
            n nVar2 = n.f57599f;
            put(Integer.valueOf(nVar2.f57604a), nVar2);
            n nVar3 = n.f57600g;
            put(Integer.valueOf(nVar3.f57604a), nVar3);
            n nVar4 = n.f57601h;
            put(Integer.valueOf(nVar4.f57604a), nVar4);
            n nVar5 = n.f57602i;
            put(Integer.valueOf(nVar5.f57604a), nVar5);
        }
    }

    static {
        org.bouncycastle.asn1.n nVar = ej.b.f39449c;
        f57598e = new n(5, 32, 5, nVar);
        f57599f = new n(6, 32, 10, nVar);
        f57600g = new n(7, 32, 15, nVar);
        f57601h = new n(8, 32, 20, nVar);
        f57602i = new n(9, 32, 25, nVar);
        f57603j = new a();
    }

    protected n(int i9, int i10, int i11, org.bouncycastle.asn1.n nVar) {
        this.f57604a = i9;
        this.f57605b = i10;
        this.f57606c = i11;
        this.f57607d = nVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n e(int i9) {
        return f57603j.get(Integer.valueOf(i9));
    }

    public org.bouncycastle.asn1.n b() {
        return this.f57607d;
    }

    public int c() {
        return this.f57606c;
    }

    public int d() {
        return this.f57605b;
    }

    public int f() {
        return this.f57604a;
    }
}
