package com.snapchat.kit.sdk.core.config;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.annotations.SerializedName;
import com.huawei.hms.actions.SearchIntents;
import java.io.Serializable;
import java.util.Map;
/* loaded from: classes4.dex */
public final class a implements Serializable {
    @SerializedName(SearchIntents.EXTRA_QUERY)

    /* renamed from: a  reason: collision with root package name */
    private final String f29481a;
    @SerializedName("variables")

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Object> f29482b;

    public a(@NonNull String str, @Nullable Map<String, Object> map) {
        this.f29481a = str;
        this.f29482b = map;
    }
}
