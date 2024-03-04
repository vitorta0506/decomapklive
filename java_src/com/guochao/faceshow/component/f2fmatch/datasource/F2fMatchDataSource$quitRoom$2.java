package com.guochao.faceshow.component.f2fmatch.datasource;

import com.guochao.faceshow.aaspring.base.http.v2.Response;
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
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.component.f2fmatch.datasource.F2fMatchDataSource$quitRoom$2", f = "F2fMatchDataSource.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes2.dex */
public final class F2fMatchDataSource$quitRoom$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Response<Object>>, Object> {
    final /* synthetic */ String $roomId;
    int label;
    final /* synthetic */ F2fMatchDataSource this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F2fMatchDataSource$quitRoom$2(F2fMatchDataSource f2fMatchDataSource, String str, Continuation<? super F2fMatchDataSource$quitRoom$2> continuation) {
        super(2, continuation);
        this.this$0 = f2fMatchDataSource;
        this.$roomId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new F2fMatchDataSource$quitRoom$2(this.this$0, this.$roomId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Response<Object>> continuation) {
        return ((F2fMatchDataSource$quitRoom$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        F2fMatchApi f2fMatchApi;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            f2fMatchApi = this.this$0.api;
            return f2fMatchApi.quitRoom(this.$roomId);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
