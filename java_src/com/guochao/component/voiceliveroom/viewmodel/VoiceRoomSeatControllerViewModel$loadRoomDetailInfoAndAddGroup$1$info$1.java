package com.guochao.component.voiceliveroom.viewmodel;

import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
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
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1$info$1", f = "VoiceRoomSeatControllerViewModel.kt", i = {}, l = {122}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1$info$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Response<VoiceRoomInfoModel>>, Object> {
    final /* synthetic */ String $roomId;
    int label;
    final /* synthetic */ VoiceRoomSeatControllerViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1$info$1(VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, String str, Continuation<? super VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1$info$1> continuation) {
        super(2, continuation);
        this.this$0 = voiceRoomSeatControllerViewModel;
        this.$roomId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1$info$1(this.this$0, this.$roomId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Response<VoiceRoomInfoModel>> continuation) {
        return ((VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1$info$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
            String str = this.$roomId;
            this.label = 1;
            obj = repository.enterVoiceRoom(str, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return obj;
    }
}
