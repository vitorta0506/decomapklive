package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.db.FriendGroupRepository;
import com.guochao.faceshow.aaspring.db.FriendInfo;
import com.guochao.faceshow.aaspring.db.FriendRepository;
import com.guochao.faceshow.aaspring.db.GroupInfo;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$addGroup$3$1", f = "FriendListViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class FriendListViewModel$addGroup$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<String> $friendIds;
    final /* synthetic */ Response<GroupInfo> $it;
    final /* synthetic */ String $name;
    int label;
    final /* synthetic */ FriendListViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FriendListViewModel$addGroup$3$1(FriendListViewModel friendListViewModel, List<String> list, Response<GroupInfo> response, String str, Continuation<? super FriendListViewModel$addGroup$3$1> continuation) {
        super(2, continuation);
        this.this$0 = friendListViewModel;
        this.$friendIds = list;
        this.$it = response;
        this.$name = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new FriendListViewModel$addGroup$3$1(this.this$0, this.$friendIds, this.$it, this.$name, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((FriendListViewModel$addGroup$3$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        FriendGroupRepository friendGroupRepository;
        List<GroupInfo> mutableList;
        FriendRepository friendRepository;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            List<FriendInfo> value = this.this$0.getFriendListLivedata().getValue();
            List<String> list = this.$friendIds;
            if (list != null) {
                FriendListViewModel friendListViewModel = this.this$0;
                Response<GroupInfo> response = this.$it;
                for (String str : list) {
                    friendRepository = friendListViewModel.friendRepo;
                    GroupInfo data = response.getData();
                    friendRepository.updateGroupIdByFriendId(str, data != null ? Boxing.boxInt(data.getId()) : null);
                    if (value != null) {
                        for (FriendInfo friendInfo : value) {
                            if (Intrinsics.areEqual(friendInfo.getFriendId(), str)) {
                                GroupInfo data2 = response.getData();
                                friendInfo.setGroupId(data2 != null ? data2.getId() : 0);
                            }
                        }
                    }
                }
            }
            friendGroupRepository = this.this$0.groupRepo;
            friendGroupRepository.insertGroup(this.$it.getData());
            GroupInfo data3 = this.$it.getData();
            if (data3 != null) {
                String str2 = this.$name;
                List<String> list2 = this.$friendIds;
                FriendListViewModel friendListViewModel2 = this.this$0;
                data3.setName(str2);
                data3.setMemberNum(list2 != null ? Boxing.boxInt(list2.size()) : Boxing.boxInt(0));
                List<GroupInfo> value2 = friendListViewModel2.getGroupListLiveData().getValue();
                if (value2 != null) {
                    Intrinsics.checkNotNullExpressionValue(value2, "value");
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) value2);
                    if (mutableList != null) {
                        mutableList.add(data3);
                        friendListViewModel2.putFriendsToGroup(mutableList, friendListViewModel2.getFriendListLivedata().getValue());
                        friendListViewModel2.getGroupListLiveData().postValue(mutableList);
                    }
                }
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
