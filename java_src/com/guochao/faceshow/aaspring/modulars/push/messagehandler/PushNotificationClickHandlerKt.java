package com.guochao.faceshow.aaspring.modulars.push.messagehandler;

import androidx.collection.ArrayMap;
import com.meizu.cloud.pushsdk.platform.message.BasicPushStatus;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003H\u0000¨\u0006\u0006"}, d2 = {"registerHandler", "", "map", "Landroidx/collection/ArrayMap;", "", "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationClickHandler;", "app_GooglePlayRelease"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PushNotificationClickHandlerKt {
    public static final void registerHandler(@NotNull ArrayMap<String, PushNotificationClickHandler> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        LiveRoomClickHandler liveRoomClickHandler = LiveRoomClickHandler.INSTANCE;
        map.put("12", liveRoomClickHandler);
        map.put("51", liveRoomClickHandler);
        map.put("230", liveRoomClickHandler);
        map.put("235", liveRoomClickHandler);
        map.put("241", MultiVoiceRoomClickHandler.INSTANCE);
        map.put("242", MultiLiveRoomClickHandler.INSTANCE);
        map.put("58", PrivateLiveRoomClickHandler.INSTANCE);
        map.put("10000", IMConversationClickHandler.INSTANCE);
        map.put("310", IMOneDayConversationClickHandler.INSTANCE);
        map.put("210", UrlClickHandler.INSTANCE);
        map.put(BasicPushStatus.SUCCESS_CODE, ShortVideoClickHandler.INSTANCE);
        map.put("220", PersonalHomeClickHandler.INSTANCE);
        map.put("321", HellStarGiftClickHandler.INSTANCE);
    }
}
