package com.guochao.component.mvp.viewmodel;

import com.guochao.component.mvp.model.GetInterestsRequestModel;
import com.guochao.component.mvp.repository.MVPRepository;
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
@DebugMetadata(c = "com.guochao.component.mvp.viewmodel.MVPUserInfoViewModel$setFreeTime$1", f = "MVPUserInfoViewModel.kt", i = {}, l = {70, 71}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class MVPUserInfoViewModel$setFreeTime$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ GetInterestsRequestModel $bean;
    final /* synthetic */ Function2<Response<Integer>, Continuation<? super Unit>, Object> $call;
    int label;
    final /* synthetic */ MVPUserInfoViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MVPUserInfoViewModel$setFreeTime$1(MVPUserInfoViewModel mVPUserInfoViewModel, GetInterestsRequestModel getInterestsRequestModel, Function2<? super Response<Integer>, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super MVPUserInfoViewModel$setFreeTime$1> continuation) {
        super(2, continuation);
        this.this$0 = mVPUserInfoViewModel;
        this.$bean = getInterestsRequestModel;
        this.$call = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new MVPUserInfoViewModel$setFreeTime$1(this.this$0, this.$bean, this.$call, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((MVPUserInfoViewModel$setFreeTime$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        MVPRepository mVPRepository;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            mVPRepository = this.this$0.repository;
            GetInterestsRequestModel getInterestsRequestModel = this.$bean;
            this.label = 1;
            obj = mVPRepository.setFreeTime(getInterestsRequestModel, this);
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
