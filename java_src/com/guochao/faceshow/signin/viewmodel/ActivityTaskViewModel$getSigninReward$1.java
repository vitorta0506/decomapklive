package com.guochao.faceshow.signin.viewmodel;

import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.signin.bean.GrowTaskBean;
import com.guochao.faceshow.signin.bean.SigninResponse;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.signin.viewmodel.ActivityTaskViewModel$getSigninReward$1", f = "ActivityTaskViewModel.kt", i = {}, l = {53}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
final class ActivityTaskViewModel$getSigninReward$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ GrowTaskBean $itemData;
    int label;
    final /* synthetic */ ActivityTaskViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityTaskViewModel$getSigninReward$1(ActivityTaskViewModel activityTaskViewModel, GrowTaskBean growTaskBean, Continuation<? super ActivityTaskViewModel$getSigninReward$1> continuation) {
        super(2, continuation);
        this.this$0 = activityTaskViewModel;
        this.$itemData = growTaskBean;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ActivityTaskViewModel$getSigninReward$1(this.this$0, this.$itemData, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((ActivityTaskViewModel$getSigninReward$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Integer status;
        Integer status2;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        boolean z10 = true;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineDispatcher io2 = Dispatchers.getIO();
            ActivityTaskViewModel$getSigninReward$1$response$1 activityTaskViewModel$getSigninReward$1$response$1 = new ActivityTaskViewModel$getSigninReward$1$response$1(this.$itemData, null);
            this.label = 1;
            obj = BuildersKt.withContext(io2, activityTaskViewModel$getSigninReward$1$response$1, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        Response response = (Response) obj;
        SigninResponse signinResponse = (SigninResponse) response.getData();
        if ((signinResponse == null || (status2 = signinResponse.getStatus()) == null || status2.intValue() != 2) ? false : false) {
            this.this$0.getGetSigninReward().setValue(this.$itemData);
        }
        SigninResponse signinResponse2 = (SigninResponse) response.getData();
        if (signinResponse2 != null && (status = signinResponse2.getStatus()) != null) {
            status.intValue();
        }
        return Unit.INSTANCE;
    }
}
