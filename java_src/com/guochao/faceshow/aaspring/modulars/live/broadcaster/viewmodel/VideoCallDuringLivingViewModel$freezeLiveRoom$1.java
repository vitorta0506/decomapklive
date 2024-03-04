package com.guochao.faceshow.aaspring.modulars.live.broadcaster.viewmodel;

import com.guochao.faceshow.aaspring.modulars.live.broadcaster.BroadCastFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.live.broadcaster.viewmodel.VideoCallDuringLivingViewModel$freezeLiveRoom$1", f = "VideoCallDuringLivingViewModel.kt", i = {}, l = {118}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class VideoCallDuringLivingViewModel$freezeLiveRoom$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ BroadCastFragment $fragment;
    int label;
    final /* synthetic */ VideoCallDuringLivingViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoCallDuringLivingViewModel$freezeLiveRoom$1(BroadCastFragment broadCastFragment, VideoCallDuringLivingViewModel videoCallDuringLivingViewModel, Continuation<? super VideoCallDuringLivingViewModel$freezeLiveRoom$1> continuation) {
        super(2, continuation);
        this.$fragment = broadCastFragment;
        this.this$0 = videoCallDuringLivingViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new VideoCallDuringLivingViewModel$freezeLiveRoom$1(this.$fragment, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((VideoCallDuringLivingViewModel$freezeLiveRoom$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Object suspendLiveRoom;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            this.$fragment.A2().freezePusher();
            LivePlayerProvider.player().freezeAllPlayers();
            VideoCallDuringLivingViewModel videoCallDuringLivingViewModel = this.this$0;
            String liveRoomId = this.$fragment.getCurrentLiveRoom().getLiveRoomId();
            this.label = 1;
            suspendLiveRoom = videoCallDuringLivingViewModel.suspendLiveRoom(liveRoomId, true, this);
            if (suspendLiveRoom == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
