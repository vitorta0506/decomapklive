package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel", f = "ConversationViewModel.kt", i = {0}, l = {281, 283}, m = "loadTopRecommendUsers", n = {"this"}, s = {"L$0"})
/* loaded from: classes3.dex */
public final class ConversationViewModel$loadTopRecommendUsers$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ConversationViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConversationViewModel$loadTopRecommendUsers$1(ConversationViewModel conversationViewModel, Continuation<? super ConversationViewModel$loadTopRecommendUsers$1> continuation) {
        super(continuation);
        this.this$0 = conversationViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.loadTopRecommendUsers(this);
    }
}
