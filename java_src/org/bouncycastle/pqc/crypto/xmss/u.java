package org.bouncycastle.pqc.crypto.xmss;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class u {

    /* renamed from: i  reason: collision with root package name */
    private static final Map<Integer, u> f56217i;

    /* renamed from: a  reason: collision with root package name */
    private final t f56218a;

    /* renamed from: b  reason: collision with root package name */
    private final int f56219b;

    /* renamed from: c  reason: collision with root package name */
    private final int f56220c;

    /* renamed from: d  reason: collision with root package name */
    private final org.bouncycastle.asn1.n f56221d;

    /* renamed from: e  reason: collision with root package name */
    private final int f56222e;

    /* renamed from: f  reason: collision with root package name */
    private final String f56223f;

    /* renamed from: g  reason: collision with root package name */
    private final int f56224g;

    /* renamed from: h  reason: collision with root package name */
    private final k f56225h;

    static {
        HashMap hashMap = new HashMap();
        Integer d10 = org.bouncycastle.util.e.d(1);
        org.bouncycastle.asn1.n nVar = ej.b.f39449c;
        hashMap.put(d10, new u(10, nVar));
        hashMap.put(org.bouncycastle.util.e.d(2), new u(16, nVar));
        hashMap.put(org.bouncycastle.util.e.d(3), new u(20, nVar));
        Integer d11 = org.bouncycastle.util.e.d(4);
        org.bouncycastle.asn1.n nVar2 = ej.b.f39453e;
        hashMap.put(d11, new u(10, nVar2));
        hashMap.put(org.bouncycastle.util.e.d(5), new u(16, nVar2));
        hashMap.put(org.bouncycastle.util.e.d(6), new u(20, nVar2));
        Integer d12 = org.bouncycastle.util.e.d(7);
        org.bouncycastle.asn1.n nVar3 = ej.b.f39469m;
        hashMap.put(d12, new u(10, nVar3));
        hashMap.put(org.bouncycastle.util.e.d(8), new u(16, nVar3));
        hashMap.put(org.bouncycastle.util.e.d(9), new u(20, nVar3));
        Integer d13 = org.bouncycastle.util.e.d(10);
        org.bouncycastle.asn1.n nVar4 = ej.b.f39471n;
        hashMap.put(d13, new u(10, nVar4));
        hashMap.put(org.bouncycastle.util.e.d(11), new u(16, nVar4));
        hashMap.put(org.bouncycastle.util.e.d(12), new u(20, nVar4));
        f56217i = Collections.unmodifiableMap(hashMap);
    }

    public u(int i9, org.bouncycastle.asn1.n nVar) {
        if (i9 < 2) {
            throw new IllegalArgumentException("height must be >= 2");
        }
        Objects.requireNonNull(nVar, "digest == null");
        this.f56219b = i9;
        this.f56220c = a();
        String b10 = d.b(nVar);
        this.f56223f = b10;
        this.f56221d = nVar;
        k kVar = new k(nVar);
        this.f56225h = kVar;
        int c10 = kVar.c();
        this.f56224g = c10;
        int d10 = kVar.d();
        this.f56222e = d10;
        this.f56218a = c.c(b10, c10, d10, kVar.a(), i9);
    }

    public u(int i9, org.bouncycastle.crypto.e eVar) {
        this(i9, d.c(eVar.getAlgorithmName()));
    }

    private int a() {
        int i9 = 2;
        while (true) {
            int i10 = this.f56219b;
            if (i9 > i10) {
                throw new IllegalStateException("should never happen...");
            }
            if ((i10 - i9) % 2 == 0) {
                return i9;
            }
            i9++;
        }
    }

    public static u k(int i9) {
        return f56217i.get(org.bouncycastle.util.e.d(i9));
    }

    public int b() {
        return this.f56219b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.f56220c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return this.f56225h.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t e() {
        return this.f56218a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String f() {
        return this.f56223f;
    }

    public org.bouncycastle.asn1.n g() {
        return this.f56221d;
    }

    public int h() {
        return this.f56224g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i i() {
        return new i(this.f56225h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j() {
        return this.f56222e;
    }
}
