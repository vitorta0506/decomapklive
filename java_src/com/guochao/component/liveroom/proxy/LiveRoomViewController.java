package com.guochao.component.liveroom.proxy;

import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\tÀ\u0006\u0003"}, d2 = {"Lcom/guochao/component/liveroom/proxy/LiveRoomViewController;", "", "hideLoading", "", "fromLoading", "", "kickedFromVoiceRoom", DeviceRequestsHelper.DEVICE_INFO_MODEL, "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface LiveRoomViewController {
    void hideLoading(boolean z10);

    void kickedFromVoiceRoom(@NotNull VoiceRoomInfoModel voiceRoomInfoModel);
}
