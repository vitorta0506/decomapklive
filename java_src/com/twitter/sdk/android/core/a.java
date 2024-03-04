package com.twitter.sdk.android.core;

import com.google.gson.annotations.SerializedName;
/* loaded from: classes4.dex */
public abstract class a {
    @SerializedName("created_at")

    /* renamed from: a  reason: collision with root package name */
    protected final long f35106a;

    public a() {
        this(System.currentTimeMillis());
    }

    protected a(long j10) {
        this.f35106a = j10;
    }
}
