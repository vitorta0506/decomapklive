package com.guochao.faceshow.aaspring.modulars.googlepay;

import android.app.Activity;
import com.android.billingclient.api.Purchase;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.modulars.googlepay.model.GoogleSubscribeRequestModel;
import com.tencent.thumbplayer.core.common.TPCodecParamers;
import java.util.List;
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
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel$checkHistorySubscribe$1", f = "GooglePayOrderViewModel.kt", i = {1}, l = {193, TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_LOSSLESS, 198}, m = "invokeSuspend", n = {"request"}, s = {"L$2"})
/* loaded from: classes3.dex */
public final class GooglePayOrderViewModel$checkHistorySubscribe$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<Purchase> $purchase;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ GooglePayOrderViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GooglePayOrderViewModel$checkHistorySubscribe$1(List<Purchase> list, GooglePayOrderViewModel googlePayOrderViewModel, Continuation<? super GooglePayOrderViewModel$checkHistorySubscribe$1> continuation) {
        super(2, continuation);
        this.$purchase = list;
        this.this$0 = googlePayOrderViewModel;
    }

    /* renamed from: invokeSuspend$lambda-1$lambda-0  reason: not valid java name */
    private static final void m413invokeSuspend$lambda1$lambda0(GoogleSubscribeRequestModel googleSubscribeRequestModel) {
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        Intrinsics.checkNotNull(currTopActivity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.activity.BaseActivity");
        ((BaseActivity) currTopActivity).alert("仅测试：订阅成功删除已保存的凭证orderId = " + googleSubscribeRequestModel.getGoogleOrderId());
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new GooglePayOrderViewModel$checkHistorySubscribe$1(this.$purchase, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((GooglePayOrderViewModel$checkHistorySubscribe$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00cc  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00ad -> B:30:0x00c2). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00bf -> B:30:0x00c2). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00c7 -> B:13:0x005e). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel$checkHistorySubscribe$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
