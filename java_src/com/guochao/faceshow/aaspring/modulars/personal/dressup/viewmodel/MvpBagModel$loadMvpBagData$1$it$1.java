package com.guochao.faceshow.aaspring.modulars.personal.dressup.viewmodel;

import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.MvpBagBean;
import java.lang.reflect.Type;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "", "Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.personal.dressup.viewmodel.MvpBagModel$loadMvpBagData$1$it$1", f = "MvpBagModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class MvpBagModel$loadMvpBagData$1$it$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Response<List<MvpBagBean>>>, Object> {
    int label;
    final /* synthetic */ MvpBagModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MvpBagModel$loadMvpBagData$1$it$1(MvpBagModel mvpBagModel, Continuation<? super MvpBagModel$loadMvpBagData$1$it$1> continuation) {
        super(2, continuation);
        this.this$0 = mvpBagModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new MvpBagModel$loadMvpBagData$1$it$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Response<List<MvpBagBean>>> continuation) {
        return ((MvpBagModel$loadMvpBagData$1$it$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            GCRequest putBody = new GCRequest("api/token/trade/mvp/getMyMvpBag").putBody("page", Boxing.boxInt(this.this$0.getCurrPage())).putBody("size", Boxing.boxInt(20));
            Type type = new TypeToken<List<MvpBagBean>>() { // from class: com.guochao.faceshow.aaspring.modulars.personal.dressup.viewmodel.MvpBagModel$loadMvpBagData$1$it$1.1
            }.getType();
            Intrinsics.checkNotNullExpressionValue(type, "object :\n               …st<MvpBagBean>>() {}.type");
            return putBody.execute(type);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
