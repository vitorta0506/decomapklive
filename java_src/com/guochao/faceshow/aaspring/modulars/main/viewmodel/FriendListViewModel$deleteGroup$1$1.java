package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import android.content.Context;
import com.guochao.faceshow.aaspring.db.FriendGroupRepository;
import com.guochao.faceshow.aaspring.db.FriendInfo;
import com.guochao.faceshow.aaspring.db.FriendRepository;
import com.guochao.faceshow.aaspring.db.GroupInfo;
import java.util.Collection;
import java.util.Iterator;
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
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$deleteGroup$1$1", f = "FriendListViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class FriendListViewModel$deleteGroup$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ Integer $groupdId;
    int label;
    final /* synthetic */ FriendListViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FriendListViewModel$deleteGroup$1$1(Integer num, Context context, FriendListViewModel friendListViewModel, Continuation<? super FriendListViewModel$deleteGroup$1$1> continuation) {
        super(2, continuation);
        this.$groupdId = num;
        this.$context = context;
        this.this$0 = friendListViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new FriendListViewModel$deleteGroup$1$1(this.$groupdId, this.$context, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((FriendListViewModel$deleteGroup$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        List<GroupInfo> mutableList;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Integer num = this.$groupdId;
            if (num != null) {
                Context context = this.$context;
                FriendListViewModel friendListViewModel = this.this$0;
                int intValue = num.intValue();
                new FriendGroupRepository(context).deleteGroup(intValue);
                FriendRepository friendRepository = new FriendRepository(context);
                Integer boxInt = Boxing.boxInt(intValue);
                int i9 = 0;
                friendRepository.undateGroupIdByGroupId(boxInt, Boxing.boxInt(0));
                List<FriendInfo> value = friendListViewModel.getFriendListLivedata().getValue();
                if (value != null) {
                    Intrinsics.checkNotNullExpressionValue(value, "value");
                    for (FriendInfo friendInfo : value) {
                        int groupId = friendInfo.getGroupId();
                        if (num != null && groupId == num.intValue()) {
                            friendInfo.setGroupId(0);
                        }
                    }
                }
                List<GroupInfo> value2 = friendListViewModel.getGroupListLiveData().getValue();
                if (value2 != null) {
                    Intrinsics.checkNotNullExpressionValue(value2, "value");
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) value2);
                    if (mutableList != null) {
                        Iterator<GroupInfo> it = mutableList.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                i9 = -1;
                                break;
                            }
                            GroupInfo next = it.next();
                            if (Intrinsics.areEqual(num, next != null ? Boxing.boxInt(next.getId()) : null)) {
                                break;
                            }
                            i9++;
                        }
                        if (i9 >= 0) {
                            mutableList.remove(i9);
                        }
                        friendListViewModel.putFriendsToGroup(mutableList, friendListViewModel.getFriendListLivedata().getValue());
                        friendListViewModel.getGroupListLiveData().postValue(mutableList);
                    }
                }
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
