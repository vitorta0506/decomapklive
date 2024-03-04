package com.guochao.component.voiceliveroom.repository;

import com.guochao.component.voiceliveroom.model.VoiceRoomMyRoomListModel;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\bJ\u001f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository;", "Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;", "()V", "getMyVoiceRoomList", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;", "page", "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getVoiceRoomList", "Companion", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomListRepository extends VoiceRoomMemberRepository {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String URL_MY_ROOM_LIST = "api/token/live/voice/room/getMyRoomList";
    @NotNull
    private static final String URL_ROOM_LIST = "api/token/live/voice/room/getRoomList";

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/guochao/component/voiceliveroom/repository/VoiceRoomListRepository$Companion;", "", "()V", "URL_MY_ROOM_LIST", "", "URL_ROOM_LIST", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Nullable
    public final Object getMyVoiceRoomList(int i9, @NotNull Continuation<? super Response<VoiceRoomMyRoomListModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomListRepository$getMyVoiceRoomList$2(i9, null), continuation);
    }

    @Nullable
    public final Object getVoiceRoomList(int i9, @NotNull Continuation<? super Response<VoiceRoomMyRoomListModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomListRepository$getVoiceRoomList$2(i9, null), continuation);
    }
}
