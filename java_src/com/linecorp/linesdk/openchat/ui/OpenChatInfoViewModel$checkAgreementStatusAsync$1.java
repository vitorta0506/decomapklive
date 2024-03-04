package com.linecorp.linesdk.openchat.ui;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0012\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u0082@"}, d2 = {"Lkotlin/coroutines/Continuation;", "Lqc/c;", "", "continuation", "", "checkAgreementStatusAsync"}, k = 3, mv = {1, 4, 0})
@DebugMetadata(c = "com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel", f = "OpenChatInfoViewModel.kt", i = {0}, l = {93}, m = "checkAgreementStatusAsync", n = {"this"}, s = {"L$0"})
/* loaded from: classes4.dex */
public final class OpenChatInfoViewModel$checkAgreementStatusAsync$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ OpenChatInfoViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpenChatInfoViewModel$checkAgreementStatusAsync$1(OpenChatInfoViewModel openChatInfoViewModel, Continuation continuation) {
        super(continuation);
        this.this$0 = openChatInfoViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.checkAgreementStatusAsync(this);
    }
}
