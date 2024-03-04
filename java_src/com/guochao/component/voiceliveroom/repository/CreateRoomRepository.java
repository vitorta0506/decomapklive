package com.guochao.component.voiceliveroom.repository;

import com.guochao.component.voiceliveroom.model.VoiceRoomCreateRoomModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0006J\u001f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00042\u0006\u0010\t\u001a\u00020\nH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Lcom/guochao/component/voiceliveroom/repository/CreateRoomRepository;", "", "()V", "loadVoiceRoomInfo", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "saveOrUpdateVoiceRoomInfo", "", "createRoomModel", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;", "(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class CreateRoomRepository {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String URL_CREATE_VOICE_ROOM = "api/token/live/voice/room/saveOrUpdate";
    @NotNull
    private static final String URL_LOAD_VOICE_ROOM_INFO = "api/token/live/voice/room/info";

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/guochao/component/voiceliveroom/repository/CreateRoomRepository$Companion;", "", "()V", "URL_CREATE_VOICE_ROOM", "", "URL_LOAD_VOICE_ROOM_INFO", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Nullable
    public final Object loadVoiceRoomInfo(@NotNull Continuation<? super Response<VoiceRoomInfoModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new CreateRoomRepository$loadVoiceRoomInfo$2(null), continuation);
    }

    @Nullable
    public final Object saveOrUpdateVoiceRoomInfo(@NotNull VoiceRoomCreateRoomModel voiceRoomCreateRoomModel, @NotNull Continuation<? super Response<String>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new CreateRoomRepository$saveOrUpdateVoiceRoomInfo$2(voiceRoomCreateRoomModel, null), continuation);
    }
}
