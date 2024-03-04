package com.tencent.thumbplayer.utils;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class g<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private Map<K, V> f34463a = new HashMap();

    public g<K, V> a(K k10, V v10) {
        this.f34463a.put(k10, v10);
        return this;
    }

    public Map<K, V> a() {
        return this.f34463a;
    }
}
