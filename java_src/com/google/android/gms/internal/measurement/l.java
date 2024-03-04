package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class l implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Iterator f8174a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(Iterator it) {
        this.f8174a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8174a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return new u((String) this.f8174a.next());
    }
}
