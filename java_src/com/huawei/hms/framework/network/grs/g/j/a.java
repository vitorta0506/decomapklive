package com.huawei.hms.framework.network.grs.g.j;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.hms.framework.network.grs.GrsApp;
import com.huawei.hms.framework.network.grs.g.k.d;
import com.huawei.hms.framework.network.grs.h.c;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27410a = "a";

    /* renamed from: b  reason: collision with root package name */
    private static d f27411b;

    public static synchronized d a(Context context) {
        synchronized (a.class) {
            d dVar = f27411b;
            if (dVar != null) {
                return dVar;
            }
            String a10 = c.a(GrsApp.getInstance().getBrand(FileUtils.RES_PREFIX_STORAGE) + "grs_sdk_server_config.json", context);
            ArrayList arrayList = null;
            if (TextUtils.isEmpty(a10)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(a10).getJSONObject("grs_server");
                JSONArray jSONArray = jSONObject.getJSONArray("grs_base_url");
                if (jSONArray != null && jSONArray.length() > 0) {
                    arrayList = new ArrayList();
                    for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                        arrayList.add(jSONArray.get(i9).toString());
                    }
                }
                d dVar2 = new d();
                f27411b = dVar2;
                dVar2.a(arrayList);
                f27411b.b(jSONObject.getString("grs_query_endpoint_1.0"));
                f27411b.a(jSONObject.getString("grs_query_endpoint_2.0"));
                f27411b.a(jSONObject.getInt("grs_query_timeout"));
            } catch (JSONException e10) {
                Logger.w(f27410a, "getGrsServerBean catch JSONException: %s", StringUtils.anonymizeMessage(e10.getMessage()));
            }
            return f27411b;
        }
    }
}
