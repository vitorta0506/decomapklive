package com.appsflyer.internal;

import android.content.Context;
import android.database.Cursor;
import java.util.Map;
/* loaded from: classes.dex */
public final class AFe1jSDK extends AFe1oSDK {
    private final AFc1ySDK values;

    public AFe1jSDK(Runnable runnable, AFc1ySDK aFc1ySDK) {
        super("store", "samsung", runnable);
        this.values = aFc1ySDK;
    }

    @Override // com.appsflyer.internal.AFe1iSDK
    public final void AFKeystoreWrapper(Context context) {
        AFInAppEventParameterName(context, new AFb1hSDK<Map<String, Object>>(context, this.values, "com.sec.android.app.samsungapps.referrer", "FBA3AF4E7757D9016E953FB3EE4671CA2BD9AF725F9A53D52ED4A38EAAA08901") { // from class: com.appsflyer.internal.AFe1jSDK.5
            private static void AFInAppEventType(String str, Map<String, Object> map, Cursor cursor) {
                String string;
                int columnIndex = cursor.getColumnIndex(str);
                if (columnIndex == -1 || (string = cursor.getString(columnIndex)) == null) {
                    return;
                }
                map.put(str, string);
            }

            private static void AFKeystoreWrapper(String str, Map<String, Object> map, Cursor cursor) {
                int columnIndex = cursor.getColumnIndex(str);
                if (columnIndex == -1) {
                    return;
                }
                long j10 = cursor.getLong(columnIndex);
                if (j10 == 0) {
                    return;
                }
                map.put(str, Long.valueOf(j10));
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Code restructure failed: missing block: B:17:0x00bd, code lost:
                if (r2 != null) goto L19;
             */
            /* JADX WARN: Code restructure failed: missing block: B:23:0x00d1, code lost:
                if (0 == 0) goto L16;
             */
            /* JADX WARN: Code restructure failed: missing block: B:24:0x00d3, code lost:
                r2.close();
             */
            /* JADX WARN: Code restructure failed: missing block: B:25:0x00d6, code lost:
                r0 = ((android.content.pm.PackageItemInfo) r10.AFInAppEventType.getPackageManager().resolveContentProvider(r10.valueOf, 128)).packageName;
                r10.AFInAppEventParameterName.AFInAppEventParameterName.put("api_ver", java.lang.Long.valueOf(com.appsflyer.internal.AFb1wSDK.AFInAppEventType(r10.AFInAppEventType, r0)));
                r10.AFInAppEventParameterName.AFInAppEventParameterName.put("api_ver_name", com.appsflyer.internal.AFb1wSDK.AFInAppEventParameterName(r10.AFInAppEventType, r0));
                r10.AFInAppEventParameterName.valueOf();
             */
            /* JADX WARN: Code restructure failed: missing block: B:26:0x0111, code lost:
                return r10.AFInAppEventParameterName.AFInAppEventParameterName;
             */
            @Override // com.appsflyer.internal.AFb1hSDK
            /* renamed from: valueOf */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.util.Map<java.lang.String, java.lang.Object> values() {
                /*
                    Method dump skipped, instructions count: 280
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFe1jSDK.AnonymousClass5.values():java.util.Map");
            }
        });
    }
}
