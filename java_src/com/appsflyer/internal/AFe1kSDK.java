package com.appsflyer.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageItemInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.RequiresApi;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.AFe1iSDK;
import com.huawei.hms.adapter.internal.CommonCode;
/* loaded from: classes.dex */
public final class AFe1kSDK extends AFe1iSDK {
    private final AFc1ySDK afInfoLog;
    final ProviderInfo values;

    @RequiresApi(api = 19)
    public AFe1kSDK(ProviderInfo providerInfo, Runnable runnable, AFc1ySDK aFc1ySDK) {
        super("af_referrer", providerInfo.authority, runnable);
        this.afInfoLog = aFc1ySDK;
        this.values = providerInfo;
    }

    @Override // com.appsflyer.internal.AFe1iSDK
    public final void AFKeystoreWrapper(final Context context) {
        this.afInfoLog.AFInAppEventType().execute(new Runnable() { // from class: com.appsflyer.internal.AFe1kSDK.2
            @Override // java.lang.Runnable
            public final void run() {
                AFe1kSDK aFe1kSDK = AFe1kSDK.this;
                aFe1kSDK.AFLogger = System.currentTimeMillis();
                aFe1kSDK.AFKeystoreWrapper = AFe1iSDK.AFa1xSDK.STARTED;
                aFe1kSDK.addObserver(new AFe1iSDK.AnonymousClass5());
                StringBuilder sb2 = new StringBuilder("content://");
                sb2.append(AFe1kSDK.this.values.authority);
                sb2.append("/transaction_id");
                Uri parse = Uri.parse(sb2.toString());
                ContentResolver contentResolver = context.getContentResolver();
                StringBuilder sb3 = new StringBuilder("app_id=");
                sb3.append(context.getPackageName());
                Cursor query = contentResolver.query(parse, null, sb3.toString(), null, null);
                if (query != null) {
                    int columnIndex = query.getColumnIndex(CommonCode.MapKey.TRANSACTION_ID);
                    if (columnIndex == -1) {
                        AFLogger.afWarnLog("[Preinstall]: Wrong column name");
                        AFe1kSDK.this.AFInAppEventParameterName.put("response", "FEATURE_NOT_SUPPORTED");
                    } else {
                        AFe1kSDK.this.AFInAppEventParameterName.put("response", "OK");
                        if (query.moveToFirst()) {
                            String string = query.getString(columnIndex);
                            query.close();
                            if (string != null && !string.isEmpty()) {
                                AFe1kSDK.this.AFInAppEventParameterName.put("referrer", string);
                            }
                        }
                    }
                } else {
                    AFLogger.afWarnLog("[Preinstall]: ContentProvider query failed, got null Cursor");
                    AFe1kSDK.this.AFInAppEventParameterName.put("response", "SERVICE_UNAVAILABLE");
                }
                AFe1kSDK aFe1kSDK2 = AFe1kSDK.this;
                aFe1kSDK2.AFInAppEventParameterName.put("api_ver", Long.valueOf(AFb1wSDK.AFInAppEventType(context, ((PackageItemInfo) aFe1kSDK2.values).packageName)));
                AFe1kSDK aFe1kSDK3 = AFe1kSDK.this;
                aFe1kSDK3.AFInAppEventParameterName.put("api_ver_name", AFb1wSDK.AFInAppEventParameterName(context, ((PackageItemInfo) aFe1kSDK3.values).packageName));
                AFe1kSDK.this.valueOf();
            }
        });
    }
}
