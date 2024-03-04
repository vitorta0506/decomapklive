package com.guochao.faceshow.aaspring.modulars.live.viewmodel;

import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.repository.BaseRepository;
import com.guochao.faceshow.aaspring.modulars.live.model.VoiceRoomPeopleInfoModel;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005¢\u0006\u0002\u0010\u0002J'\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\tJ'\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\tJ\u001f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\fJ\u001f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\fJ?\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0012J'\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\tJ'\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/viewmodel/VoiceRoomPeopleCardRepository;", "Lcom/guochao/faceshow/aaspring/base/mvvm/repository/BaseRepository;", "()V", "forbiddenTalk", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "", "roomId", "", Contants.USER_ID, "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "freeKick", "getKickList", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getforbiddenList", "kick", "id", "index", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadUserInfo", "Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;", "unforbiddenTalk", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomPeopleCardRepository extends BaseRepository {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String URL_FORBIDDEN_TALK = "api/token/live/voice/ban/forbidden";
    @NotNull
    public static final String URL_FREE_KICK_OUT = "api/token/live/voice/kick/freeKickOut";
    @NotNull
    private static final String URL_KICK_OUT = "api/token/live/voice/kick/kickOut";
    @NotNull
    public static final String URL_LIVE_BAN_LIST_VOICE_ROOM = "api/token/live/voice/ban/forbiddenList";
    @NotNull
    public static final String URL_LIVE_REMOVE_LIST_VOICE_ROOM = "api/token/live/voice/kick/kickList";
    @NotNull
    public static final String URL_UNFORBIDDEN_TALK = "api/token/live/voice/ban/freeForbidden";
    @NotNull
    public static final String URL_USER_INFO_DETAIL = "api/token/live/voice/member/fileCard";

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/viewmodel/VoiceRoomPeopleCardRepository$Companion;", "", "()V", "URL_FORBIDDEN_TALK", "", "URL_FREE_KICK_OUT", "URL_KICK_OUT", "URL_LIVE_BAN_LIST_VOICE_ROOM", "URL_LIVE_REMOVE_LIST_VOICE_ROOM", "URL_UNFORBIDDEN_TALK", "URL_USER_INFO_DETAIL", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Nullable
    public final Object forbiddenTalk(@NotNull String str, @NotNull String str2, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomPeopleCardRepository$forbiddenTalk$2(str, str2, null), continuation);
    }

    @Nullable
    public final Object freeKick(@NotNull String str, @NotNull String str2, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomPeopleCardRepository$freeKick$2(str, str2, null), continuation);
    }

    @Nullable
    public final Object getKickList(@NotNull String str, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomPeopleCardRepository$getKickList$2(str, null), continuation);
    }

    @Nullable
    public final Object getforbiddenList(@NotNull String str, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomPeopleCardRepository$getforbiddenList$2(str, null), continuation);
    }

    @Nullable
    public final Object kick(@NotNull String str, @NotNull String str2, @Nullable String str3, @Nullable Integer num, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomPeopleCardRepository$kick$2(str3, num, str, str2, null), continuation);
    }

    @Nullable
    public final Object loadUserInfo(@NotNull String str, @NotNull String str2, @NotNull Continuation<? super Response<VoiceRoomPeopleInfoModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomPeopleCardRepository$loadUserInfo$2(str, str2, null), continuation);
    }

    @Nullable
    public final Object unforbiddenTalk(@NotNull String str, @NotNull String str2, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomPeopleCardRepository$unforbiddenTalk$2(str, str2, null), continuation);
    }
}
