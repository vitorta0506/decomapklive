package com.appsflyer.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.facebook.internal.AttributionIdentifiers;
/* loaded from: classes.dex */
final class AFb1ySDK extends AFb1hSDK<String> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AFb1ySDK(Context context, AFc1ySDK aFc1ySDK) {
        super(context, aFc1ySDK, AttributionIdentifiers.ATTRIBUTION_ID_CONTENT_PROVIDER, "E3F9E1E0CF99D0E56A055BA65E241B3399F7CEA524326B0CDD6EC1327ED0FDC1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.appsflyer.internal.AFb1hSDK
    /* renamed from: AFInAppEventType */
    public String values() {
        Cursor cursor;
        Throwable th2;
        try {
            ContentResolver contentResolver = this.AFInAppEventType.getContentResolver();
            StringBuilder sb2 = new StringBuilder("content://");
            sb2.append(this.valueOf);
            cursor = contentResolver.query(Uri.parse(sb2.toString()), new String[]{"aid"}, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        String string = cursor.getString(cursor.getColumnIndex("aid"));
                        cursor.close();
                        return string;
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th2;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (Throwable th4) {
            cursor = null;
            th2 = th4;
        }
    }

    @Override // com.appsflyer.internal.AFb1hSDK
    @Nullable
    public final /* synthetic */ String AFKeystoreWrapper() {
        this.values.AFInAppEventType().execute(this.AFKeystoreWrapper);
        return (String) super.AFKeystoreWrapper();
    }

    @Nullable
    public final String valueOf() {
        this.values.AFInAppEventType().execute(this.AFKeystoreWrapper);
        return (String) super.AFKeystoreWrapper();
    }
}
