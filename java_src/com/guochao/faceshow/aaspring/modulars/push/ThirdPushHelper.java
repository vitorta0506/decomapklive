package com.guochao.faceshow.aaspring.modulars.push;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import androidx.core.app.NotificationManagerCompat;
import b8.d;
import b8.e;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.facebook.internal.ServerProtocol;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.modulars.massage.ThirdPushTokenMgr;
import com.guochao.faceshow.aaspring.modulars.push.base.BasePushHelper;
import com.guochao.faceshow.aaspring.modulars.push.base.InAppNotificationUtils;
import com.guochao.faceshow.aaspring.modulars.push.fcm.FCMPushHelper;
import com.guochao.faceshow.aaspring.modulars.push.huawei.HuaweiPushHelper;
import com.guochao.faceshow.aaspring.modulars.push.messagehandler.CommonDisplayer;
import com.guochao.faceshow.aaspring.modulars.push.messagehandler.PushNotificationClickHandler;
import com.guochao.faceshow.aaspring.modulars.push.messagehandler.PushNotificationClickHandlerKt;
import com.guochao.faceshow.aaspring.modulars.push.messagehandler.PushNotificationDisplayer;
import com.guochao.faceshow.aaspring.modulars.push.messagehandler.PushNotificationDisplayerKt;
import com.guochao.faceshow.aaspring.modulars.push.xiaomi.XiaomiMsgReceiver;
import com.guochao.faceshow.aaspring.modulars.push.xiaomi.XiaomiPushHelper;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.PushNotificationUtils;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.MD5Utils;
import com.guochao.faceshow.utils.SystemUtil;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.xiaomi.mipush.sdk.j;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import o9.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001HB\t\b\u0002¢\u0006\u0004\bF\u0010GJ\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J&\u0010\n\u001a\u00020\t2\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\b\u001a\u00020\u0007H\u0007J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0003J2\u0010\u0013\u001a\u00020\t2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00102\b\b\u0001\u0010\u0012\u001a\u00020\u0004H\u0007J\u001a\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0007J\b\u0010\u0017\u001a\u00020\tH\u0007J\u0016\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0018H\u0003J4\u0010 \u001a\u00020\t2\b\u0010\u001b\u001a\u0004\u0018\u00010\u000b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u0007H\u0016J\u001c\u0010 \u001a\u00020\t2\b\u0010\u001b\u001a\u0004\u0018\u00010\u000b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010!\u001a\u00020\tH\u0016R\u0014\u0010\"\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010$\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010#R\u0014\u0010%\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b%\u0010#R\u0014\u0010&\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b&\u0010#R\u0014\u0010'\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b'\u0010#R\u0014\u0010(\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010#R\u0014\u0010)\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b)\u0010#R\u0014\u0010*\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b*\u0010#R$\u0010,\u001a\u0004\u0018\u00010+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R0\u00104\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u000103028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R0\u0010;\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010:028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u00105\u001a\u0004\b<\u00107\"\u0004\b=\u00109R\u0016\u0010>\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R$\u0010@\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010E¨\u0006I"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;", "Lb8/d$a;", "Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;", "checkPushHelper", "", "tokenType", JThirdPlatFormInterface.KEY_TOKEN, "", "forceRefresh", "", "setThirdPushToken", "Lcom/guochao/faceshow/bean/UserBean;", "currentUser", "uploadToken", "Landroid/content/Context;", "context", "", "map", "type", "onReceiveOnlineMessage", "Landroid/content/Intent;", CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, "checkWhereToGo", "init", "", "", "getConfig", "oldUser", "newUser", "refreshServerConfig", "setAlias", "refreshThirdToken", "onUserChanged", "onLogout", "TYPE_NONE", "Ljava/lang/String;", "TYPE_FCM", "TYPE_XIAOMI_CHINA", "TYPE_XIAOMI_INTERNATIONAL", "TYPE_HUAWEI", "TYPE_OPPO", "TYPE_VIVO", "TAG", "Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;", "lastToken", "Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;", "getLastToken", "()Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;", "setLastToken", "(Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;)V", "Landroidx/collection/ArrayMap;", "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationClickHandler;", "clickHandlers", "Landroidx/collection/ArrayMap;", "getClickHandlers", "()Landroidx/collection/ArrayMap;", "setClickHandlers", "(Landroidx/collection/ArrayMap;)V", "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;", "displayers", "getDisplayers", "setDisplayers", "logined", "Z", "pushHelper", "Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;", "getPushHelper", "()Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;", "setPushHelper", "(Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;)V", "<init>", "()V", "ThirdToken", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ThirdPushHelper implements d.a {
    @NotNull
    public static final ThirdPushHelper INSTANCE;
    @NotNull
    public static final String TAG = "ThirdPushHelper";
    @NotNull
    public static final String TYPE_FCM = "1";
    @NotNull
    public static final String TYPE_HUAWEI = "20";
    @NotNull
    public static final String TYPE_NONE = "0";
    @NotNull
    public static final String TYPE_OPPO = "30";
    @NotNull
    public static final String TYPE_VIVO = "40";
    @NotNull
    public static final String TYPE_XIAOMI_CHINA = "10";
    @NotNull
    public static final String TYPE_XIAOMI_INTERNATIONAL = "11";
    @NotNull
    private static ArrayMap<String, PushNotificationClickHandler> clickHandlers;
    @NotNull
    private static ArrayMap<String, PushNotificationDisplayer> displayers;
    @Nullable
    private static ThirdToken lastToken;
    private static boolean logined;
    @Nullable
    private static BasePushHelper pushHelper;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u001f\u0010\u000b\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper$ThirdToken;", "", "pushType", "", JThirdPlatFormInterface.KEY_TOKEN, "(Ljava/lang/String;Ljava/lang/String;)V", "getPushType", "()Ljava/lang/String;", "getToken", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class ThirdToken {
        @NotNull
        private final String pushType;
        @Nullable
        private final String token;

        public ThirdToken(@NotNull String pushType, @Nullable String str) {
            Intrinsics.checkNotNullParameter(pushType, "pushType");
            this.pushType = pushType;
            this.token = str;
        }

        public static /* synthetic */ ThirdToken copy$default(ThirdToken thirdToken, String str, String str2, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                str = thirdToken.pushType;
            }
            if ((i9 & 2) != 0) {
                str2 = thirdToken.token;
            }
            return thirdToken.copy(str, str2);
        }

        @NotNull
        public final String component1() {
            return this.pushType;
        }

        @Nullable
        public final String component2() {
            return this.token;
        }

        @NotNull
        public final ThirdToken copy(@NotNull String pushType, @Nullable String str) {
            Intrinsics.checkNotNullParameter(pushType, "pushType");
            return new ThirdToken(pushType, str);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof ThirdToken) {
                ThirdToken thirdToken = (ThirdToken) obj;
                return Intrinsics.areEqual(this.pushType, thirdToken.pushType) && Intrinsics.areEqual(this.token, thirdToken.token);
            }
            return false;
        }

        @NotNull
        public final String getPushType() {
            return this.pushType;
        }

        @Nullable
        public final String getToken() {
            return this.token;
        }

        public int hashCode() {
            int hashCode = this.pushType.hashCode() * 31;
            String str = this.token;
            return hashCode + (str == null ? 0 : str.hashCode());
        }

        @NotNull
        public String toString() {
            return "ThirdToken(pushType=" + this.pushType + ", token=" + this.token + ')';
        }
    }

    static {
        ThirdPushHelper thirdPushHelper = new ThirdPushHelper();
        INSTANCE = thirdPushHelper;
        clickHandlers = new ArrayMap<>();
        displayers = new ArrayMap<>();
        e.g().registerOnUserChangedListener(thirdPushHelper);
        PushNotificationClickHandlerKt.registerHandler(clickHandlers);
        PushNotificationDisplayerKt.registerDisplayer(displayers);
        pushHelper = thirdPushHelper.checkPushHelper();
    }

    private ThirdPushHelper() {
    }

    private final BasePushHelper checkPushHelper() {
        BasePushHelper huaweiPushHelper;
        if (j.c0(BaseApplication.getInstance())) {
            huaweiPushHelper = new XiaomiPushHelper(null, 1, null);
        } else if (HuaweiApiAvailability.getInstance().isHuaweiMobileServicesAvailable(BaseApplication.getInstance()) == 0) {
            huaweiPushHelper = new HuaweiPushHelper(null, 1, null);
        } else if (b.e()) {
            return new FCMPushHelper();
        } else {
            return null;
        }
        return huaweiPushHelper;
    }

    @JvmStatic
    public static final boolean checkWhereToGo(@NotNull Context context, @Nullable Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (intent == null) {
            return false;
        }
        Bundle bundleExtra = intent.getBundleExtra("ext");
        if (bundleExtra == null) {
            bundleExtra = intent.getExtras();
        }
        if (bundleExtra == null || !(bundleExtra.containsKey("type_id") || bundleExtra.containsKey("type"))) {
            return false;
        }
        String string = bundleExtra.getString("type_id");
        if (string == null && (string = bundleExtra.getString("type")) == null) {
            string = "";
        }
        String string2 = bundleExtra.getString("clickFrom");
        if (TextUtils.isEmpty(string2)) {
            string2 = "system_notification";
        }
        EventTrackingUtils eventTrackingUtils = EventTrackingUtils.getInstance();
        Bundle bundle = new Bundle();
        bundle.putString("click_type_id", string);
        bundle.putString("third_push_click_type", bundleExtra.getString("firm_type"));
        bundle.putString("show_from", string2);
        Unit unit = Unit.INSTANCE;
        eventTrackingUtils.track(EventTrackingUtils.THIRD_PUSH_RECEIVE_MESSAGE_CLICKED, bundle);
        PushNotificationClickHandler pushNotificationClickHandler = clickHandlers.get(string);
        if (pushNotificationClickHandler == null) {
            return false;
        }
        pushNotificationClickHandler.onNotificationClicked(context, bundleExtra);
        return true;
    }

    @JvmStatic
    private static final Map<String, Object> getConfig() {
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        arrayMap2.put("messagePriority", "0");
        arrayMap.put("fcmConfig", arrayMap2);
        ArrayMap arrayMap3 = new ArrayMap();
        arrayMap3.put("messagePriority", "1");
        arrayMap3.put("region", Integer.valueOf(XiaomiMsgReceiver.c()));
        arrayMap.put("miConfig", arrayMap3);
        ArrayMap arrayMap4 = new ArrayMap();
        arrayMap4.put("messagePriority", "1");
        arrayMap.put("huaweiConfig", arrayMap4);
        ArrayMap arrayMap5 = new ArrayMap();
        arrayMap5.put("notificationEnabled", NotificationManagerCompat.from(BaseApplication.getInstance()).areNotificationsEnabled() ? "1" : "0");
        arrayMap.put("defaultConfig", arrayMap5);
        return arrayMap;
    }

    @JvmStatic
    public static final void init() {
        BasePushHelper basePushHelper = pushHelper;
        if (basePushHelper != null) {
            basePushHelper.init$app_GooglePlayRelease();
        }
    }

    @JvmStatic
    public static final void onReceiveOnlineMessage(@Nullable Context context, @NotNull Map<String, String> map, @NotNull String type) {
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(type, "type");
        boolean areNotificationsEnabled = PushNotificationUtils.getManager$app_GooglePlayRelease().areNotificationsEnabled();
        EventTrackingUtils eventTrackingUtils = EventTrackingUtils.getInstance();
        Bundle bundle = new Bundle();
        bundle.putString("receive_type_id", map.get("type_id"));
        bundle.putString("third_push_type", type);
        bundle.putString("notificationEnable", areNotificationsEnabled ? ServerProtocol.DIALOG_RETURN_SCOPES_TRUE : " false");
        Unit unit = Unit.INSTANCE;
        eventTrackingUtils.track(EventTrackingUtils.THIRD_PUSH_RECEIVE_ONLINE_MESSAGE, bundle);
        map.put("is_online_message", "1");
        map.put("firm_type", type);
        if (!areNotificationsEnabled) {
            InAppNotificationUtils.INSTANCE.showInAppNotification(map);
            return;
        }
        PushNotificationDisplayer pushNotificationDisplayer = displayers.get(map.get("type_id"));
        if (pushNotificationDisplayer == null) {
            CommonDisplayer commonDisplayer = CommonDisplayer.INSTANCE;
            Intrinsics.checkNotNull(context);
            commonDisplayer.showNotification(context, new HashMap(map));
            return;
        }
        Intrinsics.checkNotNull(context);
        pushNotificationDisplayer.showNotification(context, new HashMap(map));
    }

    public static /* synthetic */ void onReceiveOnlineMessage$default(Context context, Map map, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            context = null;
        }
        onReceiveOnlineMessage(context, map, str);
    }

    @JvmStatic
    public static final void setThirdPushToken(@NotNull String tokenType, @Nullable String str, boolean z10) {
        Intrinsics.checkNotNullParameter(tokenType, "tokenType");
        LogUtils.i(TAG, "setThirdPushToken:  tokenType is " + tokenType + "   token is " + str + " force is " + z10);
        ThirdToken thirdToken = lastToken;
        if (thirdToken != null) {
            if (Intrinsics.areEqual(thirdToken != null ? thirdToken.getPushType() : null, tokenType)) {
                ThirdToken thirdToken2 = lastToken;
                if (Intrinsics.areEqual(thirdToken2 != null ? thirdToken2.getToken() : null, str)) {
                    return;
                }
            }
        }
        if (Intrinsics.areEqual(tokenType, "0")) {
            ThirdPushTokenMgr.c().f(false);
            ThirdPushTokenMgr.c().i(false);
            new PostRequest("tokens/user/third/bind/tokens?systoken=" + e.g().getToken()).y(JThirdPlatFormInterface.KEY_TOKEN, "").y("tokenType", "0").L();
            return;
        }
        lastToken = new ThirdToken(tokenType, str);
        UserBean c10 = e.g().c();
        Intrinsics.checkNotNullExpressionValue(c10, "getInstance().currentUser");
        uploadToken(c10);
    }

    public static /* synthetic */ void setThirdPushToken$default(String str, String str2, boolean z10, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            z10 = true;
        }
        setThirdPushToken(str, str2, z10);
    }

    @JvmStatic
    private static final void uploadToken(UserBean userBean) {
        String pushType;
        String str;
        String str2 = userBean.token;
        ThirdToken thirdToken = lastToken;
        if (TextUtils.isEmpty(thirdToken != null ? thirdToken.getPushType() : null)) {
            pushType = "0";
        } else {
            ThirdToken thirdToken2 = lastToken;
            pushType = thirdToken2 != null ? thirdToken2.getPushType() : null;
        }
        ThirdToken thirdToken3 = lastToken;
        String token = thirdToken3 != null ? thirdToken3.getToken() : null;
        if (TextUtils.isEmpty(str2) || !logined) {
            str = "api/information/fcm/device/bind";
        } else {
            str = "tokens/user/third/bind/tokens?systoken=" + str2;
        }
        PostRequest postRequest = new PostRequest(str);
        postRequest.y(JThirdPlatFormInterface.KEY_TOKEN, token == null ? "" : token);
        postRequest.y("tokenType", pushType);
        postRequest.y("configs", getConfig());
        if (TextUtils.isEmpty(str2) || !logined) {
            long currentTimeMillis = System.currentTimeMillis();
            postRequest.s("unixTime", String.valueOf(currentTimeMillis));
            postRequest.y("sign", MD5Utils.getMD5String("tokenType=" + pushType + "&token=" + token + "&deviceId=" + SystemUtil.getDeviceId() + "&unixTime=" + currentTimeMillis));
        }
        postRequest.L();
        if (token == null) {
            return;
        }
        if (Intrinsics.areEqual(pushType, "1")) {
            ThirdPushTokenMgr.c().h(BaseConfig.FCM_PUSH_BUZID, token);
        } else if (Intrinsics.areEqual(pushType, TYPE_XIAOMI_INTERNATIONAL)) {
            ThirdPushTokenMgr.c().h(XiaomiMsgReceiver.d(), token);
        } else if (Intrinsics.areEqual(pushType, TYPE_XIAOMI_CHINA)) {
            ThirdPushTokenMgr.c().h(BaseConfig.XM_CHINA_PUSH_BUZID, token);
        } else if (Intrinsics.areEqual(pushType, TYPE_HUAWEI)) {
            ThirdPushTokenMgr.c().h(BaseConfig.HW_PUSH_BUZID, token);
        }
        ThirdPushTokenMgr.c().g();
    }

    @NotNull
    public final ArrayMap<String, PushNotificationClickHandler> getClickHandlers() {
        return clickHandlers;
    }

    @NotNull
    public final ArrayMap<String, PushNotificationDisplayer> getDisplayers() {
        return displayers;
    }

    @Nullable
    public final ThirdToken getLastToken() {
        return lastToken;
    }

    @Nullable
    public final BasePushHelper getPushHelper() {
        return pushHelper;
    }

    @Override // b8.d.a
    public void onLogout() {
        logined = false;
        ThirdToken thirdToken = lastToken;
        if (thirdToken != null) {
            if (Intrinsics.areEqual(thirdToken != null ? thirdToken.getPushType() : null, TYPE_HUAWEI)) {
                lastToken = null;
            }
        }
    }

    @Override // b8.d.a
    public void onUserChanged(@Nullable UserBean userBean, @Nullable UserBean userBean2) {
    }

    @Override // b8.d.a
    public void onUserChanged(@Nullable UserBean userBean, @Nullable UserBean userBean2, boolean z10, boolean z11, boolean z12) {
        logined = true;
        if (z12) {
            ThirdToken thirdToken = lastToken;
            if (thirdToken != null) {
                if (!Intrinsics.areEqual("0", thirdToken != null ? thirdToken.getPushType() : null) && userBean2 != null) {
                    uploadToken(userBean2);
                    return;
                }
            }
            BasePushHelper basePushHelper = pushHelper;
            if (basePushHelper != null) {
                basePushHelper.checkToken();
            }
        }
    }

    public final void setClickHandlers(@NotNull ArrayMap<String, PushNotificationClickHandler> arrayMap) {
        Intrinsics.checkNotNullParameter(arrayMap, "<set-?>");
        clickHandlers = arrayMap;
    }

    public final void setDisplayers(@NotNull ArrayMap<String, PushNotificationDisplayer> arrayMap) {
        Intrinsics.checkNotNullParameter(arrayMap, "<set-?>");
        displayers = arrayMap;
    }

    public final void setLastToken(@Nullable ThirdToken thirdToken) {
        lastToken = thirdToken;
    }

    public final void setPushHelper(@Nullable BasePushHelper basePushHelper) {
        pushHelper = basePushHelper;
    }
}
