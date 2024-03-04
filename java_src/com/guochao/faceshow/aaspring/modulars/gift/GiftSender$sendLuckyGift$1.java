package com.guochao.faceshow.aaspring.modulars.gift;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import java.util.ArrayList;
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
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.gift.GiftSender$sendLuckyGift$1", f = "GiftSender.kt", i = {}, l = {325}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class GiftSender$sendLuckyGift$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> $callBack;
    final /* synthetic */ LifecycleOwner $lifecycleOwner;
    final /* synthetic */ SendGiftRequestModel $sendGiftRequestModel;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GiftSender$sendLuckyGift$1(SendGiftRequestModel sendGiftRequestModel, LifecycleOwner lifecycleOwner, com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> cVar, Continuation<? super GiftSender$sendLuckyGift$1> continuation) {
        super(2, continuation);
        this.$sendGiftRequestModel = sendGiftRequestModel;
        this.$lifecycleOwner = lifecycleOwner;
        this.$callBack = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new GiftSender$sendLuckyGift$1(this.$sendGiftRequestModel, this.$lifecycleOwner, this.$callBack, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((GiftSender$sendLuckyGift$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        ArrayList arrayList;
        int i9;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.throwOnFailure(obj);
            GiftSender giftSender = GiftSender.INSTANCE;
            SendGiftRequestModel sendGiftRequestModel = this.$sendGiftRequestModel;
            this.label = 1;
            obj = giftSender.sendLuckyGiftToServer(sendGiftRequestModel, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i10 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        Response response = (Response) obj;
        if (this.$sendGiftRequestModel.getLucyGift()) {
            arrayList = GiftSender.requestList;
            if (arrayList.isEmpty() && GiftSender.INSTANCE.getEndCombo()) {
                i9 = GiftSender.luckyGiftSendCount;
                if (i9 >= 3) {
                    p9.a.g().o();
                    GiftSender.luckyGiftSendCount = 0;
                }
            }
        }
        LifecycleOwner lifecycleOwner = this.$lifecycleOwner;
        if (lifecycleOwner != null && lifecycleOwner.getLifecycle().getCurrentState() == Lifecycle.State.DESTROYED) {
            return Unit.INSTANCE;
        }
        com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> cVar = this.$callBack;
        if (cVar != 0) {
            if (response.isSuccessful()) {
                Object data = response.getData();
                FaceCastBaseResponse faceCastBaseResponse = new FaceCastBaseResponse();
                faceCastBaseResponse.setCode(1);
                faceCastBaseResponse.setResult(response.getData());
                Unit unit = Unit.INSTANCE;
                cVar.onResponse(data, faceCastBaseResponse);
            } else {
                cVar.onFailure(new g7.a(response.getError(), response.getCode()));
            }
        }
        return Unit.INSTANCE;
    }
}
