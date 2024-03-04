package com.guochao.faceshow.aaspring.utils;

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
@DebugMetadata(c = "com.guochao.faceshow.aaspring.utils.GCEventUtils$init$1", f = "GCEventUtils.kt", i = {0}, l = {111}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
/* loaded from: classes3.dex */
public final class GCEventUtils$init$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GCEventUtils$init$1(Continuation<? super GCEventUtils$init$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        GCEventUtils$init$1 gCEventUtils$init$1 = new GCEventUtils$init$1(continuation);
        gCEventUtils$init$1.L$0 = obj;
        return gCEventUtils$init$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((GCEventUtils$init$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0036 -> B:14:0x0039). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.label
            r2 = 1
            if (r1 == 0) goto L1c
            if (r1 != r2) goto L14
            java.lang.Object r1 = r5.L$0
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.throwOnFailure(r6)
            r6 = r5
            goto L39
        L14:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1c:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.Object r6 = r5.L$0
            kotlinx.coroutines.CoroutineScope r6 = (kotlinx.coroutines.CoroutineScope) r6
            r1 = r6
            r6 = r5
        L25:
            boolean r3 = kotlinx.coroutines.CoroutineScopeKt.isActive(r1)
            if (r3 == 0) goto L3f
            r3 = 60000(0xea60, double:2.9644E-319)
            r6.L$0 = r1
            r6.label = r2
            java.lang.Object r3 = kotlinx.coroutines.DelayKt.delay(r3, r6)
            if (r3 != r0) goto L39
            return r0
        L39:
            com.guochao.faceshow.aaspring.utils.GCEventUtils r3 = com.guochao.faceshow.aaspring.utils.GCEventUtils.INSTANCE
            com.guochao.faceshow.aaspring.utils.GCEventUtils.access$flushEvents(r3)
            goto L25
        L3f:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.utils.GCEventUtils$init$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
