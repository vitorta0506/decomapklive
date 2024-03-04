package com.guochao.component.voiceliveroom.viewmodel;

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
@DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.TRTCVoiceRoomSeatControllerViewModel$reportOnSeat$1", f = "TRTCVoiceRoomSeatControllerViewModel.kt", i = {}, l = {100}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class TRTCVoiceRoomSeatControllerViewModel$reportOnSeat$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ TRTCVoiceRoomSeatControllerViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TRTCVoiceRoomSeatControllerViewModel$reportOnSeat$1(TRTCVoiceRoomSeatControllerViewModel tRTCVoiceRoomSeatControllerViewModel, Continuation<? super TRTCVoiceRoomSeatControllerViewModel$reportOnSeat$1> continuation) {
        super(2, continuation);
        this.this$0 = tRTCVoiceRoomSeatControllerViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new TRTCVoiceRoomSeatControllerViewModel$reportOnSeat$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((TRTCVoiceRoomSeatControllerViewModel$reportOnSeat$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        boolean z10;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            z10 = this.this$0.reported;
            if (z10) {
                return Unit.INSTANCE;
            }
            this.this$0.reported = true;
            VoiceRoomSeatControllerRepository repository = this.this$0.getRepository();
            String lastRoomId = this.this$0.getLastRoomId();
            int lastSeatIndex = this.this$0.getLastSeatIndex();
            this.label = 1;
            obj = repository.reportOnSeat(lastRoomId, lastSeatIndex, true, this);
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
            Integer num = (Integer) response.getData();
            int intValue = num != null ? num.intValue() : -1;
            if (intValue != -1) {
                this.this$0.setVoiceId(intValue);
            }
        } else {
            this.this$0.reported = false;
        }
        return Unit.INSTANCE;
    }
}
