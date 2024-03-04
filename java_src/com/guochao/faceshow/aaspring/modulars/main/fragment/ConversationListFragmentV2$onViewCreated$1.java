package com.guochao.faceshow.aaspring.modulars.main.fragment;

import com.facebook.internal.FacebookRequestErrorClassification;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2$onViewCreated$1", f = "ConversationListFragmentV2.kt", i = {0, 1, 2}, l = {186, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 206}, m = "invokeSuspend", n = {"$this$launch", "$this$launch", "$this$launch"}, s = {"L$0", "L$0", "L$0"})
/* loaded from: classes3.dex */
final class ConversationListFragmentV2$onViewCreated$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ConversationListFragmentV2 this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConversationListFragmentV2$onViewCreated$1(ConversationListFragmentV2 conversationListFragmentV2, Continuation<? super ConversationListFragmentV2$onViewCreated$1> continuation) {
        super(2, continuation);
        this.this$0 = conversationListFragmentV2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ConversationListFragmentV2$onViewCreated$1 conversationListFragmentV2$onViewCreated$1 = new ConversationListFragmentV2$onViewCreated$1(this.this$0, continuation);
        conversationListFragmentV2$onViewCreated$1.L$0 = obj;
        return conversationListFragmentV2$onViewCreated$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((ConversationListFragmentV2$onViewCreated$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0109 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x010a -> B:19:0x006e). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2$onViewCreated$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
