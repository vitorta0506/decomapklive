package com.guochao.component.voiceliveroom.repository;

import com.guochao.component.voiceliveroom.model.VoiceRoomCreateRoomModel;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Requester;
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
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.component.voiceliveroom.repository.CreateRoomRepository$saveOrUpdateVoiceRoomInfo$2", f = "CreateRoomRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class CreateRoomRepository$saveOrUpdateVoiceRoomInfo$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Response<String>>, Object> {
    final /* synthetic */ VoiceRoomCreateRoomModel $createRoomModel;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateRoomRepository$saveOrUpdateVoiceRoomInfo$2(VoiceRoomCreateRoomModel voiceRoomCreateRoomModel, Continuation<? super CreateRoomRepository$saveOrUpdateVoiceRoomInfo$2> continuation) {
        super(2, continuation);
        this.$createRoomModel = voiceRoomCreateRoomModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new CreateRoomRepository$saveOrUpdateVoiceRoomInfo$2(this.$createRoomModel, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Response<String>> continuation) {
        return ((CreateRoomRepository$saveOrUpdateVoiceRoomInfo$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            GCRequest putBodyModel$default = GCRequest.putBodyModel$default(new GCRequest("api/token/live/voice/room/saveOrUpdate"), this.$createRoomModel, false, 2, null);
            try {
                return Requester.INSTANCE.execute(putBodyModel$default, putBodyModel$default.buildRequestParams(), String.class);
            } catch (Exception e10) {
                e10.printStackTrace();
                Response fail = Response.Companion.fail(-1, null, e10.getMessage());
                fail.setError(e10);
                return fail;
            }
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
