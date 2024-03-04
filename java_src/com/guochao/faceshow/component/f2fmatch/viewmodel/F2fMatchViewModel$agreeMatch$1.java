package com.guochao.faceshow.component.f2fmatch.viewmodel;

import com.facebook.internal.FacebookRequestErrorClassification;
import com.guochao.faceshow.component.f2fmatch.datasource.F2fMatchDataSource;
import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
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
@DebugMetadata(c = "com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel$agreeMatch$1", f = "F2fMatchViewModel.kt", i = {}, l = {FacebookRequestErrorClassification.EC_INVALID_TOKEN}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes2.dex */
public final class F2fMatchViewModel$agreeMatch$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ F2fMatchModel.F2fHeartBeatModel $f2fHeartBeatModel;
    Object L$0;
    int label;
    final /* synthetic */ F2fMatchViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F2fMatchViewModel$agreeMatch$1(F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel, F2fMatchViewModel f2fMatchViewModel, Continuation<? super F2fMatchViewModel$agreeMatch$1> continuation) {
        super(2, continuation);
        this.$f2fHeartBeatModel = f2fHeartBeatModel;
        this.this$0 = f2fMatchViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new F2fMatchViewModel$agreeMatch$1(this.$f2fHeartBeatModel, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((F2fMatchViewModel$agreeMatch$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        F2fMatchDataSource f2fMatchDataSource;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            String roomId = this.$f2fHeartBeatModel.getRoomId();
            if (roomId != null) {
                f2fMatchDataSource = this.this$0.f2fDataSource;
                this.L$0 = roomId;
                this.label = 1;
                if (f2fMatchDataSource.agreeMatch(roomId, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            String str = (String) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
