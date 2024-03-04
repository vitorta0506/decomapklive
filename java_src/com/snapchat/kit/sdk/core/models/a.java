package com.snapchat.kit.sdk.core.models;

import androidx.annotation.VisibleForTesting;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes4.dex */
public final class a {
    @SerializedName("code")
    @VisibleForTesting(otherwise = 2)

    /* renamed from: a  reason: collision with root package name */
    public final String f29499a;
    @SerializedName("redirectUri")
    @VisibleForTesting(otherwise = 2)

    /* renamed from: b  reason: collision with root package name */
    public final String f29500b;
    @SerializedName("codeVerifier")
    @VisibleForTesting(otherwise = 2)

    /* renamed from: c  reason: collision with root package name */
    public final String f29501c;

    public a(String str, String str2, String str3) {
        this.f29499a = str;
        this.f29500b = str2;
        this.f29501c = str3;
    }
}
