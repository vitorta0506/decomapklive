package com.google.android.gms.internal.recaptcha;

import java.util.Iterator;
/* loaded from: classes2.dex */
final class oi implements Iterator<String> {

    /* renamed from: a  reason: collision with root package name */
    final Iterator<String> f8954a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ pi f8955b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public oi(pi piVar) {
        qg qgVar;
        this.f8955b = piVar;
        qgVar = piVar.f8988a;
        this.f8954a = qgVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8954a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.f8954a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
