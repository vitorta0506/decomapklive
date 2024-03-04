package com.guochao.faceshow.aaspring.modulars.main.fragment;

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
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2$loadOnline$1", f = "ConversationListFragmentV2.kt", i = {}, l = {306}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class ConversationListFragmentV2$loadOnline$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ ConversationListFragmentV2 this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConversationListFragmentV2$loadOnline$1(ConversationListFragmentV2 conversationListFragmentV2, Continuation<? super ConversationListFragmentV2$loadOnline$1> continuation) {
        super(2, continuation);
        this.this$0 = conversationListFragmentV2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ConversationListFragmentV2$loadOnline$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((ConversationListFragmentV2$loadOnline$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x005b, code lost:
        if ((r3.isEmpty()) == true) goto L21;
     */
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
            if (r1 == 0) goto L17
            if (r1 != r2) goto Lf
            kotlin.ResultKt.throwOnFailure(r6)
            goto L29
        Lf:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L17:
            kotlin.ResultKt.throwOnFailure(r6)
            com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2 r6 = r5.this$0
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel r6 = r6.getViewModel()
            r5.label = r2
            java.lang.Object r6 = r6.loadTopRecommendUsers(r5)
            if (r6 != r0) goto L29
            return r0
        L29:
            com.guochao.faceshow.aaspring.base.http.v2.Response r6 = (com.guochao.faceshow.aaspring.base.http.v2.Response) r6
            boolean r0 = r6.isSuccessful()
            if (r0 != 0) goto L34
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L34:
            com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2 r0 = r5.this$0
            android.view.View r0 = com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2.access$getHeaderView$p(r0)
            r1 = 0
            if (r0 != 0) goto L43
            java.lang.String r0 = "headerView"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0)
            r0 = r1
        L43:
            java.lang.Object r3 = r6.getData()
            com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel$TopOnlineUserListModel r3 = (com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel.TopOnlineUserListModel) r3
            r4 = 0
            if (r3 == 0) goto L5e
            java.util.List r3 = r3.getList()
            if (r3 == 0) goto L5e
            boolean r3 = r3.isEmpty()
            if (r3 == 0) goto L5a
            r3 = 1
            goto L5b
        L5a:
            r3 = 0
        L5b:
            if (r3 != r2) goto L5e
            goto L5f
        L5e:
            r2 = 0
        L5f:
            if (r2 == 0) goto L63
            r4 = 8
        L63:
            r0.setVisibility(r4)
            com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2 r0 = r5.this$0
            com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2$HeadAdapter r0 = com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2.access$getHeadAdapter$p(r0)
            java.lang.Object r6 = r6.getData()
            com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel$TopOnlineUserListModel r6 = (com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel.TopOnlineUserListModel) r6
            if (r6 == 0) goto L7e
            java.util.List r6 = r6.getList()
            if (r6 == 0) goto L7e
            java.util.List r1 = kotlin.collections.CollectionsKt.toMutableList(r6)
        L7e:
            r0.setNewInstance(r1)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2$loadOnline$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
