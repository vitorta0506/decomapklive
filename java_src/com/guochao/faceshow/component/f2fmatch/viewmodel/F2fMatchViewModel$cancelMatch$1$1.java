package com.guochao.faceshow.component.f2fmatch.viewmodel;

import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import com.tencent.thumbplayer.api.TPOptionalID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel$cancelMatch$1$1", f = "F2fMatchViewModel.kt", i = {2}, l = {TPOptionalID.OPTION_ID_BEFORE_BOOL_RELEASE_MEDIA_CODEC_WHEN_SET_SURFACE, 222, 227}, m = "invokeSuspend", n = {"$this$invokeSuspend_u24lambda_u2d1"}, s = {"L$1"})
/* loaded from: classes2.dex */
public final class F2fMatchViewModel$cancelMatch$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $callback;
    final /* synthetic */ int $state;
    final /* synthetic */ F2fMatchModel.F2fStartMatchResultModel $this_apply;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ F2fMatchViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F2fMatchViewModel$cancelMatch$1$1(F2fMatchViewModel f2fMatchViewModel, F2fMatchModel.F2fStartMatchResultModel f2fStartMatchResultModel, Function0<Unit> function0, int i9, Continuation<? super F2fMatchViewModel$cancelMatch$1$1> continuation) {
        super(2, continuation);
        this.this$0 = f2fMatchViewModel;
        this.$this_apply = f2fStartMatchResultModel;
        this.$callback = function0;
        this.$state = i9;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new F2fMatchViewModel$cancelMatch$1$1(this.this$0, this.$this_apply, this.$callback, this.$state, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((F2fMatchViewModel$cancelMatch$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0076  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.label
            r2 = 2
            r3 = 1
            r4 = 3
            if (r1 == 0) goto L31
            if (r1 == r3) goto L2d
            if (r1 == r2) goto L25
            if (r1 != r4) goto L1d
            java.lang.Object r0 = r5.L$1
            kotlin.jvm.functions.Function0 r0 = (kotlin.jvm.functions.Function0) r0
            java.lang.Object r1 = r5.L$0
            kotlin.jvm.functions.Function0 r1 = (kotlin.jvm.functions.Function0) r1
            kotlin.ResultKt.throwOnFailure(r6)
            goto L86
        L1d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L25:
            java.lang.Object r1 = r5.L$0
            java.lang.String r1 = (java.lang.String) r1
            kotlin.ResultKt.throwOnFailure(r6)
            goto L6c
        L2d:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L49
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel r6 = r5.this$0
            com.guochao.faceshow.component.f2fmatch.datasource.F2fMatchDataSource r6 = com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel.access$getF2fDataSource$p(r6)
            com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel$F2fStartMatchResultModel r1 = r5.$this_apply
            java.lang.String r1 = r1.getRequestId()
            r5.label = r3
            java.lang.Object r6 = r6.cancelMatch(r1, r5)
            if (r6 != r0) goto L49
            return r0
        L49:
            com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel r6 = r5.this$0
            com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel$F2fHeartBeatModel r6 = r6.getLastMatchUserInfo()
            if (r6 == 0) goto L6c
            java.lang.String r6 = r6.getRoomId()
            if (r6 == 0) goto L6c
            int r1 = r5.$state
            com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel r3 = r5.this$0
            if (r1 != r4) goto L6c
            com.guochao.faceshow.component.f2fmatch.datasource.F2fMatchDataSource r1 = com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel.access$getF2fDataSource$p(r3)
            r5.L$0 = r6
            r5.label = r2
            java.lang.Object r6 = r1.quitRoom(r6, r5)
            if (r6 != r0) goto L6c
            return r0
        L6c:
            com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel r6 = r5.this$0
            r1 = 0
            r6.setLastMatchUserInfo(r1)
            kotlin.jvm.functions.Function0<kotlin.Unit> r6 = r5.$callback
            if (r6 == 0) goto L89
            r1 = 300(0x12c, double:1.48E-321)
            r5.L$0 = r6
            r5.L$1 = r6
            r5.label = r4
            java.lang.Object r1 = kotlinx.coroutines.DelayKt.delay(r1, r5)
            if (r1 != r0) goto L85
            return r0
        L85:
            r0 = r6
        L86:
            r0.invoke()
        L89:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel$cancelMatch$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
