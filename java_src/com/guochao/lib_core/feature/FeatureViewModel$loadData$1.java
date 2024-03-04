package com.guochao.lib_core.feature;

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
@DebugMetadata(c = "com.guochao.lib_core.feature.FeatureViewModel$loadData$1", f = "Feature.kt", i = {0, 1}, l = {209, 243}, m = "invokeSuspend", n = {"$this$launch", "$this$launch"}, s = {"L$0", "L$0"})
/* loaded from: classes4.dex */
public final class FeatureViewModel$loadData$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ FeatureViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeatureViewModel$loadData$1(FeatureViewModel featureViewModel, Continuation<? super FeatureViewModel$loadData$1> continuation) {
        super(2, continuation);
        this.this$0 = featureViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FeatureViewModel$loadData$1 featureViewModel$loadData$1 = new FeatureViewModel$loadData$1(this.this$0, continuation);
        featureViewModel$loadData$1.L$0 = obj;
        return featureViewModel$loadData$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((FeatureViewModel$loadData$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0166  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0163 -> B:12:0x0038). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.lib_core.feature.FeatureViewModel$loadData$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
