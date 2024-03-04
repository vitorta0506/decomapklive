package cn.jpush.android.support;

import android.content.Context;
import android.text.TextUtils;
import cn.jpush.android.api.BasicPushNotificationBuilder;
import cn.jpush.android.api.MultiActionsNotificationBuilder;
import cn.jpush.android.api.NotificationMessage;
import cn.jpush.android.api.PushNotificationBuilder;
import cn.jpush.android.cache.a;
import cn.jpush.android.helper.Logger;
/* loaded from: classes.dex */
public class JPushSupport {

    /* renamed from: a  reason: collision with root package name */
    private static final Integer f3267a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f3268b = 0;

    public static PushNotificationBuilder getNotificationBuilder(Context context, NotificationMessage notificationMessage) {
        try {
            int i9 = notificationMessage.notificationBuilderId;
            if (i9 < 1) {
                i9 = f3267a.intValue();
            }
            String d10 = a.d(context, i9 + "");
            if (TextUtils.isEmpty(d10)) {
                Logger.d("JPushSupport", "not found custom notification");
                return null;
            }
            Logger.ii("JPushSupport", "get customBuilder:" + d10);
            if (!d10.startsWith("basic") && !d10.startsWith("custom")) {
                return MultiActionsNotificationBuilder.parseFromPreference(context, d10);
            }
            return BasicPushNotificationBuilder.parseFromPreference(context, d10);
        } catch (Throwable th2) {
            Logger.ww("JPushSupport", "getNotification failed:" + th2.getMessage());
            return null;
        }
    }
}
