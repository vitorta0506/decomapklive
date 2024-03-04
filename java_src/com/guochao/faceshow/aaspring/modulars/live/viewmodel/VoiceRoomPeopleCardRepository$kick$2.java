package com.guochao.faceshow.aaspring.modulars.live.viewmodel;

import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Requester;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.utils.Contants;
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
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.live.viewmodel.VoiceRoomPeopleCardRepository$kick$2", f = "VoiceRoomPeopleCardRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class VoiceRoomPeopleCardRepository$kick$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Response<Object>>, Object> {
    final /* synthetic */ String $id;
    final /* synthetic */ Integer $index;
    final /* synthetic */ String $roomId;
    final /* synthetic */ String $userId;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomPeopleCardRepository$kick$2(String str, Integer num, String str2, String str3, Continuation<? super VoiceRoomPeopleCardRepository$kick$2> continuation) {
        super(2, continuation);
        this.$id = str;
        this.$index = num;
        this.$roomId = str2;
        this.$userId = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new VoiceRoomPeopleCardRepository$kick$2(this.$id, this.$index, this.$roomId, this.$userId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Response<Object>> continuation) {
        return ((VoiceRoomPeopleCardRepository$kick$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Response fail;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            String str = this.$id;
            if (!(str == null || str.length() == 0) && this.$index != null) {
                GCRequest putBody = new GCRequest("api/token/live/voice/kick/kickOut").putBody("roomId", this.$roomId).putBody(Contants.USER_ID, this.$userId).putBody("id", this.$id).putBody("index", this.$index);
                try {
                    return Requester.INSTANCE.execute(putBody, putBody.buildRequestParams(), Object.class);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    fail = Response.Companion.fail(-1, null, e10.getMessage());
                    fail.setError(e10);
                }
            } else {
                GCRequest putBody2 = new GCRequest("api/token/live/voice/kick/kickOut").putBody("roomId", this.$roomId).putBody(Contants.USER_ID, this.$userId);
                try {
                    return Requester.INSTANCE.execute(putBody2, putBody2.buildRequestParams(), Object.class);
                } catch (Exception e11) {
                    e11.printStackTrace();
                    fail = Response.Companion.fail(-1, null, e11.getMessage());
                    fail.setError(e11);
                }
            }
            return fail;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
