package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
final class t implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    private int f8326a = 0;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ u f8327b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(u uVar) {
        this.f8327b = uVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        String str;
        int i9 = this.f8326a;
        str = this.f8327b.f8355a;
        return i9 < str.length();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        String str;
        String str2;
        int i9 = this.f8326a;
        u uVar = this.f8327b;
        str = uVar.f8355a;
        if (i9 < str.length()) {
            str2 = uVar.f8355a;
            this.f8326a = i9 + 1;
            return new u(String.valueOf(str2.charAt(i9)));
        }
        throw new NoSuchElementException();
    }
}
