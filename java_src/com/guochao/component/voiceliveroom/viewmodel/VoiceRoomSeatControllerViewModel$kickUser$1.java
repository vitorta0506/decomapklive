package com.guochao.component.voiceliveroom.viewmodel;

import com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel;
import com.guochao.component.voiceliveroom.repository.VoiceRoomSeatControllerRepository;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
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
@DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$kickUser$1", f = "VoiceRoomSeatControllerViewModel.kt", i = {}, l = {976, 977}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class VoiceRoomSeatControllerViewModel$kickUser$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<Response<Integer>, Continuation<? super Unit>, Object> $call;
    final /* synthetic */ VoiceRoomUserOnSeatModel $model;
    int label;
    final /* synthetic */ VoiceRoomSeatControllerViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public VoiceRoomSeatControllerViewModel$kickUser$1(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel, Function2<? super Response<Integer>, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super VoiceRoomSeatControllerViewModel$kickUser$1> continuation) {
        super(2, continuation);
        this.this$0 = voiceRoomSeatControllerViewModel;
        this.$model = voiceRoomUserOnSeatModel;
        this.$call = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new VoiceRoomSeatControllerViewModel$kickUser$1(this.this$0, this.$model, this.$call, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((VoiceRoomSeatControllerViewModel$kickUser$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            VoiceRoomSeatControllerRepository repository = this.this$0.getRepository();
            String lastRoomId = this.this$0.getLastRoomId();
            int seatIndex = this.$model.getSeatIndex();
            this.label = 1;
            obj = repository.leaveSeat(lastRoomId, seatIndex, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            if (i9 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        } else {
            ResultKt.throwOnFailure(obj);
        }
        Function2<Response<Integer>, Continuation<? super Unit>, Object> function2 = this.$call;
        this.label = 2;
        if (function2.mo1invoke((Response) obj, this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}
