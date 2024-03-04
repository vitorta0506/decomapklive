package com.guochao.component.mvp.viewmodel;

import androidx.lifecycle.MutableLiveData;
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
@DebugMetadata(c = "com.guochao.component.mvp.viewmodel.MVPUserInfoViewModel$myMVPInfo$1", f = "MVPUserInfoViewModel.kt", i = {}, l = {51}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class MVPUserInfoViewModel$myMVPInfo$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ MVPUserInfoViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MVPUserInfoViewModel$myMVPInfo$1(MVPUserInfoViewModel mVPUserInfoViewModel, Continuation<? super MVPUserInfoViewModel$myMVPInfo$1> continuation) {
        super(2, continuation);
        this.this$0 = mVPUserInfoViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new MVPUserInfoViewModel$myMVPInfo$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((MVPUserInfoViewModel$myMVPInfo$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        MutableLiveData mutableLiveData;
        MVPRepository mVPRepository;
        MutableLiveData mutableLiveData2;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            mutableLiveData = this.this$0._myMVPInfo;
            mVPRepository = this.this$0.repository;
            this.L$0 = mutableLiveData;
            this.label = 1;
            Object myMVPInfo = mVPRepository.myMVPInfo(this);
            if (myMVPInfo == coroutine_suspended) {
                return coroutine_suspended;
            }
            mutableLiveData2 = mutableLiveData;
            obj = myMVPInfo;
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            mutableLiveData2 = (MutableLiveData) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        mutableLiveData2.setValue(((Response) obj).getData());
        return Unit.INSTANCE;
    }
}
