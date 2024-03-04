package com.guochao.component.voiceliveroom.viewmodel;

import com.guochao.component.voiceliveroom.model.VoiceRoomMemberFeeConf;
import com.guochao.component.voiceliveroom.repository.VoiceRoomSeatControllerRepository;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallback;
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
@DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$getRoomFeeConf$1", f = "VoiceRoomSeatControllerViewModel.kt", i = {}, l = {654}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class VoiceRoomSeatControllerViewModel$getRoomFeeConf$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ GCValueCallback<VoiceRoomMemberFeeConf> $gcValueCallback;
    int label;
    final /* synthetic */ VoiceRoomSeatControllerViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomSeatControllerViewModel$getRoomFeeConf$1(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, GCValueCallback<VoiceRoomMemberFeeConf> gCValueCallback, Continuation<? super VoiceRoomSeatControllerViewModel$getRoomFeeConf$1> continuation) {
        super(2, continuation);
        this.this$0 = voiceRoomSeatControllerViewModel;
        this.$gcValueCallback = gCValueCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new VoiceRoomSeatControllerViewModel$getRoomFeeConf$1(this.this$0, this.$gcValueCallback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((VoiceRoomSeatControllerViewModel$getRoomFeeConf$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        GCValueCallback<VoiceRoomMemberFeeConf> gCValueCallback;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            VoiceRoomSeatControllerRepository repository = this.this$0.getRepository();
            this.label = 1;
            obj = repository.getRoomFeeConf(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        Response response = (Response) obj;
        if (response.isSuccessful()) {
            VoiceRoomMemberFeeConf voiceRoomMemberFeeConf = (VoiceRoomMemberFeeConf) response.getData();
            if (voiceRoomMemberFeeConf != null && (gCValueCallback = this.$gcValueCallback) != null) {
                gCValueCallback.onValue(voiceRoomMemberFeeConf);
            }
        } else {
            GCValueCallback<VoiceRoomMemberFeeConf> gCValueCallback2 = this.$gcValueCallback;
            if (gCValueCallback2 != null) {
                gCValueCallback2.onError(response.getCode(), response.getMsg());
            }
        }
        return Unit.INSTANCE;
    }
}
