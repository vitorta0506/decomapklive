package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import com.guochao.faceshow.aaspring.db.FriendInfo;
import com.guochao.faceshow.aaspring.db.FriendRepository;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$setGroup$2$1", f = "FriendListViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class FriendListViewModel$setGroup$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<Boolean, Unit> $callback;
    final /* synthetic */ String $friendId;
    final /* synthetic */ int $groupId;
    int label;
    final /* synthetic */ FriendListViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FriendListViewModel$setGroup$2$1(FriendListViewModel friendListViewModel, String str, int i9, Function1<? super Boolean, Unit> function1, Continuation<? super FriendListViewModel$setGroup$2$1> continuation) {
        super(2, continuation);
        this.this$0 = friendListViewModel;
        this.$friendId = str;
        this.$groupId = i9;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new FriendListViewModel$setGroup$2$1(this.this$0, this.$friendId, this.$groupId, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((FriendListViewModel$setGroup$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        FriendRepository friendRepository;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            friendRepository = this.this$0.friendRepo;
            friendRepository.updateGroupIdByFriendId(this.$friendId, Boxing.boxInt(this.$groupId));
            List<FriendInfo> value = this.this$0.getFriendListLivedata().getValue();
            if (value != null) {
                String str = this.$friendId;
                int i9 = this.$groupId;
                for (FriendInfo friendInfo : value) {
                    if (Intrinsics.areEqual(friendInfo.getFriendId(), str)) {
                        friendInfo.setGroupId(i9);
                    }
                }
            }
            FriendListViewModel friendListViewModel = this.this$0;
            friendListViewModel.putFriendsToGroup(friendListViewModel.getGroupListLiveData().getValue(), this.this$0.getFriendListLivedata().getValue());
            this.this$0.getGroupListLiveData().postValue(this.this$0.getGroupListLiveData().getValue());
            this.$callback.invoke(Boxing.boxBoolean(true));
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
