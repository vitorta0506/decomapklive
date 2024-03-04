package com.linecorp.linesdk.openchat.ui;

import androidx.lifecycle.MutableLiveData;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qc.c;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 16})
@DebugMetadata(c = "com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$checkAgreementStatus$1", f = "OpenChatInfoViewModel.kt", i = {0}, l = {66}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
/* loaded from: classes4.dex */
public final class OpenChatInfoViewModel$checkAgreementStatus$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    private CoroutineScope p$;
    final /* synthetic */ OpenChatInfoViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpenChatInfoViewModel$checkAgreementStatus$1(OpenChatInfoViewModel openChatInfoViewModel, Continuation continuation) {
        super(2, continuation);
        this.this$0 = openChatInfoViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        OpenChatInfoViewModel$checkAgreementStatus$1 openChatInfoViewModel$checkAgreementStatus$1 = new OpenChatInfoViewModel$checkAgreementStatus$1(this.this$0, continuation);
        openChatInfoViewModel$checkAgreementStatus$1.p$ = (CoroutineScope) obj;
        return openChatInfoViewModel$checkAgreementStatus$1;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: invoke */
    public final Object mo1invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((OpenChatInfoViewModel$checkAgreementStatus$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        MutableLiveData mutableLiveData;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        boolean z10 = true;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = this.p$;
            OpenChatInfoViewModel openChatInfoViewModel = this.this$0;
            this.L$0 = coroutineScope;
            this.label = 1;
            obj = openChatInfoViewModel.checkAgreementStatusAsync(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        c cVar = (c) obj;
        mutableLiveData = this.this$0._shouldShowAgreementWarning;
        if (cVar.g() && ((Boolean) cVar.e()).booleanValue()) {
            z10 = false;
        }
        mutableLiveData.setValue(Boxing.boxBoolean(z10));
        return Unit.INSTANCE;
    }
}
