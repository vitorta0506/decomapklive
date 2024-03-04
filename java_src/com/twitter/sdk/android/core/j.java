package com.twitter.sdk.android.core;

import com.google.gson.annotations.SerializedName;
import com.twitter.sdk.android.core.a;
/* loaded from: classes4.dex */
public class j<T extends a> {
    @SerializedName("auth_token")

    /* renamed from: a  reason: collision with root package name */
    private final T f35202a;
    @SerializedName("id")

    /* renamed from: b  reason: collision with root package name */
    private final long f35203b;

    public j(T t10, long j10) {
        if (t10 != null) {
            this.f35202a = t10;
            this.f35203b = j10;
            return;
        }
        throw new IllegalArgumentException("AuthToken must not be null.");
    }

    public T a() {
        return this.f35202a;
    }

    public long b() {
        return this.f35203b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        if (this.f35203b != jVar.f35203b) {
            return false;
        }
        T t10 = this.f35202a;
        T t11 = jVar.f35202a;
        return t10 != null ? t10.equals(t11) : t11 == null;
    }

    public int hashCode() {
        T t10 = this.f35202a;
        int hashCode = t10 != null ? t10.hashCode() : 0;
        long j10 = this.f35203b;
        return (hashCode * 31) + ((int) (j10 ^ (j10 >>> 32)));
    }
}
