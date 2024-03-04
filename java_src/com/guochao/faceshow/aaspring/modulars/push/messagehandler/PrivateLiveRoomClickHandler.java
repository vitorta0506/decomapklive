package com.guochao.faceshow.aaspring.modulars.push.messagehandler;

import android.content.Context;
import android.os.Bundle;
import com.guochao.faceshow.aaspring.manager.PrivateLiveInviteManager;
import com.guochao.faceshow.aaspring.modulars.live.share.InviteBridgeActivity;
import com.guochao.faceshow.aaspring.utils.MapUtils;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PrivateLiveRoomClickHandler;", "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationClickHandler;", "()V", "onNotificationClicked", "", "context", "Landroid/content/Context;", "bundle", "Landroid/os/Bundle;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PrivateLiveRoomClickHandler extends PushNotificationClickHandler {
    @NotNull
    public static final PrivateLiveRoomClickHandler INSTANCE = new PrivateLiveRoomClickHandler();

    private PrivateLiveRoomClickHandler() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.push.messagehandler.PushNotificationClickHandler
    public void onNotificationClicked(@NotNull Context context, @NotNull Bundle bundle) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        PrivateLiveInviteManager.InviteInfo b10 = PrivateLiveInviteManager.c().b(MapUtils.toJson(bundle));
        b10.from = 3;
        b10.privateType = "2";
        Unit unit = Unit.INSTANCE;
        context.startActivity(InviteBridgeActivity.b0(context, b10));
    }
}
