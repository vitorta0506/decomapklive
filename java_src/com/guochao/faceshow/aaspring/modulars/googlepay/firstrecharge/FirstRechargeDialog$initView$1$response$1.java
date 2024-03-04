package com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge;

import com.appsflyer.AppsFlyerProperties;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.FirstRechargeBean;
import java.lang.reflect.Type;
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
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeDialog$initView$1$response$1", f = "FirstRechargeDialog.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class FirstRechargeDialog$initView$1$response$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Response<FirstRechargeBean>>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirstRechargeDialog$initView$1$response$1(Continuation<? super FirstRechargeDialog$initView$1$response$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new FirstRechargeDialog$initView$1$response$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Response<FirstRechargeBean>> continuation) {
        return ((FirstRechargeDialog$initView$1$response$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            GCRequest putBody = new GCRequest("api/token/promotion/firstpay/list").putBody(AppsFlyerProperties.CURRENCY_CODE, "");
            Type type = new TypeToken<FirstRechargeBean>() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeDialog$initView$1$response$1.1
            }.getType();
            Intrinsics.checkNotNullExpressionValue(type, "object : TypeToken<FirstRechargeBean>() {}.type");
            return putBody.execute(type);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
