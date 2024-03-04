package com.guochao.faceshow.aaspring.modulars.googlepay;

import com.tencent.thumbplayer.api.TPOptionalID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel$checkSavedPayOrder$1", f = "GooglePayOrderViewModel.kt", i = {1, 1, 2, 2}, l = {TPOptionalID.OPTION_ID_BEFORE_LONG_DEMXUER_TYPE, TPOptionalID.OPTION_ID_BEFORE_LONG_BUFFER_STRATEGY, 142}, m = "invokeSuspend", n = {"total", "it", "total", "result"}, s = {"L$0", "L$3", "L$0", "L$3"})
/* loaded from: classes3.dex */
public final class GooglePayOrderViewModel$checkSavedPayOrder$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ GooglePayOrderViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GooglePayOrderViewModel$checkSavedPayOrder$1(GooglePayOrderViewModel googlePayOrderViewModel, Continuation<? super GooglePayOrderViewModel$checkSavedPayOrder$1> continuation) {
        super(2, continuation);
        this.this$0 = googlePayOrderViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new GooglePayOrderViewModel$checkSavedPayOrder$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((GooglePayOrderViewModel$checkSavedPayOrder$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e8  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00c4 -> B:28:0x00c7). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00e3 -> B:16:0x0076). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel$checkSavedPayOrder$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
