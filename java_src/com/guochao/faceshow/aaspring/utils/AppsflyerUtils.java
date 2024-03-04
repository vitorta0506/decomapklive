package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.os.Bundle;
import com.appsflyer.AppsFlyerConversionListener;
import com.appsflyer.AppsFlyerLib;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u001a\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016R&\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u00078\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\b\u0010\u0003¨\u0006\u0011"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/AppsflyerUtils;", "Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils$OnEventTrackListener;", "Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;", "()V", "list", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "getList$annotations", "init", "", "context", "Landroid/content/Context;", "onTrackEvent", "event", "bundle", "Landroid/os/Bundle;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AppsflyerUtils implements EventTrackingUtils.OnEventTrackListener, EventTrackingV2Utils.OnEventTrackListener {
    @NotNull
    public static final AppsflyerUtils INSTANCE = new AppsflyerUtils();
    @NotNull
    private static final ArrayList<String> list;

    static {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(EventTrackingUtils.SIGN_UP);
        list = arrayList;
    }

    private AppsflyerUtils() {
    }

    @JvmStatic
    private static /* synthetic */ void getList$annotations() {
    }

    @JvmStatic
    public static final void init(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            AppsFlyerLib.getInstance().init(Constants.AF_DEV_KEY, new AppsFlyerConversionListener() { // from class: com.guochao.faceshow.aaspring.utils.AppsflyerUtils$init$1
                @Override // com.appsflyer.AppsFlyerConversionListener
                public void onAppOpenAttribution(@Nullable Map<String, String> map) {
                }

                @Override // com.appsflyer.AppsFlyerConversionListener
                public void onAttributionFailure(@Nullable String str) {
                }

                @Override // com.appsflyer.AppsFlyerConversionListener
                public void onConversionDataFail(@Nullable String str) {
                }

                @Override // com.appsflyer.AppsFlyerConversionListener
                public void onConversionDataSuccess(@Nullable Map<String, Object> map) {
                }
            }, context);
            AppsFlyerLib.getInstance().start(context);
            EventTrackingUtils eventTrackingUtils = EventTrackingUtils.getInstance();
            AppsflyerUtils appsflyerUtils = INSTANCE;
            eventTrackingUtils.addListener(appsflyerUtils);
            EventTrackingV2Utils.INSTANCE.addListener(appsflyerUtils);
        } catch (Exception unused) {
        }
    }

    @Override // com.guochao.faceshow.aaspring.utils.EventTrackingUtils.OnEventTrackListener, com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils.OnEventTrackListener
    public void onTrackEvent(@NotNull String event, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (list.contains(event)) {
            AppsFlyerLib.getInstance().logEvent(BaseApplication.getInstance(), event, MapUtils.toMap2(bundle));
        }
    }
}
