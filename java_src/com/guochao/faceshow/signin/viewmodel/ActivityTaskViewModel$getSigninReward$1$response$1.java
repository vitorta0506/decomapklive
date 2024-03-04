package com.guochao.faceshow.signin.viewmodel;

import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.signin.bean.GrowTaskBean;
import com.guochao.faceshow.signin.bean.SigninResponse;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "Lcom/guochao/faceshow/signin/bean/SigninResponse;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.signin.viewmodel.ActivityTaskViewModel$getSigninReward$1$response$1", f = "ActivityTaskViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
final class ActivityTaskViewModel$getSigninReward$1$response$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Response<SigninResponse>>, Object> {
    final /* synthetic */ GrowTaskBean $itemData;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityTaskViewModel$getSigninReward$1$response$1(GrowTaskBean growTaskBean, Continuation<? super ActivityTaskViewModel$getSigninReward$1$response$1> continuation) {
        super(2, continuation);
        this.$itemData = growTaskBean;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ActivityTaskViewModel$getSigninReward$1$response$1(this.$itemData, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Response<SigninResponse>> continuation) {
        return ((ActivityTaskViewModel$getSigninReward$1$response$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            GCRequest gCRequest = new GCRequest("api/token/promotion/taskcenter/limittask/excuter");
            Integer taskId = this.$itemData.getTaskId();
            return gCRequest.putBody("taskId", Boxing.boxInt(taskId != null ? taskId.intValue() : 0)).execute(SigninResponse.class);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
