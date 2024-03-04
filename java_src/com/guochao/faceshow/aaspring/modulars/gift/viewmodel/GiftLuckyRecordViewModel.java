package com.guochao.faceshow.aaspring.modulars.gift.viewmodel;

import androidx.lifecycle.ViewModelKt;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.GiftLuckRecordListBean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0003J\u001b\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0007J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckyRecordViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/beans/GiftLuckRecordListBean;", "()V", "getData", "page", "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPageData", "", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GiftLuckyRecordViewModel extends BaseViewModel<GiftLuckRecordListBean> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int SIZE = 20;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckyRecordViewModel$Companion;", "", "()V", "SIZE", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getData(int i9, Continuation<? super GiftLuckRecordListBean> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final SafeContinuation safeContinuation = new SafeContinuation(intercepted);
        GCRequest request = new GCRequest("api/token/promotion/sendgift/getRecordList").putBody("page", Boxing.boxInt(i9)).putBody("size", Boxing.boxInt(20)).request();
        request.getCallbackHolder().setSuccessClz(GiftLuckRecordListBean.class);
        request.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.viewmodel.GiftLuckyRecordViewModel$getData$lambda-2$$inlined$success$1
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
                Continuation continuation2 = Continuation.this;
                Result.Companion companion = Result.Companion;
                continuation2.resumeWith(Result.m1657constructorimpl(_response.getData()));
            }
        });
        request.getCallbackHolder().setFailClz(Exception.class);
        request.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.viewmodel.GiftLuckyRecordViewModel$getData$lambda-2$$inlined$fail$1
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
                Continuation continuation2 = Continuation.this;
                Result.Companion companion = Result.Companion;
                continuation2.resumeWith(Result.m1657constructorimpl(null));
            }
        });
        Object orThrow = safeContinuation.getOrThrow();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (orThrow == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }

    public final void getPageData(int i9) {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new GiftLuckyRecordViewModel$getPageData$1(this, i9, null), 2, null);
    }
}
