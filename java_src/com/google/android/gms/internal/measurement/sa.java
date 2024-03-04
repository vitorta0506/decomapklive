package com.google.android.gms.internal.measurement;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class sa implements Map.Entry, Comparable {

    /* renamed from: a  reason: collision with root package name */
    private final Comparable f8321a;

    /* renamed from: b  reason: collision with root package name */
    private Object f8322b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ya f8323c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sa(ya yaVar, Comparable comparable, Object obj) {
        this.f8323c = yaVar;
        this.f8321a = comparable;
        this.f8322b = obj;
    }

    private static final boolean b(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public final Comparable a() {
        return this.f8321a;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.f8321a.compareTo(((sa) obj).f8321a);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            return b(this.f8321a, entry.getKey()) && b(this.f8322b, entry.getValue());
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f8321a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f8322b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f8321a;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f8322b;
        return hashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f8323c.n();
        Object obj2 = this.f8322b;
        this.f8322b = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f8321a);
        String valueOf2 = String.valueOf(this.f8322b);
        return valueOf + ContainerUtils.KEY_VALUE_DELIMITER + valueOf2;
    }
}
