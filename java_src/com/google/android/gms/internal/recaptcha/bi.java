package com.google.android.gms.internal.recaptcha;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class bi implements Map.Entry, Comparable<bi> {

    /* renamed from: a  reason: collision with root package name */
    private final Comparable f8538a;

    /* renamed from: b  reason: collision with root package name */
    private Object f8539b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ei f8540c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bi(ei eiVar, Comparable comparable, Object obj) {
        this.f8540c = eiVar;
        this.f8538a = comparable;
        this.f8539b = obj;
    }

    private static final boolean b(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public final Comparable a() {
        return this.f8538a;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(bi biVar) {
        return this.f8538a.compareTo(biVar.f8538a);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            return b(this.f8538a, entry.getKey()) && b(this.f8539b, entry.getValue());
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final /* bridge */ /* synthetic */ Object getKey() {
        return this.f8538a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f8539b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f8538a;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f8539b;
        return hashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f8540c.n();
        Object obj2 = this.f8539b;
        this.f8539b = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f8538a);
        String valueOf2 = String.valueOf(this.f8539b);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
        sb2.append(valueOf);
        sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
        sb2.append(valueOf2);
        return sb2.toString();
    }
}
