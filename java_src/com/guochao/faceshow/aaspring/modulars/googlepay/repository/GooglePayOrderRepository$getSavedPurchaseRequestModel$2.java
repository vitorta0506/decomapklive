package com.guochao.faceshow.aaspring.modulars.googlepay.repository;

import com.guochao.faceshow.aaspring.modulars.googlepay.database.GooglePayOrderRequestModelDatabase;
import com.guochao.faceshow.aaspring.modulars.googlepay.model.GooglePayOrderRequestModel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.googlepay.repository.GooglePayOrderRepository$getSavedPurchaseRequestModel$2", f = "GooglePayOrderRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class GooglePayOrderRepository$getSavedPurchaseRequestModel$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<GooglePayOrderRequestModel>>, Object> {
    final /* synthetic */ String $userId;
    int label;
    final /* synthetic */ GooglePayOrderRepository this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GooglePayOrderRepository$getSavedPurchaseRequestModel$2(GooglePayOrderRepository googlePayOrderRepository, String str, Continuation<? super GooglePayOrderRepository$getSavedPurchaseRequestModel$2> continuation) {
        super(2, continuation);
        this.this$0 = googlePayOrderRepository;
        this.$userId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new GooglePayOrderRepository$getSavedPurchaseRequestModel$2(this.this$0, this.$userId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super List<GooglePayOrderRequestModel>> continuation) {
        return ((GooglePayOrderRepository$getSavedPurchaseRequestModel$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        GooglePayOrderRequestModelDatabase googlePayOrderRequestModelDatabase;
        List mutableList;
        GooglePayOrderRequestModelDatabase googlePayOrderRequestModelDatabase2;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            ArrayList<GooglePayOrderRequestModel> arrayList = new ArrayList();
            try {
                googlePayOrderRequestModelDatabase = this.this$0.googlePayOrderRequestModelDatabase;
                arrayList.addAll(googlePayOrderRequestModelDatabase.getPayOrderDao().savedModels(this.$userId));
                ArrayList arrayList2 = new ArrayList();
                GooglePayOrderRepository googlePayOrderRepository = this.this$0;
                for (GooglePayOrderRequestModel googlePayOrderRequestModel : arrayList) {
                    if (googlePayOrderRequestModel.getTimeout()) {
                        googlePayOrderRequestModelDatabase2 = googlePayOrderRepository.googlePayOrderRequestModelDatabase;
                        googlePayOrderRequestModelDatabase2.getPayOrderDao().remove(googlePayOrderRequestModel);
                        arrayList2.add(googlePayOrderRequestModel);
                    }
                }
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
                mutableList.removeAll(arrayList2);
            } catch (Exception unused) {
            }
            return arrayList;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
