package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Iterator;
/* loaded from: classes2.dex */
final class r implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    final Iterator f9789a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ zzau f9790b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(zzau zzauVar) {
        Bundle bundle;
        this.f9790b = zzauVar;
        bundle = zzauVar.zza;
        this.f9789a = bundle.keySet().iterator();
    }

    @Override // java.util.Iterator
    /* renamed from: a */
    public final String next() {
        return (String) this.f9789a.next();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f9789a.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
