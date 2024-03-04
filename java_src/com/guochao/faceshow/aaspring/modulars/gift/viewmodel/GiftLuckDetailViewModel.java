package com.guochao.faceshow.aaspring.modulars.gift.viewmodel;

import androidx.core.os.CancellationSignal;
import androidx.lifecycle.ViewModelKt;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.GiftLuckDetailBean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u001b\u0010\n\u001a\u0004\u0018\u00010\u00022\u0006\u0010\b\u001a\u00020\tH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u000bR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;", "()V", "lastCancel", "Landroidx/core/os/CancellationSignal;", "getConfig", "", "giftId", "", "getData", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GiftLuckDetailViewModel extends BaseViewModel<GiftLuckDetailBean> {
    @Nullable
    private CancellationSignal lastCancel;

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getData(int i9, Continuation<? super GiftLuckDetailBean> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        CancellationSignal cancellationSignal = this.lastCancel;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
        }
        this.lastCancel = new CancellationSignal();
        final CancellationSignal cancellationSignal2 = this.lastCancel;
        GCRequest putBody = new GCRequest("api/token/promotion/sendgift/getConfig").putBody("giftId", Boxing.boxInt(i9));
        putBody.getCallbackHolder().setSuccessClz(GiftLuckDetailBean.class);
        putBody.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.viewmodel.GiftLuckDetailViewModel$getData$lambda-3$$inlined$success$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Response<Object> _response) {
                Intrinsics.checkNotNullParameter(_response, "_response");
                CancellableContinuation cancellableContinuation = CancellableContinuation.this;
                Result.Companion companion = Result.Companion;
                cancellableContinuation.resumeWith(Result.m1657constructorimpl(_response.getData()));
            }
        });
        putBody.getCallbackHolder().setFailClz(Exception.class);
        putBody.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.viewmodel.GiftLuckDetailViewModel$getData$lambda-3$$inlined$fail$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Response<Object> response) {
                Intrinsics.checkNotNull(response, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.v2.Response<T of com.guochao.faceshow.aaspring.base.http.v2.GCRequest.fail?>");
                CancellableContinuation cancellableContinuation = CancellableContinuation.this;
                Result.Companion companion = Result.Companion;
                cancellableContinuation.resumeWith(Result.m1657constructorimpl(null));
            }
        });
        final GCRequest request = putBody.request();
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.viewmodel.GiftLuckDetailViewModel$getData$2$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                GCRequest.this.cancel();
                CancellationSignal cancellationSignal3 = cancellationSignal2;
                if (cancellationSignal3 != null) {
                    cancellationSignal3.cancel();
                }
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (result == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public final void getConfig(int i9) {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new GiftLuckDetailViewModel$getConfig$1(this, i9, null), 2, null);
    }
}
