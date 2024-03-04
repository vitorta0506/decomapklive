package com.google.android.gms.internal.common;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes2.dex */
class b extends c {

    /* renamed from: a  reason: collision with root package name */
    Object[] f7917a = new Object[4];

    /* renamed from: b  reason: collision with root package name */
    int f7918b = 0;

    /* renamed from: c  reason: collision with root package name */
    boolean f7919c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(int i9) {
    }

    private final void b(int i9) {
        Object[] objArr = this.f7917a;
        int length = objArr.length;
        if (length >= i9) {
            if (this.f7919c) {
                this.f7917a = (Object[]) objArr.clone();
                this.f7919c = false;
                return;
            }
            return;
        }
        int i10 = length + (length >> 1) + 1;
        if (i10 < i9) {
            int highestOneBit = Integer.highestOneBit(i9 - 1);
            i10 = highestOneBit + highestOneBit;
        }
        if (i10 < 0) {
            i10 = Integer.MAX_VALUE;
        }
        this.f7917a = Arrays.copyOf(objArr, i10);
        this.f7919c = false;
    }

    public final b a(Object obj) {
        Objects.requireNonNull(obj);
        b(this.f7918b + 1);
        Object[] objArr = this.f7917a;
        int i9 = this.f7918b;
        this.f7918b = i9 + 1;
        objArr[i9] = obj;
        return this;
    }
}
