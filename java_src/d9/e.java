package d9;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
/* loaded from: classes3.dex */
public interface e {

    /* loaded from: classes3.dex */
    public interface a<T> {
        void a(int i9, String str, @Nullable T t10);

        void onSuccess(@NonNull T t10);
    }

    @Deprecated
    LiveRoomModel getCurrentLiveRoom();

    void onAtSomebody(String str, String str2);

    void onLinkMicStatusChanged(boolean z10);

    void onLiveFinish(int i9, String str);

    void onNetworkLose(int i9);

    void onNetworkResume(int i9);

    void onPlayMusicAnim(String str, String str2, int i9);

    void onPlaySuccess();

    void onQuitLiveRoom(boolean z10, boolean z11);

    void onReceiveFaceGift(GiftLiveMessage giftLiveMessage);

    void onReceiveHugeGift(LiveMessageModel liveMessageModel);

    <T extends BaseLiveMessage> void onReceiveLiveMessage(LiveMessageModel<T> liveMessageModel);

    void onSelfMute(boolean z10);

    void onUserTypeChanged(int i9);

    <T extends BaseLiveMessage> void sendC2CLiveMessage(@NonNull String str, @NonNull LiveMessageModel<T> liveMessageModel, @Nullable a<Boolean> aVar);

    <T extends BaseLiveMessage> void sendLiveMessage(@NonNull LiveMessageModel<T> liveMessageModel, @Nullable a<Boolean> aVar);

    void sendLiveMessage(@NonNull String str, @Nullable a<Boolean> aVar);

    void sendLiveMessageCmd(@NonNull String str, @Nullable a<Boolean> aVar);
}
