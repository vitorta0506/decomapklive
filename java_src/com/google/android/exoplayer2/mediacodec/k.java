package com.google.android.exoplayer2.mediacodec;

import java.util.NoSuchElementException;
/* loaded from: classes.dex */
final class k {

    /* renamed from: a  reason: collision with root package name */
    private int f6284a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f6285b = -1;

    /* renamed from: c  reason: collision with root package name */
    private int f6286c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int[] f6287d;

    /* renamed from: e  reason: collision with root package name */
    private int f6288e;

    public k() {
        int[] iArr = new int[16];
        this.f6287d = iArr;
        this.f6288e = iArr.length - 1;
    }

    private void c() {
        int[] iArr = this.f6287d;
        int length = iArr.length << 1;
        if (length >= 0) {
            int[] iArr2 = new int[length];
            int length2 = iArr.length;
            int i9 = this.f6284a;
            int i10 = length2 - i9;
            System.arraycopy(iArr, i9, iArr2, 0, i10);
            System.arraycopy(this.f6287d, 0, iArr2, i10, i9);
            this.f6284a = 0;
            this.f6285b = this.f6286c - 1;
            this.f6287d = iArr2;
            this.f6288e = iArr2.length - 1;
            return;
        }
        throw new IllegalStateException();
    }

    public void a(int i9) {
        if (this.f6286c == this.f6287d.length) {
            c();
        }
        int i10 = (this.f6285b + 1) & this.f6288e;
        this.f6285b = i10;
        this.f6287d[i10] = i9;
        this.f6286c++;
    }

    public void b() {
        this.f6284a = 0;
        this.f6285b = -1;
        this.f6286c = 0;
    }

    public boolean d() {
        return this.f6286c == 0;
    }

    public int e() {
        int i9 = this.f6286c;
        if (i9 != 0) {
            int[] iArr = this.f6287d;
            int i10 = this.f6284a;
            int i11 = iArr[i10];
            this.f6284a = (i10 + 1) & this.f6288e;
            this.f6286c = i9 - 1;
            return i11;
        }
        throw new NoSuchElementException();
    }
}
