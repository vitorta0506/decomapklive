package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.SerializedName;
import java.util.List;
/* loaded from: classes4.dex */
public class o {
    @SerializedName("url")

    /* renamed from: a  reason: collision with root package name */
    public final a f35313a;
    @SerializedName("description")

    /* renamed from: b  reason: collision with root package name */
    public final a f35314b;

    /* loaded from: classes4.dex */
    public static class a {
        @SerializedName("urls")

        /* renamed from: a  reason: collision with root package name */
        public final List<UrlEntity> f35315a;

        private a() {
            this(null);
        }

        public a(List<UrlEntity> list) {
            this.f35315a = j.a(list);
        }
    }
}
