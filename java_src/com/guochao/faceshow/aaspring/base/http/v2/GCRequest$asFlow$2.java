package com.guochao.faceshow.aaspring.base.http.v2;

import androidx.exifinterface.media.ExifInterface;
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
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Add missing generic type declarations: [T] */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00030\u0002\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;", "Lkotlinx/coroutines/flow/Flow;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.base.http.v2.GCRequest$asFlow$2", f = "GCRequest.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class GCRequest$asFlow$2<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Flow<? extends Response<T>>>, Object> {
    int label;
    final /* synthetic */ GCRequest this$0;

    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.guochao.faceshow.aaspring.base.http.v2.GCRequest$asFlow$2$1", f = "GCRequest.kt", i = {}, l = {349}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.guochao.faceshow.aaspring.base.http.v2.GCRequest$asFlow$2$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<FlowCollector<? super Response<T>>, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ GCRequest this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(GCRequest gCRequest, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = gCRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo1invoke(Object obj, Continuation<? super Unit> continuation) {
            return invoke((FlowCollector) ((FlowCollector) obj), continuation);
        }

        @Nullable
        public final Object invoke(@NotNull FlowCollector<? super Response<T>> flowCollector, @Nullable Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object coroutine_suspended;
            Response<T> response;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i9 = this.label;
            if (i9 == 0) {
                ResultKt.throwOnFailure(obj);
                FlowCollector flowCollector = (FlowCollector) this.L$0;
                GCRequest gCRequest = this.this$0;
                try {
                    Requester requester = Requester.INSTANCE;
                    RequestParams buildRequestParams = gCRequest.buildRequestParams();
                    Intrinsics.reifiedOperationMarker(4, "T?");
                    response = requester.execute(gCRequest, buildRequestParams, Object.class);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    Response<T> fail = Response.Companion.fail(-1, null, e10.getMessage());
                    fail.setError(e10);
                    response = fail;
                }
                this.label = 1;
                if (flowCollector.emit(response, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i9 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GCRequest$asFlow$2(GCRequest gCRequest, Continuation<? super GCRequest$asFlow$2> continuation) {
        super(2, continuation);
        this.this$0 = gCRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new GCRequest$asFlow$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: invoke */
    public /* bridge */ /* synthetic */ Object mo1invoke(CoroutineScope coroutineScope, Object obj) {
        return invoke(coroutineScope, (Continuation) ((Continuation) obj));
    }

    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Flow<Response<T>>> continuation) {
        return ((GCRequest$asFlow$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Intrinsics.needClassReification();
            return FlowKt.flow(new AnonymousClass1(this.this$0, null));
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
