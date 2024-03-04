package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class Purchase {

    /* renamed from: a  reason: collision with root package name */
    private final String f3906a;

    /* renamed from: b  reason: collision with root package name */
    private final String f3907b;

    /* renamed from: c  reason: collision with root package name */
    private final JSONObject f3908c;

    /* loaded from: classes.dex */
    public static class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final List<Purchase> f3909a;

        /* renamed from: b  reason: collision with root package name */
        private final e f3910b;

        public a(@NonNull e eVar, @Nullable List<Purchase> list) {
            this.f3909a = list;
            this.f3910b = eVar;
        }

        @NonNull
        public e a() {
            return this.f3910b;
        }

        @Nullable
        public List<Purchase> b() {
            return this.f3909a;
        }
    }

    public Purchase(@NonNull String str, @NonNull String str2) throws JSONException {
        this.f3906a = str;
        this.f3907b = str2;
        this.f3908c = new JSONObject(str);
    }

    @NonNull
    public String a() {
        return this.f3908c.optString("orderId");
    }

    @NonNull
    public String b() {
        return this.f3906a;
    }

    public long c() {
        return this.f3908c.optLong("purchaseTime");
    }

    @NonNull
    public String d() {
        JSONObject jSONObject = this.f3908c;
        return jSONObject.optString(JThirdPlatFormInterface.KEY_TOKEN, jSONObject.optString("purchaseToken"));
    }

    @NonNull
    public String e() {
        return this.f3907b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Purchase) {
            Purchase purchase = (Purchase) obj;
            return TextUtils.equals(this.f3906a, purchase.b()) && TextUtils.equals(this.f3907b, purchase.e());
        }
        return false;
    }

    @NonNull
    public ArrayList<String> f() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.f3908c.has("productIds")) {
            JSONArray optJSONArray = this.f3908c.optJSONArray("productIds");
            if (optJSONArray != null) {
                for (int i9 = 0; i9 < optJSONArray.length(); i9++) {
                    arrayList.add(optJSONArray.optString(i9));
                }
            }
        } else if (this.f3908c.has(InAppPurchaseMetaData.KEY_PRODUCT_ID)) {
            arrayList.add(this.f3908c.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID));
        }
        return arrayList;
    }

    public boolean g() {
        return this.f3908c.optBoolean("acknowledged", true);
    }

    public int hashCode() {
        return this.f3906a.hashCode();
    }

    @NonNull
    public String toString() {
        String valueOf = String.valueOf(this.f3906a);
        return valueOf.length() != 0 ? "Purchase. Json: ".concat(valueOf) : new String("Purchase. Json: ");
    }
}
