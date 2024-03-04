package com.android.billingclient.api;

import android.os.Bundle;
import com.android.billingclient.api.e;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class y {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static e a(Bundle bundle, String str, String str2) {
        e eVar = w.f4026l;
        if (bundle == null) {
            com.google.android.gms.internal.play_billing.a.j("BillingClient", String.format("%s got null owned items list", str2));
            return eVar;
        }
        int a10 = com.google.android.gms.internal.play_billing.a.a(bundle, "BillingClient");
        String g10 = com.google.android.gms.internal.play_billing.a.g(bundle, "BillingClient");
        e.a c10 = e.c();
        c10.c(a10);
        c10.b(g10);
        e a11 = c10.a();
        if (a10 != 0) {
            com.google.android.gms.internal.play_billing.a.j("BillingClient", String.format("%s failed. Response code: %s", str2, Integer.valueOf(a10)));
            return a11;
        } else if (bundle.containsKey("INAPP_PURCHASE_ITEM_LIST") && bundle.containsKey("INAPP_PURCHASE_DATA_LIST") && bundle.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
            ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
            ArrayList<String> stringArrayList3 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
            if (stringArrayList == null) {
                com.google.android.gms.internal.play_billing.a.j("BillingClient", String.format("Bundle returned from %s contains null SKUs list.", str2));
                return eVar;
            } else if (stringArrayList2 == null) {
                com.google.android.gms.internal.play_billing.a.j("BillingClient", String.format("Bundle returned from %s contains null purchases list.", str2));
                return eVar;
            } else if (stringArrayList3 == null) {
                com.google.android.gms.internal.play_billing.a.j("BillingClient", String.format("Bundle returned from %s contains null signatures list.", str2));
                return eVar;
            } else {
                return w.f4030p;
            }
        } else {
            com.google.android.gms.internal.play_billing.a.j("BillingClient", String.format("Bundle returned from %s doesn't contain required fields.", str2));
            return eVar;
        }
    }
}
