package com.squareup.okhttp.internal.framed;

import java.util.Arrays;
/* loaded from: classes4.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private int f29814a;

    /* renamed from: b  reason: collision with root package name */
    private int f29815b;

    /* renamed from: c  reason: collision with root package name */
    private int f29816c;

    /* renamed from: d  reason: collision with root package name */
    private final int[] f29817d = new int[10];

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f29816c = 0;
        this.f29815b = 0;
        this.f29814a = 0;
        Arrays.fill(this.f29817d, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(int i9) {
        int i10 = h(i9) ? 2 : 0;
        return k(i9) ? i10 | 1 : i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c(int i9) {
        return this.f29817d[i9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        if ((this.f29814a & 2) != 0) {
            return this.f29817d[1];
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e(int i9) {
        return (this.f29814a & 128) != 0 ? this.f29817d[7] : i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f(int i9) {
        return (this.f29814a & 16) != 0 ? this.f29817d[4] : i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g(int i9) {
        return (this.f29814a & 32) != 0 ? this.f29817d[5] : i9;
    }

    boolean h(int i9) {
        return ((1 << i9) & this.f29816c) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i(int i9) {
        return ((1 << i9) & this.f29814a) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(i iVar) {
        for (int i9 = 0; i9 < 10; i9++) {
            if (iVar.i(i9)) {
                l(i9, iVar.b(i9), iVar.c(i9));
            }
        }
    }

    boolean k(int i9) {
        return ((1 << i9) & this.f29815b) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i l(int i9, int i10, int i11) {
        int[] iArr = this.f29817d;
        if (i9 >= iArr.length) {
            return this;
        }
        int i12 = 1 << i9;
        this.f29814a |= i12;
        if ((i10 & 1) != 0) {
            this.f29815b |= i12;
        } else {
            this.f29815b &= ~i12;
        }
        if ((i10 & 2) != 0) {
            this.f29816c |= i12;
        } else {
            this.f29816c &= ~i12;
        }
        iArr[i9] = i11;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int m() {
        return Integer.bitCount(this.f29814a);
    }
}
