package com.guochao.faceshow.aaspring.modulars.googlepay;

import com.guochao.faceshow.aaspring.modulars.googlepay.model.GooglePayOrderRequestModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel$googlePayCertificate$1", f = "GooglePayOrderViewModel.kt", i = {2}, l = {64, 70, 72}, m = "invokeSuspend", n = {"result"}, s = {"L$0"})
/* loaded from: classes3.dex */
public final class GooglePayOrderViewModel$googlePayCertificate$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ GooglePayOrderRequestModel $requestModel;
    Object L$0;
    int label;
    final /* synthetic */ GooglePayOrderViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GooglePayOrderViewModel$googlePayCertificate$1(GooglePayOrderViewModel googlePayOrderViewModel, GooglePayOrderRequestModel googlePayOrderRequestModel, Continuation<? super GooglePayOrderViewModel$googlePayCertificate$1> continuation) {
        super(2, continuation);
        this.this$0 = googlePayOrderViewModel;
        this.$requestModel = googlePayOrderRequestModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new GooglePayOrderViewModel$googlePayCertificate$1(this.this$0, this.$requestModel, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((GooglePayOrderViewModel$googlePayCertificate$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0091  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L2a
            if (r1 == r4) goto L26
            if (r1 == r3) goto L22
            if (r1 != r2) goto L1a
            java.lang.Object r0 = r6.L$0
            com.guochao.faceshow.aaspring.base.http.v2.Response r0 = (com.guochao.faceshow.aaspring.base.http.v2.Response) r0
            kotlin.ResultKt.throwOnFailure(r7)
            goto L6b
        L1a:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L22:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4f
        L26:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L3e
        L2a:
            kotlin.ResultKt.throwOnFailure(r7)
            com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel r7 = r6.this$0
            com.guochao.faceshow.aaspring.modulars.googlepay.repository.GooglePayOrderRepository r7 = com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel.access$getRepository$p(r7)
            com.guochao.faceshow.aaspring.modulars.googlepay.model.GooglePayOrderRequestModel r1 = r6.$requestModel
            r6.label = r4
            java.lang.Object r7 = r7.savePurchaseRequestModel(r1, r6)
            if (r7 != r0) goto L3e
            return r0
        L3e:
            com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel r7 = r6.this$0
            com.guochao.faceshow.aaspring.modulars.googlepay.repository.GooglePayOrderRepository r7 = com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel.access$getRepository$p(r7)
            com.guochao.faceshow.aaspring.modulars.googlepay.model.GooglePayOrderRequestModel r1 = r6.$requestModel
            r6.label = r3
            java.lang.Object r7 = r7.googlePayOrderCertificate(r1, r6)
            if (r7 != r0) goto L4f
            return r0
        L4f:
            com.guochao.faceshow.aaspring.base.http.v2.Response r7 = (com.guochao.faceshow.aaspring.base.http.v2.Response) r7
            boolean r1 = r7.isSuccessful()
            if (r1 == 0) goto L91
            com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel r1 = r6.this$0
            com.guochao.faceshow.aaspring.modulars.googlepay.repository.GooglePayOrderRepository r1 = com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel.access$getRepository$p(r1)
            com.guochao.faceshow.aaspring.modulars.googlepay.model.GooglePayOrderRequestModel r3 = r6.$requestModel
            r6.L$0 = r7
            r6.label = r2
            java.lang.Object r1 = r1.removeSaveModel(r3, r6)
            if (r1 != r0) goto L6a
            return r0
        L6a:
            r0 = r7
        L6b:
            com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel r7 = r6.this$0
            com.guochao.faceshow.aaspring.modulars.googlepay.model.GooglePayOrderRequestModel r1 = r6.$requestModel
            java.lang.Object r2 = r0.getData()
            java.lang.Integer r2 = (java.lang.Integer) r2
            com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel.access$loadEvent(r7, r1, r5, r2)
            p9.a r7 = p9.a.g()
            java.lang.Object r0 = r0.getData()
            java.lang.Integer r0 = (java.lang.Integer) r0
            if (r0 == 0) goto L88
            int r5 = r0.intValue()
        L88:
            r7.B(r5)
            com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.PayLoadingDialog$Companion r7 = com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.PayLoadingDialog.Companion
            r7.dismissDialog()
            goto La2
        L91:
            com.guochao.faceshow.context.GCApplication r7 = com.guochao.faceshow.context.GCApplication.app()
            r0 = 2131887056(0x7f1203d0, float:1.9408708E38)
            r1 = 4
            r2 = 0
            com.guochao.faceshow.aaspring.utils.ToastUtils.showToast$default(r7, r0, r5, r1, r2)
            com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.PayLoadingDialog$Companion r7 = com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.PayLoadingDialog.Companion
            r7.dismissDialog()
        La2:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel$googlePayCertificate$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
