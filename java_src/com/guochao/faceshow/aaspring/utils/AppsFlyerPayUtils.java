package com.guochao.faceshow.aaspring.utils;

import com.appsflyer.AFInAppEventParameterName;
import com.appsflyer.AFInAppEventType;
import com.appsflyer.AppsFlyerLib;
import com.guochao.faceshow.context.GCApplication;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0006¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/AppsFlyerPayUtils;", "", "()V", "trackEvent", "", "goodsId", "", InAppPurchaseMetaData.KEY_CURRENCY, "value", "", "orderId", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AppsFlyerPayUtils {
    @NotNull
    public static final AppsFlyerPayUtils INSTANCE = new AppsFlyerPayUtils();

    private AppsFlyerPayUtils() {
    }

    public final void trackEvent(@NotNull String goodsId, @NotNull String currency, double d10, @NotNull String orderId) {
        Intrinsics.checkNotNullParameter(goodsId, "goodsId");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        HashMap hashMap = new HashMap();
        hashMap.put(AFInAppEventParameterName.REVENUE, Double.valueOf(d10));
        hashMap.put(AFInAppEventParameterName.CURRENCY, currency);
        hashMap.put(AFInAppEventParameterName.QUANTITY, 1);
        hashMap.put(AFInAppEventParameterName.CONTENT_ID, goodsId);
        hashMap.put("af_order_id", orderId);
        hashMap.put(AFInAppEventParameterName.RECEIPT_ID, orderId);
        AppsFlyerLib.getInstance().logEvent(GCApplication.app(), AFInAppEventType.PURCHASE, hashMap);
    }
}
