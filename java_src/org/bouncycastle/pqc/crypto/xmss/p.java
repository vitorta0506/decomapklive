package org.bouncycastle.pqc.crypto.xmss;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes7.dex */
public final class p {

    /* renamed from: e  reason: collision with root package name */
    private static final Map<Integer, p> f56186e;

    /* renamed from: a  reason: collision with root package name */
    private final t f56187a;

    /* renamed from: b  reason: collision with root package name */
    private final u f56188b;

    /* renamed from: c  reason: collision with root package name */
    private final int f56189c;

    /* renamed from: d  reason: collision with root package name */
    private final int f56190d;

    static {
        HashMap hashMap = new HashMap();
        Integer d10 = org.bouncycastle.util.e.d(1);
        org.bouncycastle.asn1.n nVar = ej.b.f39449c;
        hashMap.put(d10, new p(20, 2, nVar));
        hashMap.put(org.bouncycastle.util.e.d(2), new p(20, 4, nVar));
        hashMap.put(org.bouncycastle.util.e.d(3), new p(40, 2, nVar));
        hashMap.put(org.bouncycastle.util.e.d(4), new p(40, 4, nVar));
        hashMap.put(org.bouncycastle.util.e.d(5), new p(40, 8, nVar));
        hashMap.put(org.bouncycastle.util.e.d(6), new p(60, 3, nVar));
        hashMap.put(org.bouncycastle.util.e.d(7), new p(60, 6, nVar));
        hashMap.put(org.bouncycastle.util.e.d(8), new p(60, 12, nVar));
        Integer d11 = org.bouncycastle.util.e.d(9);
        org.bouncycastle.asn1.n nVar2 = ej.b.f39453e;
        hashMap.put(d11, new p(20, 2, nVar2));
        hashMap.put(org.bouncycastle.util.e.d(10), new p(20, 4, nVar2));
        hashMap.put(org.bouncycastle.util.e.d(11), new p(40, 2, nVar2));
        hashMap.put(org.bouncycastle.util.e.d(12), new p(40, 4, nVar2));
        hashMap.put(org.bouncycastle.util.e.d(13), new p(40, 8, nVar2));
        hashMap.put(org.bouncycastle.util.e.d(14), new p(60, 3, nVar2));
        hashMap.put(org.bouncycastle.util.e.d(15), new p(60, 6, nVar2));
        hashMap.put(org.bouncycastle.util.e.d(16), new p(60, 12, nVar2));
        Integer d12 = org.bouncycastle.util.e.d(17);
        org.bouncycastle.asn1.n nVar3 = ej.b.f39469m;
        hashMap.put(d12, new p(20, 2, nVar3));
        hashMap.put(org.bouncycastle.util.e.d(18), new p(20, 4, nVar3));
        hashMap.put(org.bouncycastle.util.e.d(19), new p(40, 2, nVar3));
        hashMap.put(org.bouncycastle.util.e.d(20), new p(40, 4, nVar3));
        hashMap.put(org.bouncycastle.util.e.d(21), new p(40, 8, nVar3));
        hashMap.put(org.bouncycastle.util.e.d(22), new p(60, 3, nVar3));
        hashMap.put(org.bouncycastle.util.e.d(23), new p(60, 6, nVar3));
        hashMap.put(org.bouncycastle.util.e.d(24), new p(60, 12, nVar3));
        Integer d13 = org.bouncycastle.util.e.d(25);
        org.bouncycastle.asn1.n nVar4 = ej.b.f39471n;
        hashMap.put(d13, new p(20, 2, nVar4));
        hashMap.put(org.bouncycastle.util.e.d(26), new p(20, 4, nVar4));
        hashMap.put(org.bouncycastle.util.e.d(27), new p(40, 2, nVar4));
        hashMap.put(org.bouncycastle.util.e.d(28), new p(40, 4, nVar4));
        hashMap.put(org.bouncycastle.util.e.d(29), new p(40, 8, nVar4));
        hashMap.put(org.bouncycastle.util.e.d(30), new p(60, 3, nVar4));
        hashMap.put(org.bouncycastle.util.e.d(31), new p(60, 6, nVar4));
        hashMap.put(org.bouncycastle.util.e.d(32), new p(60, 12, nVar4));
        f56186e = Collections.unmodifiableMap(hashMap);
    }

    public p(int i9, int i10, org.bouncycastle.asn1.n nVar) {
        this.f56189c = i9;
        this.f56190d = i10;
        this.f56188b = new u(j(i9, i10), nVar);
        this.f56187a = b.c(e(), f(), g(), c(), a(), i10);
    }

    public p(int i9, int i10, org.bouncycastle.crypto.e eVar) {
        this(i9, i10, d.c(eVar.getAlgorithmName()));
    }

    public static p i(int i9) {
        return f56186e.get(org.bouncycastle.util.e.d(i9));
    }

    private static int j(int i9, int i10) throws IllegalArgumentException {
        if (i9 >= 2) {
            if (i9 % i10 == 0) {
                int i11 = i9 / i10;
                if (i11 != 1) {
                    return i11;
                }
                throw new IllegalArgumentException("height / layers must be greater than 1");
            }
            throw new IllegalArgumentException("layers must divide totalHeight without remainder");
        }
        throw new IllegalArgumentException("totalHeight must be > 1");
    }

    public int a() {
        return this.f56189c;
    }

    public int b() {
        return this.f56190d;
    }

    protected int c() {
        return this.f56188b.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public t d() {
        return this.f56187a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String e() {
        return this.f56188b.f();
    }

    public int f() {
        return this.f56188b.h();
    }

    int g() {
        return this.f56188b.j();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public u h() {
        return this.f56188b;
    }
}
