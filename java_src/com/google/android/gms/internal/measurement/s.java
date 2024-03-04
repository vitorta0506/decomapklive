package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
final class s implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    private int f8296a = 0;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ u f8297b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(u uVar) {
        this.f8297b = uVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        String str;
        int i9 = this.f8296a;
        str = this.f8297b.f8355a;
        return i9 < str.length();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        String str;
        int i9 = this.f8296a;
        str = this.f8297b.f8355a;
        if (i9 < str.length()) {
            this.f8296a = i9 + 1;
            return new u(String.valueOf(i9));
        }
        throw new NoSuchElementException();
    }
}
