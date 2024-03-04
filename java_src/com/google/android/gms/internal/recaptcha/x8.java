package com.google.android.gms.internal.recaptcha;

import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
final class x8 extends j9 {

    /* renamed from: a  reason: collision with root package name */
    boolean f9174a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Object f9175b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x8(Object obj) {
        this.f9175b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f9174a;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f9174a) {
            this.f9174a = true;
            return this.f9175b;
        }
        throw new NoSuchElementException();
    }
}
