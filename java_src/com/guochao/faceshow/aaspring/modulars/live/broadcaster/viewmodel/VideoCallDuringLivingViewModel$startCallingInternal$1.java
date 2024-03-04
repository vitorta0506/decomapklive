package com.guochao.faceshow.aaspring.modulars.live.broadcaster.viewmodel;

import android.os.Handler;
import androidx.lifecycle.MutableLiveData;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.live.watcher.model.CallingDuringLivingModel;
import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.live.broadcaster.viewmodel.VideoCallDuringLivingViewModel$startCallingInternal$1", f = "VideoCallDuringLivingViewModel.kt", i = {0}, l = {243}, m = "invokeSuspend", n = {"callModel"}, s = {"L$0"})
/* loaded from: classes3.dex */
public final class VideoCallDuringLivingViewModel$startCallingInternal$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ RoomItemData $roomItemData;
    final /* synthetic */ int $type;
    Object L$0;
    int label;
    final /* synthetic */ VideoCallDuringLivingViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoCallDuringLivingViewModel$startCallingInternal$1(VideoCallDuringLivingViewModel videoCallDuringLivingViewModel, RoomItemData roomItemData, int i9, Continuation<? super VideoCallDuringLivingViewModel$startCallingInternal$1> continuation) {
        super(2, continuation);
        this.this$0 = videoCallDuringLivingViewModel;
        this.$roomItemData = roomItemData;
        this.$type = i9;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new VideoCallDuringLivingViewModel$startCallingInternal$1(this.this$0, this.$roomItemData, this.$type, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((VideoCallDuringLivingViewModel$startCallingInternal$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Object dial;
        CallModel callModel;
        MutableLiveData mutableLiveData;
        Handler handler;
        Runnable runnable;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            this.this$0.isDialing = true;
            CallModel callModel2 = com.guochao.faceshow.aaspring.modulars.trtc.call.a.Q(this.$roomItemData, this.$type, true);
            VideoCallDuringLivingViewModel videoCallDuringLivingViewModel = this.this$0;
            int i10 = this.$type;
            RoomItemData roomItemData = this.$roomItemData;
            Intrinsics.checkNotNullExpressionValue(callModel2, "callModel");
            this.L$0 = callModel2;
            this.label = 1;
            dial = videoCallDuringLivingViewModel.dial(i10, roomItemData, callModel2, this);
            if (dial == coroutine_suspended) {
                return coroutine_suspended;
            }
            callModel = callModel2;
            obj = dial;
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
            callModel = (CallModel) this.L$0;
        }
        if (((Boolean) obj).booleanValue()) {
            mutableLiveData = this.this$0._lastCallingRoomItemData;
            mutableLiveData.setValue(new CallingDuringLivingModel.StartCallModel(this.$roomItemData, this.$type, callModel, 0L, 8, null));
            handler = this.this$0.handler;
            runnable = this.this$0.autoHangup;
            handler.postDelayed(runnable, 30000L);
        }
        this.this$0.isDialing = false;
        return Unit.INSTANCE;
    }
}
