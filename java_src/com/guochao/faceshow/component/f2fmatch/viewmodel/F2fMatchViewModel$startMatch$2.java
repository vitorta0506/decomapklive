package com.guochao.faceshow.component.f2fmatch.viewmodel;

import android.os.CancellationSignal;
import com.tencent.thumbplayer.api.TPOptionalID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel$startMatch$2", f = "F2fMatchViewModel.kt", i = {0, 1, 2}, l = {138, TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT, 181}, m = "invokeSuspend", n = {"$this$launch", "$this$launch", "$this$launch"}, s = {"L$0", "L$0", "L$0"})
/* loaded from: classes2.dex */
public final class F2fMatchViewModel$startMatch$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ CancellationSignal $c;
    final /* synthetic */ int $gender;
    final /* synthetic */ Function1<Integer, Unit> $retry;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ F2fMatchViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public F2fMatchViewModel$startMatch$2(F2fMatchViewModel f2fMatchViewModel, int i9, CancellationSignal cancellationSignal, Function1<? super Integer, Unit> function1, Continuation<? super F2fMatchViewModel$startMatch$2> continuation) {
        super(2, continuation);
        this.this$0 = f2fMatchViewModel;
        this.$gender = i9;
        this.$c = cancellationSignal;
        this.$retry = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        F2fMatchViewModel$startMatch$2 f2fMatchViewModel$startMatch$2 = new F2fMatchViewModel$startMatch$2(this.this$0, this.$gender, this.$c, this.$retry, continuation);
        f2fMatchViewModel$startMatch$2.L$0 = obj;
        return f2fMatchViewModel$startMatch$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((F2fMatchViewModel$startMatch$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x0152, code lost:
        if (r14.$c.isCanceled() == false) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x014c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x0143 -> B:65:0x0146). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel$startMatch$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
