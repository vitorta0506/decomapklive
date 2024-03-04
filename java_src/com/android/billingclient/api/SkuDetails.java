package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class SkuDetails {

    /* renamed from: a  reason: collision with root package name */
    private final String f3914a;

    /* renamed from: b  reason: collision with root package name */
    private final JSONObject f3915b;

    public SkuDetails(@NonNull String str) throws JSONException {
        this.f3914a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f3915b = jSONObject;
        if (!TextUtils.isEmpty(jSONObject.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID))) {
            if (TextUtils.isEmpty(jSONObject.optString("type"))) {
                throw new IllegalArgumentException("SkuType cannot be empty.");
            }
            return;
        }
        throw new IllegalArgumentException("SKU cannot be empty.");
    }

    @NonNull
    public String a() {
        return this.f3915b.optString("description");
    }

    @NonNull
    public String b() {
        return this.f3915b.optString("freeTrialPeriod");
    }

    @NonNull
    public String c() {
        return this.f3914a;
    }

    @NonNull
    public String d() {
        return this.f3915b.optString(InAppPurchaseMetaData.KEY_PRICE);
    }

    @NonNull
    public String e() {
        return this.f3915b.optString("price_currency_code");
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SkuDetails) {
            return TextUtils.equals(this.f3914a, ((SkuDetails) obj).f3914a);
        }
        return false;
    }

    @NonNull
    public String f() {
        return this.f3915b.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
    }

    @NonNull
    public String g() {
        return this.f3915b.optString("subscriptionPeriod");
    }

    @NonNull
    public String h() {
        return this.f3915b.optString("title");
    }

    public int hashCode() {
        return this.f3914a.hashCode();
    }

    @NonNull
    public String i() {
        return this.f3915b.optString("type");
    }

    public int j() {
        return this.f3915b.optInt("offer_type");
    }

    @NonNull
    public String k() {
        return this.f3915b.optString("offer_id");
    }

    @NonNull
    public final String l() {
        return this.f3915b.optString("packageName");
    }

    @NonNull
    public String m() {
        return this.f3915b.optString("serializedDocid");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String n() {
        return this.f3915b.optString("skuDetailsToken");
    }

    @NonNull
    public String toString() {
        String valueOf = String.valueOf(this.f3914a);
        return valueOf.length() != 0 ? "SkuDetails: ".concat(valueOf) : new String("SkuDetails: ");
    }
}
