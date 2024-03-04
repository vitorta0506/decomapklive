package com.guochao.faceshow.aaspring.base.http.v2;

import android.os.CancellationSignal;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Call;
import okhttp3.Request;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.base.http.v2.Requester$request$job$1", f = "Requester.kt", i = {0}, l = {86, 101}, m = "invokeSuspend", n = {"$this$invokeSuspend_u24lambda_u2d0"}, s = {"L$2"})
/* loaded from: classes3.dex */
public final class Requester$request$job$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Ref.ObjectRef<Call> $call;
    final /* synthetic */ CancellationSignal $cancelSign;
    final /* synthetic */ GCRequest $gcRequest;
    final /* synthetic */ long $repeat;
    final /* synthetic */ Request $request;
    final /* synthetic */ RequestParams $requestParams;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Requester$request$job$1(Ref.ObjectRef<Call> objectRef, Request request, long j10, RequestParams requestParams, CancellationSignal cancellationSignal, GCRequest gCRequest, Continuation<? super Requester$request$job$1> continuation) {
        super(2, continuation);
        this.$call = objectRef;
        this.$request = request;
        this.$repeat = j10;
        this.$requestParams = requestParams;
        this.$cancelSign = cancellationSignal;
        this.$gcRequest = gCRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new Requester$request$job$1(this.$call, this.$request, this.$repeat, this.$requestParams, this.$cancelSign, this.$gcRequest, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((Requester$request$job$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d8, code lost:
        if (r11.$cancelSign.isCanceled() == false) goto L4;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006f A[Catch: Exception -> 0x00db, TRY_LEAVE, TryCatch #1 {Exception -> 0x00db, blocks: (B:20:0x0067, B:22:0x006f, B:35:0x00a2, B:37:0x00ac, B:32:0x0095, B:34:0x009f, B:29:0x0084, B:31:0x0091, B:38:0x00af, B:24:0x0075, B:26:0x007f), top: B:65:0x0067, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d2 A[Catch: Exception -> 0x00dd, TRY_LEAVE, TryCatch #0 {Exception -> 0x00dd, blocks: (B:42:0x00c6, B:44:0x00d2, B:16:0x003f), top: B:63:0x00c6 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ec  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00d8 -> B:16:0x003f). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.base.http.v2.Requester$request$job$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
