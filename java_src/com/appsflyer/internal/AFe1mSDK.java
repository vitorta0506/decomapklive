package com.appsflyer.internal;

import android.content.Context;
import java.util.Map;
/* loaded from: classes.dex */
public final class AFe1mSDK extends AFe1oSDK {
    private final AFc1ySDK values;

    public AFe1mSDK(Runnable runnable, AFc1ySDK aFc1ySDK) {
        super("store", "huawei", runnable);
        this.values = aFc1ySDK;
    }

    @Override // com.appsflyer.internal.AFe1iSDK
    public final void AFKeystoreWrapper(Context context) {
        AFInAppEventParameterName(context, new AFb1hSDK<Map<String, Object>>(context, this.values, "com.huawei.appmarket.commondata", "FFE391E0EA186D0734ED601E4E70E3224B7309D48E2075BAC46D8C667EAE7212", "3BAF59A2E5331C30675FAB35FF5FFF0D116142D3D4664F1C3CB804068B40614F") { // from class: com.appsflyer.internal.AFe1mSDK.2
            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Code restructure failed: missing block: B:15:0x00f8, code lost:
                if (r2 != null) goto L18;
             */
            /* JADX WARN: Code restructure failed: missing block: B:21:0x010c, code lost:
                if (0 == 0) goto L15;
             */
            /* JADX WARN: Code restructure failed: missing block: B:22:0x010e, code lost:
                r2.close();
             */
            /* JADX WARN: Code restructure failed: missing block: B:23:0x0111, code lost:
                r11.AFInAppEventParameterName.valueOf();
             */
            /* JADX WARN: Code restructure failed: missing block: B:24:0x011a, code lost:
                return r11.AFInAppEventParameterName.AFInAppEventParameterName;
             */
            @Override // com.appsflyer.internal.AFb1hSDK
            /* renamed from: valueOf */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.util.Map<java.lang.String, java.lang.Object> values() {
                /*
                    Method dump skipped, instructions count: 289
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFe1mSDK.AnonymousClass2.values():java.util.Map");
            }
        });
    }
}
