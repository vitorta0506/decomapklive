package com.google.android.gms.internal.play_billing;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.c0;
import com.android.billingclient.api.e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f8467a = Runtime.getRuntime().availableProcessors();

    public static int a(Bundle bundle, String str) {
        if (bundle == null) {
            j(str, "Unexpected null bundle received!");
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            i(str, "getResponseCodeFromBundle() got null response code, assuming OK");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            String name = obj.getClass().getName();
            j(str, name.length() != 0 ? "Unexpected type for bundle response code: ".concat(name) : new String("Unexpected type for bundle response code: "));
            return 6;
        }
    }

    public static Bundle b(com.android.billingclient.api.f fVar, boolean z10, String str) {
        Bundle bundle = new Bundle();
        if (z10) {
            bundle.putString("playBillingLibraryVersion", str);
        }
        return bundle;
    }

    public static Bundle c(int i9, boolean z10, String str, @Nullable String str2, ArrayList<c0> arrayList) {
        Bundle bundle = new Bundle();
        if (i9 >= 9) {
            bundle.putString("playBillingLibraryVersion", str);
        }
        if (i9 >= 9 && z10) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        if (i9 >= 14) {
            ArrayList<String> arrayList2 = new ArrayList<>();
            int size = arrayList.size();
            boolean z11 = false;
            for (int i10 = 0; i10 < size; i10++) {
                arrayList.get(i10);
                arrayList2.add(null);
                z11 |= !TextUtils.isEmpty(null);
            }
            if (z11) {
                bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList2);
            }
        }
        return bundle;
    }

    public static Bundle d(com.android.billingclient.api.d dVar, boolean z10, boolean z11, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (dVar.d() != 0) {
            bundle.putInt("prorationMode", dVar.d());
        }
        if (!TextUtils.isEmpty(dVar.h())) {
            bundle.putString("accountId", dVar.h());
        }
        if (!TextUtils.isEmpty(dVar.i())) {
            bundle.putString("obfuscatedProfileId", dVar.i());
        }
        if (dVar.a()) {
            bundle.putBoolean("vr", true);
        }
        if (!TextUtils.isEmpty(null)) {
            bundle.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(null)));
        }
        if (!TextUtils.isEmpty(dVar.j())) {
            bundle.putString("oldSkuPurchaseToken", dVar.j());
        }
        if (!TextUtils.isEmpty(null)) {
            bundle.putString("oldSkuPurchaseId", null);
        }
        if (!TextUtils.isEmpty(null)) {
            bundle.putString("paymentsPurchaseParams", null);
        }
        if (z10 && z11) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        return bundle;
    }

    public static Bundle e(boolean z10, boolean z11, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("playBillingLibraryVersion", str);
        if (z10 && z11) {
            bundle.putBoolean("enablePendingPurchases", true);
        }
        return bundle;
    }

    public static com.android.billingclient.api.e f(Intent intent, String str) {
        if (intent == null) {
            j("BillingHelper", "Got null intent!");
            e.a c10 = com.android.billingclient.api.e.c();
            c10.c(6);
            c10.b("An internal error occurred.");
            return c10.a();
        }
        e.a c11 = com.android.billingclient.api.e.c();
        c11.c(a(intent.getExtras(), str));
        c11.b(g(intent.getExtras(), str));
        return c11.a();
    }

    public static String g(Bundle bundle, String str) {
        if (bundle == null) {
            j(str, "Unexpected null bundle received!");
            return "";
        }
        Object obj = bundle.get("DEBUG_MESSAGE");
        if (obj == null) {
            i(str, "getDebugMessageFromBundle() got null response code, assuming OK");
            return "";
        } else if (obj instanceof String) {
            return (String) obj;
        } else {
            String name = obj.getClass().getName();
            j(str, name.length() != 0 ? "Unexpected type for debug message: ".concat(name) : new String("Unexpected type for debug message: "));
            return "";
        }
    }

    public static List<Purchase> h(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        ArrayList arrayList = new ArrayList();
        if (stringArrayList != null && stringArrayList2 != null) {
            for (int i9 = 0; i9 < stringArrayList.size() && i9 < stringArrayList2.size(); i9++) {
                Purchase k10 = k(stringArrayList.get(i9), stringArrayList2.get(i9));
                if (k10 != null) {
                    arrayList.add(k10);
                }
            }
        } else {
            j("BillingHelper", "Couldn't find purchase lists, trying to find single data.");
            Purchase k11 = k(bundle.getString("INAPP_PURCHASE_DATA"), bundle.getString("INAPP_DATA_SIGNATURE"));
            if (k11 == null) {
                j("BillingHelper", "Couldn't find single purchase data as well.");
                return null;
            }
            arrayList.add(k11);
        }
        return arrayList;
    }

    public static void i(String str, String str2) {
        if (Log.isLoggable(str, 2)) {
            Log.v(str, str2);
        }
    }

    public static void j(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2);
        }
    }

    private static Purchase k(String str, String str2) {
        if (str != null && str2 != null) {
            try {
                return new Purchase(str, str2);
            } catch (JSONException e10) {
                String valueOf = String.valueOf(e10);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 47);
                sb2.append("Got JSONException while parsing purchase data: ");
                sb2.append(valueOf);
                j("BillingHelper", sb2.toString());
                return null;
            }
        }
        j("BillingHelper", "Received a bad purchase data.");
        return null;
    }
}
