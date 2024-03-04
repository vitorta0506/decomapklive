package com.linecorp.linesdk.openchat.ui;

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
import qc.c;
import rc.a;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0010\u0006\u001a\u0010\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lqc/c;", "", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 0})
@DebugMetadata(c = "com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$checkAgreementStatusAsync$2", f = "OpenChatInfoViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
public final class OpenChatInfoViewModel$checkAgreementStatusAsync$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super c<Boolean>>, Object> {
    int label;
    private CoroutineScope p$;
    final /* synthetic */ OpenChatInfoViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpenChatInfoViewModel$checkAgreementStatusAsync$2(OpenChatInfoViewModel openChatInfoViewModel, Continuation continuation) {
        super(2, continuation);
        this.this$0 = openChatInfoViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        OpenChatInfoViewModel$checkAgreementStatusAsync$2 openChatInfoViewModel$checkAgreementStatusAsync$2 = new OpenChatInfoViewModel$checkAgreementStatusAsync$2(this.this$0, continuation);
        openChatInfoViewModel$checkAgreementStatusAsync$2.p$ = (CoroutineScope) obj;
        return openChatInfoViewModel$checkAgreementStatusAsync$2;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: invoke */
    public final Object mo1invoke(CoroutineScope coroutineScope, Continuation<? super c<Boolean>> continuation) {
        return ((OpenChatInfoViewModel$checkAgreementStatusAsync$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a aVar;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            aVar = this.this$0.lineApiClient;
            return aVar.c();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
