package com.guochao.faceshow.aaspring.modulars.googlepay;

import android.app.Activity;
import com.android.billingclient.api.Purchase;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.modulars.googlepay.model.GoogleSubscribeRequestModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel$subscribePayCertificate$3", f = "GooglePayOrderViewModel.kt", i = {0, 1}, l = {98, 108, 110}, m = "invokeSuspend", n = {"requestModel", "requestModel"}, s = {"L$0", "L$0"})
/* loaded from: classes3.dex */
public final class GooglePayOrderViewModel$subscribePayCertificate$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Runnable $faile;
    final /* synthetic */ Purchase $purchase;
    final /* synthetic */ Runnable $success;
    Object L$0;
    int label;
    final /* synthetic */ GooglePayOrderViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GooglePayOrderViewModel$subscribePayCertificate$3(Purchase purchase, GooglePayOrderViewModel googlePayOrderViewModel, Runnable runnable, Runnable runnable2, Continuation<? super GooglePayOrderViewModel$subscribePayCertificate$3> continuation) {
        super(2, continuation);
        this.$purchase = purchase;
        this.this$0 = googlePayOrderViewModel;
        this.$success = runnable;
        this.$faile = runnable2;
    }

    /* renamed from: invokeSuspend$lambda-0  reason: not valid java name */
    private static final void m414invokeSuspend$lambda0(GoogleSubscribeRequestModel googleSubscribeRequestModel) {
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        Intrinsics.checkNotNull(currTopActivity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.activity.BaseActivity");
        ((BaseActivity) currTopActivity).alert("仅测试：保存订阅凭证orderId = " + googleSubscribeRequestModel.getGoogleOrderId());
    }

    /* renamed from: invokeSuspend$lambda-1  reason: not valid java name */
    private static final void m415invokeSuspend$lambda1(GoogleSubscribeRequestModel googleSubscribeRequestModel) {
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        Intrinsics.checkNotNull(currTopActivity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.activity.BaseActivity");
        ((BaseActivity) currTopActivity).alert("仅测试：订阅成功删除凭证orderId = " + googleSubscribeRequestModel.getGoogleOrderId());
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new GooglePayOrderViewModel$subscribePayCertificate$3(this.$purchase, this.this$0, this.$success, this.$faile, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((GooglePayOrderViewModel$subscribePayCertificate$3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a9  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r15) {
        /*
            r14 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r14.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L2e
            if (r1 == r4) goto L26
            if (r1 == r3) goto L1e
            if (r1 != r2) goto L16
            kotlin.ResultKt.throwOnFailure(r15)
            goto La3
        L16:
            java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r15.<init>(r0)
            throw r15
        L1e:
            java.lang.Object r1 = r14.L$0
            com.guochao.faceshow.aaspring.modulars.googlepay.model.GoogleSubscribeRequestModel r1 = (com.guochao.faceshow.aaspring.modulars.googlepay.model.GoogleSubscribeRequestModel) r1
            kotlin.ResultKt.throwOnFailure(r15)
            goto L89
        L26:
            java.lang.Object r1 = r14.L$0
            com.guochao.faceshow.aaspring.modulars.googlepay.model.GoogleSubscribeRequestModel r1 = (com.guochao.faceshow.aaspring.modulars.googlepay.model.GoogleSubscribeRequestModel) r1
            kotlin.ResultKt.throwOnFailure(r15)
            goto L78
        L2e:
            kotlin.ResultKt.throwOnFailure(r15)
            com.guochao.faceshow.aaspring.modulars.googlepay.model.GoogleSubscribeRequestModel r15 = new com.guochao.faceshow.aaspring.modulars.googlepay.model.GoogleSubscribeRequestModel
            com.android.billingclient.api.Purchase r1 = r14.$purchase
            java.util.ArrayList r1 = r1.f()
            r5 = 0
            java.lang.Object r1 = r1.get(r5)
            java.lang.String r5 = "purchase.skus[0]"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r5)
            r6 = r1
            java.lang.String r6 = (java.lang.String) r6
            com.android.billingclient.api.Purchase r1 = r14.$purchase
            java.lang.String r7 = r1.a()
            java.lang.String r1 = "purchase.orderId"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r1)
            r8 = 0
            r9 = 0
            com.android.billingclient.api.Purchase r1 = r14.$purchase
            java.lang.String r10 = r1.d()
            java.lang.String r1 = "purchase.purchaseToken"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r1)
            r11 = 0
            r12 = 44
            r13 = 0
            r5 = r15
            r5.<init>(r6, r7, r8, r9, r10, r11, r12, r13)
            com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel r1 = r14.this$0
            com.guochao.faceshow.aaspring.modulars.googlepay.repository.GooglePayOrderRepository r1 = com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel.access$getRepository$p(r1)
            r14.L$0 = r15
            r14.label = r4
            java.lang.Object r1 = r1.saveSubscribeRequestModel(r15, r14)
            if (r1 != r0) goto L77
            return r0
        L77:
            r1 = r15
        L78:
            com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel r15 = r14.this$0
            com.guochao.faceshow.aaspring.modulars.googlepay.repository.GooglePayOrderRepository r15 = com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel.access$getRepository$p(r15)
            r14.L$0 = r1
            r14.label = r3
            java.lang.Object r15 = r15.subscribeCertificate(r1, r14)
            if (r15 != r0) goto L89
            return r0
        L89:
            com.guochao.faceshow.aaspring.base.http.v2.Response r15 = (com.guochao.faceshow.aaspring.base.http.v2.Response) r15
            boolean r15 = r15.isSuccessful()
            if (r15 == 0) goto La9
            com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel r15 = r14.this$0
            com.guochao.faceshow.aaspring.modulars.googlepay.repository.GooglePayOrderRepository r15 = com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel.access$getRepository$p(r15)
            r3 = 0
            r14.L$0 = r3
            r14.label = r2
            java.lang.Object r15 = r15.removeSubscribeRequestModel(r1, r14)
            if (r15 != r0) goto La3
            return r0
        La3:
            java.lang.Runnable r15 = r14.$success
            r15.run()
            goto Lae
        La9:
            java.lang.Runnable r15 = r14.$faile
            r15.run()
        Lae:
            kotlin.Unit r15 = kotlin.Unit.INSTANCE
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel$subscribePayCertificate$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
