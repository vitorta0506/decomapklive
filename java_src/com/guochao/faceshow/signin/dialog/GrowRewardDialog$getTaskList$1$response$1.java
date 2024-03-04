package com.guochao.faceshow.signin.dialog;

import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.signin.bean.GrowTaskBean;
import java.lang.reflect.Type;
import java.util.List;
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
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "", "Lcom/guochao/faceshow/signin/bean/GrowTaskBean;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.signin.dialog.GrowRewardDialog$getTaskList$1$response$1", f = "GrowRewardDialog.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
final class GrowRewardDialog$getTaskList$1$response$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Response<List<GrowTaskBean>>>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GrowRewardDialog$getTaskList$1$response$1(Continuation<? super GrowRewardDialog$getTaskList$1$response$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new GrowRewardDialog$getTaskList$1$response$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Response<List<GrowTaskBean>>> continuation) {
        return ((GrowRewardDialog$getTaskList$1$response$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            GCRequest gCRequest = new GCRequest("api/token/promotion/taskcenter/gifebagtask/querylistmes");
            Type type = new TypeToken<List<GrowTaskBean>>() { // from class: com.guochao.faceshow.signin.dialog.GrowRewardDialog$getTaskList$1$response$1$response$1
            }.getType();
            Intrinsics.checkNotNullExpressionValue(type, "object : TypeToken<Mutab…<GrowTaskBean>>() {}.type");
            return gCRequest.execute(type);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
