package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

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
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$getGroupList$1", f = "FriendListViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class FriendListViewModel$getGroupList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ FriendListViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FriendListViewModel$getGroupList$1(FriendListViewModel friendListViewModel, Continuation<? super FriendListViewModel$getGroupList$1> continuation) {
        super(2, continuation);
        this.this$0 = friendListViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new FriendListViewModel$getGroupList$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((FriendListViewModel$getGroupList$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
        if (((r0 == null || r0.isEmpty()) ? true : true) == false) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r5) {
        /*
            r4 = this;
            kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r4.label
            if (r0 != 0) goto L4a
            kotlin.ResultKt.throwOnFailure(r5)
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel r5 = r4.this$0
            com.guochao.faceshow.aaspring.db.FriendGroupRepository r5 = com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel.access$getGroupRepo$p(r5)
            java.util.List r5 = r5.getGroupList()
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel r0 = r4.this$0
            com.guochao.faceshow.aaspring.db.FriendRepository r0 = com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel.access$getFriendRepo$p(r0)
            java.util.List r0 = r0.getAllUser()
            r1 = 0
            r2 = 1
            if (r5 == 0) goto L2b
            boolean r3 = r5.isEmpty()
            if (r3 == 0) goto L29
            goto L2b
        L29:
            r3 = 0
            goto L2c
        L2b:
            r3 = 1
        L2c:
            if (r3 == 0) goto L39
            if (r0 == 0) goto L36
            boolean r3 = r0.isEmpty()
            if (r3 == 0) goto L37
        L36:
            r1 = 1
        L37:
            if (r1 != 0) goto L47
        L39:
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel r1 = r4.this$0
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel.access$putFriendsToGroup(r1, r5, r0)
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel r0 = r4.this$0
            androidx.lifecycle.MutableLiveData r0 = r0.getGroupListLiveData()
            r0.postValue(r5)
        L47:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L4a:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$getGroupList$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
