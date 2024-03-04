package com.google.common.collect;

import java.io.Serializable;
/* loaded from: classes2.dex */
class h4<K, V> extends n<K, V> implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: a  reason: collision with root package name */
    final K f13111a;

    /* renamed from: b  reason: collision with root package name */
    final V f13112b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h4(K k10, V v10) {
        this.f13111a = k10;
        this.f13112b = v10;
    }

    @Override // com.google.common.collect.n, java.util.Map.Entry
    public final K getKey() {
        return this.f13111a;
    }

    @Override // com.google.common.collect.n, java.util.Map.Entry
    public final V getValue() {
        return this.f13112b;
    }

    @Override // com.google.common.collect.n, java.util.Map.Entry
    public final V setValue(V v10) {
        throw new UnsupportedOperationException();
    }
}
