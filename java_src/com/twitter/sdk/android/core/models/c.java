package com.twitter.sdk.android.core.models;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Object> f35228a;

    public c() {
        this(Collections.EMPTY_MAP);
    }

    public <T> T a(String str) {
        try {
            return (T) this.f35228a.get(str);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    public c(Map<String, Object> map) {
        this.f35228a = Collections.unmodifiableMap(map);
    }
}
