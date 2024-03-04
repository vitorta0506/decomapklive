package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.appsflyer.deeplink.DeepLinkListener;
import com.appsflyer.internal.AFc1mSDK;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class AFa1uSDK {
    @VisibleForTesting
    public static Intent AFKeystoreWrapper;
    @VisibleForTesting
    private static AFa1uSDK afInfoLog;
    static final List<String> valueOf = new ArrayList();
    public static String[] values;
    public String AFInAppEventParameterName;
    public DeepLinkListener AFInAppEventType;
    public Map<String, String> afDebugLog;
    @Nullable
    public List<List<String>> afRDLog = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @VisibleForTesting
    public static Uri AFInAppEventParameterName(Intent intent) {
        if (intent == null || !"android.intent.action.VIEW".equals(intent.getAction())) {
            return null;
        }
        return intent.getData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void AFInAppEventType(Context context, Map<String, Object> map, Uri uri) {
        AFc1aSDK aFc1aSDK = new AFc1aSDK(context, map, uri, valueOf);
        AFa1aSDK.values().AFInAppEventParameterName(context);
        AFc1mSDK afErrorLog = AFa1aSDK.values().AFInAppEventType().afErrorLog();
        afErrorLog.valueOf.execute(new AFc1mSDK.AnonymousClass5(aFc1aSDK));
        AFKeystoreWrapper = null;
    }

    public static AFa1uSDK values() {
        if (afInfoLog == null) {
            afInfoLog = new AFa1uSDK();
        }
        return afInfoLog;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void values(Map<String, Object> map, Intent intent, Context context) {
        AFa1aSDK.values().AFInAppEventParameterName(context);
        AFc1ySDK AFInAppEventType = AFa1aSDK.values().AFInAppEventType();
        AFd1oSDK afRDLog = AFInAppEventType.afRDLog();
        if (!AFInAppEventType(intent, context, map) && this.AFInAppEventType != null && AFInAppEventType.valueOf().AFInAppEventType.AFInAppEventType("appsFlyerCount") == 0 && !afRDLog.AFKeystoreWrapper("ddl_sent")) {
            AFb1oSDK aFb1oSDK = new AFb1oSDK(context, AFInAppEventType);
            AFc1mSDK afErrorLog = AFInAppEventType.afErrorLog();
            afErrorLog.valueOf.execute(new AFc1mSDK.AnonymousClass5(new AFc1cSDK(aFb1oSDK)));
        }
        afRDLog.values("ddl_sent", true);
    }

    @Nullable
    private Uri AFInAppEventType(Object obj, Iterator<String> it) {
        while (obj != JSONObject.NULL) {
            if (!it.hasNext()) {
                Uri parse = Uri.parse(obj.toString());
                if (parse == null || parse.getScheme() == null || parse.getHost() == null) {
                    return null;
                }
                return parse;
            }
            try {
                obj = new JSONObject(obj.toString()).get(it.next());
            } catch (JSONException unused) {
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0076 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean AFInAppEventType(android.content.Intent r9, android.content.Context r10, java.util.Map<java.lang.String, java.lang.Object> r11) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1uSDK.AFInAppEventType(android.content.Intent, android.content.Context, java.util.Map):boolean");
    }
}
