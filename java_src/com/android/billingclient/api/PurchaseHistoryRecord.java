package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class PurchaseHistoryRecord {

    /* renamed from: a  reason: collision with root package name */
    private final String f3911a;

    /* renamed from: b  reason: collision with root package name */
    private final String f3912b;

    /* renamed from: c  reason: collision with root package name */
    private final JSONObject f3913c;

    public PurchaseHistoryRecord(@NonNull String str, @NonNull String str2) throws JSONException {
        this.f3911a = str;
        this.f3912b = str2;
        this.f3913c = new JSONObject(str);
    }

    @NonNull
    public String a() {
        return this.f3911a;
    }

    public long b() {
        return this.f3913c.optLong("purchaseTime");
    }

    @NonNull
    public String c() {
        JSONObject jSONObject = this.f3913c;
        return jSONObject.optString(JThirdPlatFormInterface.KEY_TOKEN, jSONObject.optString("purchaseToken"));
    }

    @NonNull
    public String d() {
        return this.f3912b;
    }

    @NonNull
    public ArrayList<String> e() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.f3913c.has("productIds")) {
            JSONArray optJSONArray = this.f3913c.optJSONArray("productIds");
            if (optJSONArray != null) {
                for (int i9 = 0; i9 < optJSONArray.length(); i9++) {
                    arrayList.add(optJSONArray.optString(i9));
                }
            }
        } else if (this.f3913c.has(InAppPurchaseMetaData.KEY_PRODUCT_ID)) {
            arrayList.add(this.f3913c.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID));
        }
        return arrayList;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PurchaseHistoryRecord) {
            PurchaseHistoryRecord purchaseHistoryRecord = (PurchaseHistoryRecord) obj;
            return TextUtils.equals(this.f3911a, purchaseHistoryRecord.a()) && TextUtils.equals(this.f3912b, purchaseHistoryRecord.d());
        }
        return false;
    }

    public int hashCode() {
        return this.f3911a.hashCode();
    }

    @NonNull
    public String toString() {
        String valueOf = String.valueOf(this.f3911a);
        return valueOf.length() != 0 ? "PurchaseHistoryRecord. Json: ".concat(valueOf) : new String("PurchaseHistoryRecord. Json: ");
    }
}
