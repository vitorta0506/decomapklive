package com.guochao.faceshow.aaspring.modulars.push.huawei;

import android.os.Bundle;
import android.text.TextUtils;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.modulars.push.huawei.HuaweiPushService;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.utils.HandlerGetter;
import com.huawei.hms.push.HmsMessageService;
import com.huawei.hms.push.RemoteMessage;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u001c\u0010\u0007\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u001c\u0010\u000b\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\f2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\r\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0002¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService;", "Lcom/huawei/hms/push/HmsMessageService;", "()V", "onMessageReceived", "", "p0", "Lcom/huawei/hms/push/RemoteMessage;", "onNewToken", "", "p1", "Landroid/os/Bundle;", "onTokenError", "Ljava/lang/Exception;", "parseMessage", "message", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HuaweiPushService extends HmsMessageService {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TAG = "HuaweiPushService";

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushService$Companion;", "", "()V", "TAG", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onMessageReceived$lambda-0  reason: not valid java name */
    public static final void m548onMessageReceived$lambda0(HuaweiPushService this$0, RemoteMessage remoteMessage) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.parseMessage(remoteMessage);
    }

    private final void parseMessage(RemoteMessage remoteMessage) {
        Map<String, String> dataOfMap = remoteMessage != null ? remoteMessage.getDataOfMap() : null;
        if (dataOfMap != null && dataOfMap.containsKey("type_id")) {
            ThirdPushHelper.onReceiveOnlineMessage(this, dataOfMap, ThirdPushHelper.TYPE_HUAWEI);
        }
    }

    @Override // com.huawei.hms.push.HmsMessageService
    public void onMessageReceived(@Nullable final RemoteMessage remoteMessage) {
        super.onMessageReceived(remoteMessage);
        HandlerGetter.runOnUIThread$default(new Runnable() { // from class: t9.c
            @Override // java.lang.Runnable
            public final void run() {
                HuaweiPushService.m548onMessageReceived$lambda0(HuaweiPushService.this, remoteMessage);
            }
        }, null, 2, null);
    }

    @Override // com.huawei.hms.push.HmsMessageService
    public void onNewToken(@Nullable String str, @Nullable Bundle bundle) {
        super.onNewToken(str, bundle);
        LogUtils.i(TAG, "Huawei push token 2 : " + str + " , " + bundle);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ThirdPushHelper.setThirdPushToken$default(ThirdPushHelper.TYPE_HUAWEI, str, false, 4, null);
    }

    @Override // com.huawei.hms.push.HmsMessageService
    public void onTokenError(@Nullable Exception exc, @Nullable Bundle bundle) {
        super.onTokenError(exc, bundle);
        LogUtils.i(TAG, "token error from huawei  " + exc + "  " + bundle);
    }
}
