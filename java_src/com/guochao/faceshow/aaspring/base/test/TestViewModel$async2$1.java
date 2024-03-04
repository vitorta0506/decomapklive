package com.guochao.faceshow.aaspring.base.test;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "com.guochao.faceshow.aaspring.base.test.TestViewModel", f = "TestViewModel.kt", i = {}, l = {41}, m = "async2", n = {}, s = {})
/* loaded from: classes3.dex */
public final class TestViewModel$async2$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TestViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestViewModel$async2$1(TestViewModel testViewModel, Continuation<? super TestViewModel$async2$1> continuation) {
        super(continuation);
        this.this$0 = testViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.async2(this);
    }
}
