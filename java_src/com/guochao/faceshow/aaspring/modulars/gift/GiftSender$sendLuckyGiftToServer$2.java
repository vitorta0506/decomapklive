package com.guochao.faceshow.aaspring.modulars.gift;

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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.gift.GiftSender$sendLuckyGiftToServer$2", f = "GiftSender.kt", i = {}, l = {390}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class GiftSender$sendLuckyGiftToServer$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Response<SendGiftResponseModel>>, Object> {
    final /* synthetic */ GCRequest $request;
    Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GiftSender$sendLuckyGiftToServer$2(GCRequest gCRequest, Continuation<? super GiftSender$sendLuckyGiftToServer$2> continuation) {
        super(2, continuation);
        this.$request = gCRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new GiftSender$sendLuckyGiftToServer$2(this.$request, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Response<SendGiftResponseModel>> continuation) {
        return ((GiftSender$sendLuckyGiftToServer$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Response response;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 != 0) {
            if (i9 == 1) {
                Response response2 = (Response) this.L$0;
                ResultKt.throwOnFailure(obj);
                return response2;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        GCRequest gCRequest = this.$request;
        try {
            response = Requester.INSTANCE.execute(gCRequest, gCRequest.buildRequestParams(), SendGiftResponseModel.class);
        } catch (Exception e10) {
            e10.printStackTrace();
            Response fail = Response.Companion.fail(-1, null, e10.getMessage());
            fail.setError(e10);
            response = fail;
        }
        GCRequest gCRequest2 = this.$request;
        MainCoroutineDispatcher main = Dispatchers.getMain();
        GiftSender$sendLuckyGiftToServer$2$1$1 giftSender$sendLuckyGiftToServer$2$1$1 = new GiftSender$sendLuckyGiftToServer$2$1$1(gCRequest2, null);
        this.L$0 = response;
        this.label = 1;
        return BuildersKt.withContext(main, giftSender$sendLuckyGiftToServer$2$1$1, this) == coroutine_suspended ? coroutine_suspended : response;
    }
}
