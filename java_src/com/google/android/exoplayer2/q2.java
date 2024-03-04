package com.google.android.exoplayer2;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
final class q2 extends a {

    /* renamed from: f  reason: collision with root package name */
    private final int f6437f;

    /* renamed from: g  reason: collision with root package name */
    private final int f6438g;

    /* renamed from: h  reason: collision with root package name */
    private final int[] f6439h;

    /* renamed from: i  reason: collision with root package name */
    private final int[] f6440i;

    /* renamed from: j  reason: collision with root package name */
    private final i3[] f6441j;

    /* renamed from: k  reason: collision with root package name */
    private final Object[] f6442k;

    /* renamed from: l  reason: collision with root package name */
    private final HashMap<Object, Integer> f6443l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q2(Collection<? extends c2> collection, v2.k0 k0Var) {
        super(false, k0Var);
        int i9 = 0;
        int size = collection.size();
        this.f6439h = new int[size];
        this.f6440i = new int[size];
        this.f6441j = new i3[size];
        this.f6442k = new Object[size];
        this.f6443l = new HashMap<>();
        int i10 = 0;
        int i11 = 0;
        for (c2 c2Var : collection) {
            this.f6441j[i11] = c2Var.a();
            this.f6440i[i11] = i9;
            this.f6439h[i11] = i10;
            i9 += this.f6441j[i11].t();
            i10 += this.f6441j[i11].m();
            this.f6442k[i11] = c2Var.getUid();
            this.f6443l.put(this.f6442k[i11], Integer.valueOf(i11));
            i11++;
        }
        this.f6437f = i9;
        this.f6438g = i10;
    }

    @Override // com.google.android.exoplayer2.a
    protected Object C(int i9) {
        return this.f6442k[i9];
    }

    @Override // com.google.android.exoplayer2.a
    protected int E(int i9) {
        return this.f6439h[i9];
    }

    @Override // com.google.android.exoplayer2.a
    protected int F(int i9) {
        return this.f6440i[i9];
    }

    @Override // com.google.android.exoplayer2.a
    protected i3 I(int i9) {
        return this.f6441j[i9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<i3> J() {
        return Arrays.asList(this.f6441j);
    }

    @Override // com.google.android.exoplayer2.i3
    public int m() {
        return this.f6438g;
    }

    @Override // com.google.android.exoplayer2.i3
    public int t() {
        return this.f6437f;
    }

    @Override // com.google.android.exoplayer2.a
    protected int x(Object obj) {
        Integer num = this.f6443l.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.exoplayer2.a
    protected int y(int i9) {
        return com.google.android.exoplayer2.util.l0.h(this.f6439h, i9 + 1, false, false);
    }

    @Override // com.google.android.exoplayer2.a
    protected int z(int i9) {
        return com.google.android.exoplayer2.util.l0.h(this.f6440i, i9 + 1, false, false);
    }
}
