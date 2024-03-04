package com.google.android.gms.internal.recaptcha;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes2.dex */
class o8<E> extends p8<E> {

    /* renamed from: a  reason: collision with root package name */
    Object[] f8939a = new Object[4];

    /* renamed from: b  reason: collision with root package name */
    int f8940b = 0;

    /* renamed from: c  reason: collision with root package name */
    boolean f8941c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o8(int i9) {
    }

    private final void c(int i9) {
        Object[] objArr = this.f8939a;
        int length = objArr.length;
        if (length < i9) {
            this.f8939a = Arrays.copyOf(objArr, p8.a(length, i9));
            this.f8941c = false;
        } else if (this.f8941c) {
            this.f8939a = (Object[]) objArr.clone();
            this.f8941c = false;
        }
    }

    public final o8<E> b(E e10) {
        Objects.requireNonNull(e10);
        c(this.f8940b + 1);
        Object[] objArr = this.f8939a;
        int i9 = this.f8940b;
        this.f8940b = i9 + 1;
        objArr[i9] = e10;
        return this;
    }
}
