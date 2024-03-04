package com.guochao.component.voiceliveroom.repository;

import com.guochao.component.voiceliveroom.model.VoiceRoomInviteListModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomMemberPagedModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomVisitorListModel;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0016\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005¢\u0006\u0002\u0010\u0002J7\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00060\bj\b\u0012\u0004\u0012\u00020\u0006`\tH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\nJ7\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0016\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u00060\bj\b\u0012\u0004\u0012\u00020\u0006`\tH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\nJ1\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0010H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0012J\u001f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0015J\u0017\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u0004H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0018J/\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00140\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0012J\u001f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0015J7\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0016\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u00060\bj\b\u0012\u0004\u0012\u00020\u0006`\tH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;", "", "()V", "adminAdd", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "roomId", "", "addUserIds", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "(Ljava/lang/String;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "adminRemove", "removeUserIds", "getVisitorList", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;", "page", "", "size", "(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getVoiceRoomAdminsList", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getVoiceRoomInviteList", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInviteListModel;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getVoiceRoomMemberList", "joinRoom", "", "memberRemove", "Companion", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public class VoiceRoomMemberRepository {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String URL_VOICE_ROOM_ADMIN_ADD = "api/token/live/voice/member/admin/add";
    @NotNull
    private static final String URL_VOICE_ROOM_ADMIN_LIST = "api/token/live/voice/member/manage/list";
    @NotNull
    public static final String URL_VOICE_ROOM_ADMIN_REMOVE = "api/token/live/voice/member/admin/remove";
    @NotNull
    public static final String URL_VOICE_ROOM_INVITE_ADD = "api/token/live/voice/invite/add";
    @NotNull
    public static final String URL_VOICE_ROOM_INVITE_LIST = "api/token/live/voice/invite/list";
    @NotNull
    private static final String URL_VOICE_ROOM_MEMBER_JOIN_ROOM = "api/token/live/voice/member/add";
    @NotNull
    private static final String URL_VOICE_ROOM_MEMBER_LIST = "api/token/live/voice/member/list";
    @NotNull
    private static final String URL_VOICE_ROOM_MEMBER_REMOVE = "api/token/live/voice/member/remove";

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository$Companion;", "", "()V", "URL_VOICE_ROOM_ADMIN_ADD", "", "URL_VOICE_ROOM_ADMIN_LIST", "URL_VOICE_ROOM_ADMIN_REMOVE", "URL_VOICE_ROOM_INVITE_ADD", "URL_VOICE_ROOM_INVITE_LIST", "URL_VOICE_ROOM_MEMBER_JOIN_ROOM", "URL_VOICE_ROOM_MEMBER_LIST", "URL_VOICE_ROOM_MEMBER_REMOVE", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static /* synthetic */ Object getVisitorList$default(VoiceRoomMemberRepository voiceRoomMemberRepository, String str, int i9, int i10, Continuation continuation, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 4) != 0) {
                i10 = 20;
            }
            return voiceRoomMemberRepository.getVisitorList(str, i9, i10, continuation);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getVisitorList");
    }

    @Nullable
    public final Object adminAdd(@NotNull String str, @NotNull ArrayList<String> arrayList, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomMemberRepository$adminAdd$2(str, arrayList, null), continuation);
    }

    @Nullable
    public final Object adminRemove(@NotNull String str, @NotNull ArrayList<String> arrayList, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomMemberRepository$adminRemove$2(str, arrayList, null), continuation);
    }

    @Nullable
    public final Object getVisitorList(@NotNull String str, int i9, int i10, @NotNull Continuation<? super Response<VoiceRoomVisitorListModel>> continuation) {
        return new VoiceRoomSeatControllerRepository().loadVisitorList(str, i9, i10, continuation);
    }

    @Nullable
    public final Object getVoiceRoomAdminsList(@NotNull String str, @NotNull Continuation<? super Response<VoiceRoomMemberPagedModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomMemberRepository$getVoiceRoomAdminsList$2(str, null), continuation);
    }

    @Nullable
    public final Object getVoiceRoomInviteList(@NotNull Continuation<? super Response<VoiceRoomInviteListModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomMemberRepository$getVoiceRoomInviteList$2(null), continuation);
    }

    @Nullable
    public final Object getVoiceRoomMemberList(@NotNull String str, int i9, int i10, @NotNull Continuation<? super Response<VoiceRoomMemberPagedModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomMemberRepository$getVoiceRoomMemberList$2(str, i9, i10, null), continuation);
    }

    @Nullable
    public final Object joinRoom(@NotNull String str, @NotNull Continuation<? super Response<Boolean>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomMemberRepository$joinRoom$2(str, null), continuation);
    }

    @Nullable
    public final Object memberRemove(@NotNull String str, @NotNull ArrayList<String> arrayList, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomMemberRepository$memberRemove$2(str, arrayList, null), continuation);
    }
}
