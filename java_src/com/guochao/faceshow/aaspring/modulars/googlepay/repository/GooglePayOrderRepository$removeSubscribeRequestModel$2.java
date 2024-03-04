package com.guochao.faceshow.aaspring.modulars.googlepay.repository;

import com.guochao.faceshow.aaspring.modulars.googlepay.database.GooglePayOrderRequestModelDatabase;
import com.guochao.faceshow.aaspring.modulars.googlepay.model.GoogleSubscribeRequestModel;
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
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.googlepay.repository.GooglePayOrderRepository$removeSubscribeRequestModel$2", f = "GooglePayOrderRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class GooglePayOrderRepository$removeSubscribeRequestModel$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ GoogleSubscribeRequestModel $model;
    int label;
    final /* synthetic */ GooglePayOrderRepository this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GooglePayOrderRepository$removeSubscribeRequestModel$2(GooglePayOrderRepository googlePayOrderRepository, GoogleSubscribeRequestModel googleSubscribeRequestModel, Continuation<? super GooglePayOrderRepository$removeSubscribeRequestModel$2> continuation) {
        super(2, continuation);
        this.this$0 = googlePayOrderRepository;
        this.$model = googleSubscribeRequestModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new GooglePayOrderRepository$removeSubscribeRequestModel$2(this.this$0, this.$model, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((GooglePayOrderRepository$removeSubscribeRequestModel$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        GooglePayOrderRequestModelDatabase googlePayOrderRequestModelDatabase;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            googlePayOrderRequestModelDatabase = this.this$0.googlePayOrderRequestModelDatabase;
            googlePayOrderRequestModelDatabase.getSubscribeDao().remove(this.$model);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
