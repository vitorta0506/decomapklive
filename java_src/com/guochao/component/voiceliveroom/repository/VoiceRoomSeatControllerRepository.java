package com.guochao.component.voiceliveroom.repository;

import com.facebook.GraphResponse;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomMemberFeeConf;
import com.guochao.component.voiceliveroom.model.VoiceRoomSeatTokenModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomViewerListModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomVisitorListModel;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.repository.BaseRepository;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.Contants;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMManager;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 72\u00020\u0001:\u00017B\u0005¢\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\bJ\u001f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\n\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\bJ\u001f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\f\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\bJ7\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0010H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0013J\u001f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u00042\u0006\u0010\u0016\u001a\u00020\u0010H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J\u0017\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u0004H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u001aJ\u0019\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0010H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J\u0019\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0010H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J\u001f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J'\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010!J1\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u00072\b\b\u0002\u0010%\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010&J1\u0010'\u001a\b\u0012\u0004\u0012\u00020(0\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u00072\b\b\u0002\u0010%\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010&J'\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010!J7\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0010H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0013J/\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010,\u001a\u00020\u00072\u0006\u0010-\u001a\u00020.H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010/J7\u00100\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u000e\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u00101\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u00103J'\u00104\u001a\b\u0012\u0004\u0012\u0002050\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010!J'\u00106\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010!\u0082\u0002\u0004\n\u0002\b\u0019¨\u00068"}, d2 = {"Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;", "Lcom/guochao/faceshow/aaspring/base/mvvm/repository/BaseRepository;", "()V", "changeMicMode", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "", "microType", "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "changeRoomFee", "fee", "changeRoomPrivateMode", "mode", "closeMicro", "id", "roomId", "", "index", Contants.USER_ID, "(ILjava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "enterVoiceRoom", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;", "voiceRoomId", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getRoomFeeConf", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "joinIMGroup", "groupId", "leaveIMGroup", "leaveRoom", "leaveSeat", "seatPosition", "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadViewerList", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerListModel;", "page", "size", "(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadVisitorList", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;", "lockSeat", "openMicro", "reportOnSeat", "seatIndex", GraphResponse.SUCCESS_KEY, "", "(Ljava/lang/String;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "switchSeat", "from", "to", "(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "takeSeat", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;", "unLockSeat", "Companion", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomSeatControllerRepository extends BaseRepository {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String URL_CHANGE_MIC_MODE = "api/token/live/voice/room/changeRoomMicroType";
    @NotNull
    private static final String URL_CHANGE_PRIVATE_MODE = "api/token/live/voice/room/changeRoomNature";
    @NotNull
    private static final String URL_CHANGE_ROOM_FEE = "api/token/live/voice/room/changeRoomFee";
    @NotNull
    private static final String URL_CLOSE_MICRO = "api/token/live/voice/micro/closedWheat";
    @NotNull
    private static final String URL_ENTER_ROOM = "api/token/live/voice/room/enterRoom";
    @NotNull
    private static final String URL_GET_VOICE_ROOM_CONF = "api/token/live/voice/room/getVoiceRoomFeeConf";
    @NotNull
    private static final String URL_LEAVE_ROOM = "api/token/live/voice/room/leaveRoom";
    @NotNull
    private static final String URL_LEAVE_SEAT = "api/token/live/voice/micro/leave";
    @NotNull
    private static final String URL_LOAD_VIEWER_LIST = "api/token/live/voice/room/getViewList";
    @NotNull
    private static final String URL_LOAD_VISITOR_LIST = "api/token/live/voice/room/getVisitorList";
    @NotNull
    private static final String URL_LOCK_SEAT = "api/token/live/voice/micro/lockMicro";
    @NotNull
    private static final String URL_OPEN_MICRO = "api/token/live/voice/micro/unClosedWheat";
    @NotNull
    private static final String URL_REPORT_ON_SEAT = "api/token/live/voice/micro/enter";
    @NotNull
    private static final String URL_SWITCH_SEAT = "api/token/live/voice/micro/changeIndex";
    @NotNull
    private static final String URL_TAKE_SEAT = "api/token/live/voice/micro/preEnter";
    @NotNull
    private static final String URL_UNLOCK_SEAT = "api/token/live/voice/micro/unlockMicro";

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository$Companion;", "", "()V", "URL_CHANGE_MIC_MODE", "", "URL_CHANGE_PRIVATE_MODE", "URL_CHANGE_ROOM_FEE", "URL_CLOSE_MICRO", "URL_ENTER_ROOM", "URL_GET_VOICE_ROOM_CONF", "URL_LEAVE_ROOM", "URL_LEAVE_SEAT", "URL_LOAD_VIEWER_LIST", "URL_LOAD_VISITOR_LIST", "URL_LOCK_SEAT", "URL_OPEN_MICRO", "URL_REPORT_ON_SEAT", "URL_SWITCH_SEAT", "URL_TAKE_SEAT", "URL_UNLOCK_SEAT", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static /* synthetic */ Object loadViewerList$default(VoiceRoomSeatControllerRepository voiceRoomSeatControllerRepository, String str, int i9, int i10, Continuation continuation, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            i10 = 20;
        }
        return voiceRoomSeatControllerRepository.loadViewerList(str, i9, i10, continuation);
    }

    public static /* synthetic */ Object loadVisitorList$default(VoiceRoomSeatControllerRepository voiceRoomSeatControllerRepository, String str, int i9, int i10, Continuation continuation, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            i10 = 40;
        }
        return voiceRoomSeatControllerRepository.loadVisitorList(str, i9, i10, continuation);
    }

    @Nullable
    public final Object changeMicMode(int i9, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomSeatControllerRepository$changeMicMode$2(i9, null), continuation);
    }

    @Nullable
    public final Object changeRoomFee(int i9, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomSeatControllerRepository$changeRoomFee$2(i9, null), continuation);
    }

    @Nullable
    public final Object changeRoomPrivateMode(int i9, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomSeatControllerRepository$changeRoomPrivateMode$2(i9, null), continuation);
    }

    @Nullable
    public final Object closeMicro(int i9, @NotNull String str, int i10, @NotNull String str2, @NotNull Continuation<? super Response<Integer>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomSeatControllerRepository$closeMicro$2(i9, str, i10, str2, null), continuation);
    }

    @Nullable
    public final Object enterVoiceRoom(@NotNull String str, @NotNull Continuation<? super Response<VoiceRoomInfoModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomSeatControllerRepository$enterVoiceRoom$2(str, null), continuation);
    }

    @Nullable
    public final Object getRoomFeeConf(@NotNull Continuation<? super Response<VoiceRoomMemberFeeConf>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomSeatControllerRepository$getRoomFeeConf$2(null), continuation);
    }

    @Nullable
    public final Object joinIMGroup(@NotNull final String str, @NotNull Continuation<? super Integer> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final SafeContinuation safeContinuation = new SafeContinuation(intercepted);
        V2TIMManager.getInstance().joinGroup(str, "", new V2TIMCallback() { // from class: com.guochao.component.voiceliveroom.repository.VoiceRoomSeatControllerRepository$joinIMGroup$2$1
            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onError(int i9, @Nullable String str2) {
                ToastUtils.debug("进群失败：" + str + ',' + str2 + " p0");
                Continuation<Integer> continuation2 = safeContinuation;
                Result.Companion companion = Result.Companion;
                continuation2.resumeWith(Result.m1657constructorimpl(Integer.valueOf(i9)));
            }

            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onSuccess() {
                ToastUtils.debug("进群成功：" + str);
                Continuation<Integer> continuation2 = safeContinuation;
                Result.Companion companion = Result.Companion;
                continuation2.resumeWith(Result.m1657constructorimpl(1));
            }
        });
        Object orThrow = safeContinuation.getOrThrow();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (orThrow == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }

    @Nullable
    public final Object leaveIMGroup(@NotNull final String str, @NotNull Continuation<? super Integer> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final SafeContinuation safeContinuation = new SafeContinuation(intercepted);
        V2TIMManager.getInstance().quitGroup(str, new V2TIMCallback() { // from class: com.guochao.component.voiceliveroom.repository.VoiceRoomSeatControllerRepository$leaveIMGroup$2$1
            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onError(int i9, @Nullable String str2) {
                ToastUtils.debug("退群失败：" + str + ',' + str2 + " p0");
                Continuation<Integer> continuation2 = safeContinuation;
                Result.Companion companion = Result.Companion;
                continuation2.resumeWith(Result.m1657constructorimpl(Integer.valueOf(i9)));
            }

            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onSuccess() {
                ToastUtils.debug("退群成功：" + str);
                Continuation<Integer> continuation2 = safeContinuation;
                Result.Companion companion = Result.Companion;
                continuation2.resumeWith(Result.m1657constructorimpl(1));
            }
        });
        Object orThrow = safeContinuation.getOrThrow();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (orThrow == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }

    @Nullable
    public final Object leaveRoom(@NotNull String str, @NotNull Continuation<? super Response<Object>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomSeatControllerRepository$leaveRoom$2(str, null), continuation);
    }

    @Nullable
    public final Object leaveSeat(@NotNull String str, int i9, @NotNull Continuation<? super Response<Integer>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomSeatControllerRepository$leaveSeat$2(str, i9, null), continuation);
    }

    @Nullable
    public final Object loadViewerList(@NotNull String str, int i9, int i10, @NotNull Continuation<? super Response<VoiceRoomViewerListModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomSeatControllerRepository$loadViewerList$2(str, i9, i10, null), continuation);
    }

    @Nullable
    public final Object loadVisitorList(@NotNull String str, int i9, int i10, @NotNull Continuation<? super Response<VoiceRoomVisitorListModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomSeatControllerRepository$loadVisitorList$2(str, i9, i10, null), continuation);
    }

    @Nullable
    public final Object lockSeat(@NotNull String str, int i9, @NotNull Continuation<? super Response<Integer>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomSeatControllerRepository$lockSeat$2(str, i9, null), continuation);
    }

    @Nullable
    public final Object openMicro(int i9, @NotNull String str, int i10, @NotNull String str2, @NotNull Continuation<? super Response<Integer>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomSeatControllerRepository$openMicro$2(i9, str, i10, str2, null), continuation);
    }

    @Nullable
    public final Object reportOnSeat(@NotNull String str, int i9, boolean z10, @NotNull Continuation<? super Response<Integer>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomSeatControllerRepository$reportOnSeat$2(str, i9, z10, null), continuation);
    }

    @Nullable
    public final Object switchSeat(@NotNull String str, @NotNull String str2, int i9, int i10, @NotNull Continuation<? super Response<Integer>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomSeatControllerRepository$switchSeat$2(str2, i9, i10, str, null), continuation);
    }

    @Nullable
    public final Object takeSeat(@NotNull String str, int i9, @NotNull Continuation<? super Response<VoiceRoomSeatTokenModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomSeatControllerRepository$takeSeat$2(str, i9, null), continuation);
    }

    @Nullable
    public final Object unLockSeat(@NotNull String str, int i9, @NotNull Continuation<? super Response<Integer>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new VoiceRoomSeatControllerRepository$unLockSeat$2(str, i9, null), continuation);
    }
}
