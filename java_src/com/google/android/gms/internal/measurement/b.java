package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private String f7946a;

    /* renamed from: b  reason: collision with root package name */
    private final long f7947b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f7948c;

    public b(String str, long j10, Map map) {
        this.f7946a = str;
        this.f7947b = j10;
        HashMap hashMap = new HashMap();
        this.f7948c = hashMap;
        if (map != null) {
            hashMap.putAll(map);
        }
    }

    public final long a() {
        return this.f7947b;
    }

    /* renamed from: b */
    public final b clone() {
        return new b(this.f7946a, this.f7947b, new HashMap(this.f7948c));
    }

    public final Object c(String str) {
        if (this.f7948c.containsKey(str)) {
            return this.f7948c.get(str);
        }
        return null;
    }

    public final String d() {
        return this.f7946a;
    }

    public final Map e() {
        return this.f7948c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (this.f7947b == bVar.f7947b && this.f7946a.equals(bVar.f7946a)) {
                return this.f7948c.equals(bVar.f7948c);
            }
            return false;
        }
        return false;
    }

    public final void f(String str) {
        this.f7946a = str;
    }

    public final void g(String str, Object obj) {
        if (obj == null) {
            this.f7948c.remove(str);
        } else {
            this.f7948c.put(str, obj);
        }
    }

    public final int hashCode() {
        int hashCode = this.f7946a.hashCode();
        long j10 = this.f7947b;
        return (((hashCode * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + this.f7948c.hashCode();
    }

    public final String toString() {
        String str = this.f7946a;
        long j10 = this.f7947b;
        String obj = this.f7948c.toString();
        return "Event{name='" + str + "', timestamp=" + j10 + ", params=" + obj + "}";
    }
}
