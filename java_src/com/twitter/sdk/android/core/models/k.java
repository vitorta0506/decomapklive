package com.twitter.sdk.android.core.models;

import com.facebook.appevents.UserDataStore;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class k {
    @SerializedName("attributes")

    /* renamed from: a  reason: collision with root package name */
    public final Map<String, String> f35244a;
    @SerializedName("bounding_box")

    /* renamed from: b  reason: collision with root package name */
    public final a f35245b;
    @SerializedName(UserDataStore.COUNTRY)

    /* renamed from: c  reason: collision with root package name */
    public final String f35246c;
    @SerializedName("country_code")

    /* renamed from: d  reason: collision with root package name */
    public final String f35247d;
    @SerializedName("full_name")

    /* renamed from: e  reason: collision with root package name */
    public final String f35248e;
    @SerializedName("id")

    /* renamed from: f  reason: collision with root package name */
    public final String f35249f;
    @SerializedName("name")

    /* renamed from: g  reason: collision with root package name */
    public final String f35250g;
    @SerializedName("place_type")

    /* renamed from: h  reason: collision with root package name */
    public final String f35251h;
    @SerializedName("url")

    /* renamed from: i  reason: collision with root package name */
    public final String f35252i;

    /* loaded from: classes4.dex */
    public static class a {
        @SerializedName("coordinates")

        /* renamed from: a  reason: collision with root package name */
        public final List<List<List<Double>>> f35253a;
        @SerializedName("type")

        /* renamed from: b  reason: collision with root package name */
        public final String f35254b;

        private a() {
            this(null, null);
        }

        public a(List<List<List<Double>>> list, String str) {
            this.f35253a = j.a(list);
            this.f35254b = str;
        }
    }
}
