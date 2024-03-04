package org.bouncycastle.pqc.crypto.xmss;

import java.util.Objects;
/* loaded from: classes7.dex */
final class k {

    /* renamed from: a  reason: collision with root package name */
    private final t f56168a;

    /* renamed from: b  reason: collision with root package name */
    private final int f56169b;

    /* renamed from: c  reason: collision with root package name */
    private final int f56170c;

    /* renamed from: d  reason: collision with root package name */
    private final int f56171d;

    /* renamed from: e  reason: collision with root package name */
    private final int f56172e;

    /* renamed from: f  reason: collision with root package name */
    private final int f56173f;

    /* renamed from: g  reason: collision with root package name */
    private final org.bouncycastle.asn1.n f56174g;

    /* JADX INFO: Access modifiers changed from: protected */
    public k(org.bouncycastle.asn1.n nVar) {
        Objects.requireNonNull(nVar, "treeDigest == null");
        this.f56174g = nVar;
        org.bouncycastle.crypto.e a10 = d.a(nVar);
        int h10 = x.h(a10);
        this.f56169b = h10;
        this.f56170c = 16;
        int ceil = (int) Math.ceil((h10 * 8) / x.o(16));
        this.f56172e = ceil;
        int floor = ((int) Math.floor(x.o((16 - 1) * ceil) / x.o(16))) + 1;
        this.f56173f = floor;
        int i9 = ceil + floor;
        this.f56171d = i9;
        j c10 = j.c(a10.getAlgorithmName(), h10, 16, i9);
        this.f56168a = c10;
        if (c10 != null) {
            return;
        }
        throw new IllegalArgumentException("cannot find OID for digest algorithm: " + a10.getAlgorithmName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int a() {
        return this.f56171d;
    }

    public org.bouncycastle.asn1.n b() {
        return this.f56174g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int c() {
        return this.f56169b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int d() {
        return this.f56170c;
    }
}
