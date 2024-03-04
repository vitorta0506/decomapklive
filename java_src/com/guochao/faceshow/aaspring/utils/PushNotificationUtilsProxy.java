package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.utils.Foreground;
import com.guochao.lib_service_center.push.notification.IVoiceRoomNotification;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Route(path = RouterPath.ROUTER_VOICE_ROOM_INVITE)
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J \u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtilsProxy;", "Lcom/guochao/lib_service_center/push/notification/IVoiceRoomNotification;", "()V", "init", "", "context", "Landroid/content/Context;", "start", "roomId", "", "groupChatId", "nickName", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PushNotificationUtilsProxy implements IVoiceRoomNotification {
    @Override // com.alibaba.android.arouter.facade.template.IProvider
    public void init(@Nullable Context context) {
    }

    @Override // com.guochao.lib_service_center.push.notification.IVoiceRoomNotification
    public void start(@NotNull String roomId, @NotNull String groupChatId, @NotNull String nickName) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(groupChatId, "groupChatId");
        Intrinsics.checkNotNullParameter(nickName, "nickName");
        if (Foreground.get().isForeground()) {
            return;
        }
        PushNotificationUtils.INSTANCE.createVoiceRoomInviteNotification(roomId, groupChatId, nickName);
    }
}
