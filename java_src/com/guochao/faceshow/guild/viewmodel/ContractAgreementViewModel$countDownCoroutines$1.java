package com.guochao.faceshow.guild.viewmodel;

import com.huawei.hms.opendevice.i;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/flow/FlowCollector;", "", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.guild.viewmodel.ContractAgreementViewModel$countDownCoroutines$1", f = "ContractAgreementViewModel.kt", i = {0, 0, 1, 1}, l = {17, 18}, m = "invokeSuspend", n = {"$this$flow", i.TAG, "$this$flow", i.TAG}, s = {"L$0", "I$0", "L$0", "I$0"})
/* loaded from: classes4.dex */
final class ContractAgreementViewModel$countDownCoroutines$1 extends SuspendLambda implements Function2<FlowCollector<? super Integer>, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $total;
    int I$0;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContractAgreementViewModel$countDownCoroutines$1(int i9, Continuation<? super ContractAgreementViewModel$countDownCoroutines$1> continuation) {
        super(2, continuation);
        this.$total = i9;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ContractAgreementViewModel$countDownCoroutines$1 contractAgreementViewModel$countDownCoroutines$1 = new ContractAgreementViewModel$countDownCoroutines$1(this.$total, continuation);
        contractAgreementViewModel$countDownCoroutines$1.L$0 = obj;
        return contractAgreementViewModel$countDownCoroutines$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull FlowCollector<? super Integer> flowCollector, @Nullable Continuation<? super Unit> continuation) {
        return ((ContractAgreementViewModel$countDownCoroutines$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0059 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0057 -> B:18:0x005a). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L2e
            if (r1 == r3) goto L22
            if (r1 != r2) goto L1a
            int r1 = r7.I$0
            java.lang.Object r4 = r7.L$0
            kotlinx.coroutines.flow.FlowCollector r4 = (kotlinx.coroutines.flow.FlowCollector) r4
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r4
            r4 = r7
            goto L5a
        L1a:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L22:
            int r1 = r7.I$0
            java.lang.Object r4 = r7.L$0
            kotlinx.coroutines.flow.FlowCollector r4 = (kotlinx.coroutines.flow.FlowCollector) r4
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r4
            r4 = r7
            goto L4b
        L2e:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Object r8 = r7.L$0
            kotlinx.coroutines.flow.FlowCollector r8 = (kotlinx.coroutines.flow.FlowCollector) r8
            int r1 = r7.$total
            r4 = r7
        L38:
            if (r1 <= 0) goto L5d
            java.lang.Integer r5 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r1)
            r4.L$0 = r8
            r4.I$0 = r1
            r4.label = r3
            java.lang.Object r5 = r8.emit(r5, r4)
            if (r5 != r0) goto L4b
            return r0
        L4b:
            r5 = 1000(0x3e8, double:4.94E-321)
            r4.L$0 = r8
            r4.I$0 = r1
            r4.label = r2
            java.lang.Object r5 = kotlinx.coroutines.DelayKt.delay(r5, r4)
            if (r5 != r0) goto L5a
            return r0
        L5a:
            int r1 = r1 + (-1)
            goto L38
        L5d:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.guild.viewmodel.ContractAgreementViewModel$countDownCoroutines$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
