package com.guochao.faceshow.aaspring.modulars.push.fcm;

import android.net.Uri;
import android.text.TextUtils;
import android.util.ArrayMap;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.modulars.push.fcm.FCMPushService;
import com.guochao.faceshow.utils.HandlerGetter;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006H\u0002¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/push/fcm/FCMPushService;", "Lcom/google/firebase/messaging/FirebaseMessagingService;", "()V", "onMessageReceived", "", "p0", "Lcom/google/firebase/messaging/RemoteMessage;", "onNewToken", "", "parseMessage", "message", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FCMPushService extends FirebaseMessagingService {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onMessageReceived$lambda-0  reason: not valid java name */
    public static final void m545onMessageReceived$lambda0(FCMPushService this$0, RemoteMessage p02) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(p02, "$p0");
        this$0.parseMessage(p02);
    }

    private final void parseMessage(RemoteMessage remoteMessage) {
        Uri c10;
        Map<String, String> I = remoteMessage.I();
        Intrinsics.checkNotNullExpressionValue(I, "message.data");
        if ((!I.isEmpty()) && I.containsKey("type_id")) {
            if (remoteMessage.K() != null) {
                try {
                    if (TextUtils.isEmpty(I.get("title"))) {
                        RemoteMessage.c K = remoteMessage.K();
                        Intrinsics.checkNotNull(K);
                        I.put("title", K.e());
                    }
                    if (TextUtils.isEmpty(I.get("content"))) {
                        RemoteMessage.c K2 = remoteMessage.K();
                        Intrinsics.checkNotNull(K2);
                        I.put("content", K2.a());
                    }
                    if (TextUtils.isEmpty(I.get(RemoteMessageConst.Notification.ICON))) {
                        RemoteMessage.c K3 = remoteMessage.K();
                        I.put(RemoteMessageConst.Notification.ICON, (K3 == null || (c10 = K3.c()) == null) ? null : c10.toString());
                    }
                } catch (Exception unused) {
                }
            }
            ThirdPushHelper.onReceiveOnlineMessage(this, I, "1");
        } else if (remoteMessage.K() != null) {
            RemoteMessage.c K4 = remoteMessage.K();
            Intrinsics.checkNotNull(K4);
            ArrayMap arrayMap = new ArrayMap();
            arrayMap.put("type_id", "fcm_foreground");
            arrayMap.put("title", K4.e());
            arrayMap.put("content", K4.a());
            arrayMap.put(RemoteMessageConst.Notification.ICON, K4.b());
            arrayMap.put("large_image", String.valueOf(K4.c()));
            ThirdPushHelper.onReceiveOnlineMessage(this, arrayMap, "1");
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(@NotNull final RemoteMessage p02) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        super.onMessageReceived(p02);
        HandlerGetter.runOnUIThread$default(new Runnable() { // from class: s9.b
            @Override // java.lang.Runnable
            public final void run() {
                FCMPushService.m545onMessageReceived$lambda0(FCMPushService.this, p02);
            }
        }, null, 2, null);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(@NotNull String p02) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        super.onNewToken(p02);
        ThirdPushHelper.setThirdPushToken$default("1", p02, false, 4, null);
    }
}
