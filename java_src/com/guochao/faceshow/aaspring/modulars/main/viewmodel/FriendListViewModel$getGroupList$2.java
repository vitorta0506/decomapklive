package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import com.facebook.internal.NativeProtocol;
import com.guochao.faceshow.aaspring.db.FriendGroupRepository;
import com.guochao.faceshow.aaspring.db.FriendInfo;
import com.guochao.faceshow.aaspring.db.FriendRepository;
import com.guochao.faceshow.aaspring.db.GroupInfo;
import java.util.List;
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
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$getGroupList$2", f = "FriendListViewModel.kt", i = {0, 1}, l = {92, 93, 98}, m = "invokeSuspend", n = {NativeProtocol.AUDIENCE_FRIENDS, "groupList"}, s = {"L$0", "L$0"})
/* loaded from: classes3.dex */
public final class FriendListViewModel$getGroupList$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ FriendListViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$getGroupList$2$1", f = "FriendListViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$getGroupList$2$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<FriendInfo> $friendsList;
        final /* synthetic */ List<GroupInfo> $groupList;
        int label;
        final /* synthetic */ FriendListViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(FriendListViewModel friendListViewModel, List<FriendInfo> list, List<GroupInfo> list2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = friendListViewModel;
            this.$friendsList = list;
            this.$groupList = list2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$friendsList, this.$groupList, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            FriendGroupRepository friendGroupRepository;
            FriendRepository friendRepository;
            FriendRepository friendRepository2;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                friendGroupRepository = this.this$0.groupRepo;
                List<GroupInfo> groupList = friendGroupRepository.getGroupList();
                if (groupList != null) {
                    List<GroupInfo> list = this.$groupList;
                    for (GroupInfo groupInfo : groupList) {
                        if (list != null) {
                            for (GroupInfo groupInfo2 : list) {
                                boolean z10 = false;
                                if (groupInfo != null && groupInfo.getId() == groupInfo2.getId()) {
                                    z10 = true;
                                }
                                if (z10 && groupInfo2 != null) {
                                    groupInfo2.setSelect(groupInfo != null ? groupInfo.isSelect() : null);
                                }
                            }
                        }
                    }
                }
                friendRepository = this.this$0.friendRepo;
                friendRepository.deleteAllFriend();
                friendRepository2 = this.this$0.friendRepo;
                friendRepository2.insertFriends(this.$friendsList);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FriendListViewModel$getGroupList$2(FriendListViewModel friendListViewModel, Continuation<? super FriendListViewModel$getGroupList$2> continuation) {
        super(2, continuation);
        this.this$0 = friendListViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FriendListViewModel$getGroupList$2 friendListViewModel$getGroupList$2 = new FriendListViewModel$getGroupList$2(this.this$0, continuation);
        friendListViewModel$getGroupList$2.L$0 = obj;
        return friendListViewModel$getGroupList$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((FriendListViewModel$getGroupList$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00a9 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r14) {
        /*
            r13 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r13.label
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L2f
            if (r1 == r4) goto L27
            if (r1 == r3) goto L1f
            if (r1 != r2) goto L17
            kotlin.ResultKt.throwOnFailure(r14)
            goto Laa
        L17:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r0)
            throw r14
        L1f:
            java.lang.Object r1 = r13.L$0
            java.util.List r1 = (java.util.List) r1
            kotlin.ResultKt.throwOnFailure(r14)
            goto L76
        L27:
            java.lang.Object r1 = r13.L$0
            kotlinx.coroutines.Deferred r1 = (kotlinx.coroutines.Deferred) r1
            kotlin.ResultKt.throwOnFailure(r14)
            goto L66
        L2f:
            kotlin.ResultKt.throwOnFailure(r14)
            java.lang.Object r14 = r13.L$0
            kotlinx.coroutines.CoroutineScope r14 = (kotlinx.coroutines.CoroutineScope) r14
            r7 = 0
            r8 = 0
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$getGroupList$2$group$1 r9 = new com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$getGroupList$2$group$1
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel r1 = r13.this$0
            r9.<init>(r1, r5)
            r10 = 3
            r11 = 0
            r6 = r14
            kotlinx.coroutines.Deferred r1 = kotlinx.coroutines.BuildersKt.async$default(r6, r7, r8, r9, r10, r11)
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$getGroupList$2$friends$1 r9 = new com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$getGroupList$2$friends$1
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel r6 = r13.this$0
            r9.<init>(r6, r5)
            r6 = r14
            kotlinx.coroutines.Deferred r14 = kotlinx.coroutines.BuildersKt.async$default(r6, r7, r8, r9, r10, r11)
            r1.start()
            r14.start()
            r13.L$0 = r14
            r13.label = r4
            java.lang.Object r1 = r1.await(r13)
            if (r1 != r0) goto L63
            return r0
        L63:
            r12 = r1
            r1 = r14
            r14 = r12
        L66:
            java.util.List r14 = (java.util.List) r14
            r13.L$0 = r14
            r13.label = r3
            java.lang.Object r1 = r1.await(r13)
            if (r1 != r0) goto L73
            return r0
        L73:
            r12 = r1
            r1 = r14
            r14 = r12
        L76:
            java.util.List r14 = (java.util.List) r14
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel r3 = r13.this$0
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel.access$putFriendsToGroup(r3, r1, r14)
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel r3 = r13.this$0
            androidx.lifecycle.MutableLiveData r3 = r3.getGroupListLiveData()
            r3.postValue(r1)
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel r3 = r13.this$0
            androidx.lifecycle.MutableLiveData r3 = r3.getFriendListLivedata()
            r3.postValue(r14)
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel r3 = r13.this$0
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel.access$syncDb(r3, r1)
            kotlinx.coroutines.CoroutineDispatcher r3 = kotlinx.coroutines.Dispatchers.getIO()
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$getGroupList$2$1 r4 = new com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$getGroupList$2$1
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel r6 = r13.this$0
            r4.<init>(r6, r14, r1, r5)
            r13.L$0 = r5
            r13.label = r2
            java.lang.Object r14 = kotlinx.coroutines.BuildersKt.withContext(r3, r4, r13)
            if (r14 != r0) goto Laa
            return r0
        Laa:
            kotlin.Unit r14 = kotlin.Unit.INSTANCE
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$getGroupList$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
