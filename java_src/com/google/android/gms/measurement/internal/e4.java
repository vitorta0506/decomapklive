package com.google.android.gms.measurement.internal;

import androidx.collection.LruCache;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class e4 extends LruCache {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ h4 f9386a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e4(h4 h4Var, int i9) {
        super(20);
        this.f9386a = h4Var;
    }

    @Override // androidx.collection.LruCache
    protected final /* bridge */ /* synthetic */ Object create(Object obj) {
        String str = (String) obj;
        com.google.android.gms.common.internal.p.f(str);
        return h4.s(this.f9386a, str);
    }
}
