package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
final class d implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Iterator f8023a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Iterator f8024b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(f fVar, Iterator it, Iterator it2) {
        this.f8023a = it;
        this.f8024b = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f8023a.hasNext()) {
            return true;
        }
        return this.f8024b.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        if (this.f8023a.hasNext()) {
            return new u(((Integer) this.f8023a.next()).toString());
        }
        if (this.f8024b.hasNext()) {
            return new u((String) this.f8024b.next());
        }
        throw new NoSuchElementException();
    }
}
