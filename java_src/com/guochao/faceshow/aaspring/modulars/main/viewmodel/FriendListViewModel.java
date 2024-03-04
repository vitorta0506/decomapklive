package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Requester;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.model.LoadingStateModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.db.FriendGroupRepository;
import com.guochao.faceshow.aaspring.db.FriendInfo;
import com.guochao.faceshow.aaspring.db.FriendRepository;
import com.guochao.faceshow.aaspring.db.GroupInfo;
import com.guochao.faceshow.aaspring.modulars.friend.bean.FriendListBean;
import com.guochao.faceshow.aaspring.modulars.friend.bean.GroupListBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J4\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\t2\u0014\b\u0002\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00170\u001cJ\u001d\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"¢\u0006\u0002\u0010#J>\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\"2\u0006\u0010\u0018\u001a\u00020\u00192\u0010\b\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\t2\u0014\b\u0002\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00170\u001cJ\u0010\u0010&\u001a\u0004\u0018\u00010\u00112\u0006\u0010'\u001a\u00020\u0019J\u0006\u0010(\u001a\u00020\u0017J6\u0010)\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020 2\u0010\u0010*\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\t2\u0014\b\u0002\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00170\u001cJ \u0010+\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010,2\u000e\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010,H\u0002J\u0017\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00060\tH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010.J\u0018\u0010/\u001a\n\u0012\u0006\u0012\u0004\u0018\u000101002\u0006\u00102\u001a\u00020\"H\u0002J\u0019\u00103\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\tH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010.J,\u00104\u001a\u00020\u00172\u0010\u00105\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\t2\u0010\u00106\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\tH\u0002J\u0006\u00107\u001a\u00020\u0017J.\u00108\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\"2\b\u00109\u001a\u0004\u0018\u00010\u00192\u0014\b\u0002\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00170\u001cJ$\u0010:\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\t2\u0010\u00105\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\tH\u0002J\u0018\u0010;\u001a\u00020\u00172\u000e\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\tH\u0002J\u0016\u0010<\u001a\u00020\u00172\u0006\u0010=\u001a\u00020\u001d2\u0006\u0010>\u001a\u00020\"R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\u0007\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\t0\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0010\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\t0\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000b\"\u0004\b\u0013\u0010\rR\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006?"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "comparator", "Ljava/util/Comparator;", "Lcom/guochao/faceshow/aaspring/db/FriendInfo;", "friendListLivedata", "Landroidx/lifecycle/MutableLiveData;", "", "getFriendListLivedata", "()Landroidx/lifecycle/MutableLiveData;", "setFriendListLivedata", "(Landroidx/lifecycle/MutableLiveData;)V", "friendRepo", "Lcom/guochao/faceshow/aaspring/db/FriendRepository;", "groupListLiveData", "Lcom/guochao/faceshow/aaspring/db/GroupInfo;", "getGroupListLiveData", "setGroupListLiveData", "groupRepo", "Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;", "addGroup", "", "name", "", "friendIds", "callback", "Lkotlin/Function1;", "", "deleteGroup", "context", "Landroid/content/Context;", "groupdId", "", "(Landroid/content/Context;Ljava/lang/Integer;)V", "editGroup", "groupId", "findGroupInfoByFriendId", "chatUserId", "getGroupList", "groupSort", "list", "listComparator", "", "loadFriendData", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadFriendDataFromServer", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "Lcom/guochao/faceshow/aaspring/modulars/friend/bean/FriendListBean$Result;", "page", "loadGroupFromServer", "putFriendsToGroup", "groupList", "friendList", "reset", "setGroup", "friendId", "sortGroup", "syncDb", "updateExpande", "expande", "id", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FriendListViewModel extends BaseViewModel<BaseModel> {
    @NotNull
    private final Comparator<FriendInfo> comparator;
    @NotNull
    private final FriendRepository friendRepo;
    @NotNull
    private final FriendGroupRepository groupRepo;
    @NotNull
    private MutableLiveData<List<FriendInfo>> friendListLivedata = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<List<GroupInfo>> groupListLiveData = new MutableLiveData<>();

    public FriendListViewModel() {
        BaseApplication baseApplication = BaseApplication.getInstance();
        Intrinsics.checkNotNullExpressionValue(baseApplication, "getInstance()");
        this.groupRepo = new FriendGroupRepository(baseApplication);
        BaseApplication baseApplication2 = BaseApplication.getInstance();
        Intrinsics.checkNotNullExpressionValue(baseApplication2, "getInstance()");
        this.friendRepo = new FriendRepository(baseApplication2);
        this.comparator = new Comparator() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.c
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m523comparator$lambda2;
                m523comparator$lambda2 = FriendListViewModel.m523comparator$lambda2((FriendInfo) obj, (FriendInfo) obj2);
                return m523comparator$lambda2;
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void addGroup$default(FriendListViewModel friendListViewModel, String str, List list, Function1 function1, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            function1 = new Function1<Boolean, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$addGroup$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                    invoke(bool.booleanValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(boolean z10) {
                }
            };
        }
        friendListViewModel.addGroup(str, list, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: comparator$lambda-2  reason: not valid java name */
    public static final int m523comparator$lambda2(FriendInfo friendInfo, FriendInfo friendInfo2) {
        int compareTo;
        Integer onlineStatue = friendInfo.getOnlineStatue();
        if (onlineStatue == null || onlineStatue.intValue() != 1) {
            friendInfo.setOnlineStatue(0);
        }
        Integer onlineStatue2 = friendInfo.getOnlineStatue();
        int intValue = onlineStatue2 != null ? onlineStatue2.intValue() : 0;
        Integer onlineStatue3 = friendInfo2.getOnlineStatue();
        if (onlineStatue3 == null || onlineStatue3.intValue() != 1) {
            friendInfo2.setOnlineStatue(0);
        }
        Integer onlineStatue4 = friendInfo2.getOnlineStatue();
        int intValue2 = onlineStatue4 != null ? onlineStatue4.intValue() : 0;
        if (intValue == intValue2) {
            String nickName = friendInfo.getNickName();
            if (nickName == null) {
                nickName = "";
            }
            String nickName2 = friendInfo2.getNickName();
            compareTo = StringsKt__StringsJVMKt.compareTo(nickName, nickName2 != null ? nickName2 : "", true);
            return compareTo;
        }
        return Intrinsics.compare(intValue2, intValue);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void editGroup$default(FriendListViewModel friendListViewModel, int i9, String str, List list, Function1 function1, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            list = null;
        }
        if ((i10 & 8) != 0) {
            function1 = new Function1<Boolean, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$editGroup$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                    invoke(bool.booleanValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(boolean z10) {
                }
            };
        }
        friendListViewModel.editGroup(i9, str, list, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void groupSort$default(FriendListViewModel friendListViewModel, Context context, List list, Function1 function1, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            function1 = new Function1<Boolean, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$groupSort$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                    invoke(bool.booleanValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(boolean z10) {
                }
            };
        }
        friendListViewModel.groupSort(context, list, function1);
    }

    private final List<FriendInfo> listComparator(List<FriendInfo> list) {
        if (list == null) {
            return list;
        }
        Collections.sort(list, this.comparator);
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object loadFriendData(Continuation<? super List<FriendInfo>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new FriendListViewModel$loadFriendData$2(this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Response<FriendListBean.Result> loadFriendDataFromServer(int i9) {
        GCRequest putBody = new GCRequest("api/token/social/friend/list").putBody("page", Integer.valueOf(i9)).putBody("size", 500);
        try {
            return Requester.INSTANCE.execute(putBody, putBody.buildRequestParams(), FriendListBean.Result.class);
        } catch (Exception e10) {
            e10.printStackTrace();
            Response<FriendListBean.Result> fail = Response.Companion.fail(-1, null, e10.getMessage());
            fail.setError(e10);
            return fail;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object loadGroupFromServer(Continuation<? super List<GroupInfo>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new FriendListViewModel$loadGroupFromServer$2(null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void putFriendsToGroup(List<GroupInfo> list, List<FriendInfo> list2) {
        List<GroupInfo> value = this.groupListLiveData.getValue();
        if (list2 == null) {
            list2 = new ArrayList<>();
        }
        ArrayList arrayList = new ArrayList(list2);
        if (list != null) {
            for (GroupInfo groupInfo : list) {
                if (groupInfo != null) {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it = arrayList.iterator();
                    Intrinsics.checkNotNullExpressionValue(it, "copy.iterator()");
                    while (it.hasNext()) {
                        FriendInfo friendInfo = (FriendInfo) it.next();
                        if (friendInfo != null) {
                            if (friendInfo.getGroupId() == groupInfo.getId()) {
                                arrayList2.add(friendInfo);
                                it.remove();
                            }
                        }
                    }
                    listComparator(arrayList2);
                    groupInfo.setList(arrayList2);
                }
                if (value != null) {
                    for (GroupInfo groupInfo2 : value) {
                        if (Intrinsics.areEqual(groupInfo != null ? Integer.valueOf(groupInfo.getId()) : null, groupInfo2 != null ? Integer.valueOf(groupInfo2.getId()) : null) && groupInfo != null) {
                            groupInfo.setSelect(groupInfo2 != null ? groupInfo2.isSelect() : null);
                        }
                    }
                }
            }
        }
        sortGroup(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void setGroup$default(FriendListViewModel friendListViewModel, int i9, String str, Function1 function1, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            function1 = new Function1<Boolean, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$setGroup$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                    invoke(bool.booleanValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(boolean z10) {
                }
            };
        }
        friendListViewModel.setGroup(i9, str, function1);
    }

    private final List<GroupInfo> sortGroup(List<GroupInfo> list) {
        if (list == null) {
            return list;
        }
        Collections.sort(list, new Comparator() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.d
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m524sortGroup$lambda6;
                m524sortGroup$lambda6 = FriendListViewModel.m524sortGroup$lambda6((GroupInfo) obj, (GroupInfo) obj2);
                return m524sortGroup$lambda6;
            }
        });
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sortGroup$lambda-6  reason: not valid java name */
    public static final int m524sortGroup$lambda6(GroupInfo groupInfo, GroupInfo groupInfo2) {
        if (groupInfo == null || groupInfo2 == null) {
            return 0;
        }
        Integer sortNum = groupInfo.getSortNum();
        if (sortNum != null) {
            return sortNum.intValue();
        }
        Integer sortNum2 = groupInfo2.getSortNum();
        return 0 - (sortNum2 != null ? sortNum2.intValue() : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void syncDb(List<GroupInfo> list) {
        launchIO(new FriendListViewModel$syncDb$1(this, list, null));
    }

    public final void addGroup(@NotNull final String name, @Nullable final List<String> list, @NotNull final Function1<? super Boolean, Unit> callback) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(callback, "callback");
        publishingLoadingState(new LoadingStateModel.StartLoadingModel(null, null, 3, null));
        GCRequest putBody = new GCRequest("api/token/social/friend/group/save").putBody("name", name);
        if (!(list == null || list.isEmpty())) {
            putBody.putBody("friendIds", list);
        }
        putBody.getCallbackHolder().setSuccessClz(GroupInfo.class);
        putBody.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$addGroup$$inlined$success$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Response<Object> _response) {
                Intrinsics.checkNotNullParameter(_response, "_response");
                FriendListViewModel.this.publishingLoadingState(new LoadingStateModel.LoadingSuccessModel(null, 1, null));
                callback.invoke(Boolean.TRUE);
                FriendListViewModel friendListViewModel = FriendListViewModel.this;
                friendListViewModel.launchIO(new FriendListViewModel$addGroup$3$1(friendListViewModel, list, _response, name, null));
            }
        });
        putBody.getCallbackHolder().setFailClz(Object.class);
        putBody.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$addGroup$$inlined$fail$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Response<Object> response) {
                Intrinsics.checkNotNull(response, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.v2.Response<T of com.guochao.faceshow.aaspring.base.http.v2.GCRequest.fail?>");
                FriendListViewModel.this.publishingLoadingState(new LoadingStateModel.LoadingFailModel(null, 0, 3, null));
                callback.invoke(Boolean.FALSE);
            }
        });
        putBody.complete(new Function1<GCRequest, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$addGroup$5
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GCRequest gCRequest) {
                invoke2(gCRequest);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GCRequest it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }
        }).request();
    }

    public final void deleteGroup(@NotNull final Context context, @Nullable final Integer num) {
        Intrinsics.checkNotNullParameter(context, "context");
        GCRequest putBody = new GCRequest("api/token/social/friend/group/delete").putBody("groupIds", new Integer[]{num});
        putBody.getCallbackHolder().setSuccessClz(Object.class);
        putBody.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$deleteGroup$$inlined$success$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Response<Object> _response) {
                Intrinsics.checkNotNullParameter(_response, "_response");
                FriendListViewModel friendListViewModel = FriendListViewModel.this;
                friendListViewModel.launchIO(new FriendListViewModel$deleteGroup$1$1(num, context, friendListViewModel, null));
            }
        });
        putBody.request();
    }

    public final void editGroup(final int i9, @NotNull final String name, @Nullable List<String> list, @NotNull final Function1<? super Boolean, Unit> callback) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(callback, "callback");
        GCRequest putBody = new GCRequest("api/token/social/friend/group/save").putBody("groupId", Integer.valueOf(i9)).putBody("name", name);
        if (!(list == null || list.isEmpty())) {
            putBody.putBody("friendIds", list);
        }
        putBody.getCallbackHolder().setSuccessClz(Object.class);
        putBody.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$editGroup$$inlined$success$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Response<Object> _response) {
                Object obj;
                Intrinsics.checkNotNullParameter(_response, "_response");
                FriendListViewModel friendListViewModel = FriendListViewModel.this;
                friendListViewModel.launchIO(new FriendListViewModel$editGroup$3$1(friendListViewModel, i9, name, null));
                List<GroupInfo> it = FriendListViewModel.this.getGroupListLiveData().getValue();
                if (it != null) {
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Iterator<T> it2 = it.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it2.next();
                        GroupInfo groupInfo = (GroupInfo) obj;
                        boolean z10 = false;
                        if (groupInfo != null && groupInfo.getId() == i9) {
                            z10 = true;
                            continue;
                        }
                        if (z10) {
                            break;
                        }
                    }
                    GroupInfo groupInfo2 = (GroupInfo) obj;
                    if (groupInfo2 != null) {
                        groupInfo2.setName(name);
                        List<FriendInfo> list2 = groupInfo2.getList();
                        groupInfo2.setMemberNum(list2 != null ? Integer.valueOf(list2.size()) : null);
                    }
                    FriendListViewModel.this.getGroupListLiveData().setValue(it);
                }
                callback.invoke(Boolean.TRUE);
            }
        });
        putBody.getCallbackHolder().setFailClz(Object.class);
        putBody.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$editGroup$$inlined$fail$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Response<Object> response) {
                Intrinsics.checkNotNull(response, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.v2.Response<T of com.guochao.faceshow.aaspring.base.http.v2.GCRequest.fail?>");
                Function1.this.invoke(Boolean.FALSE);
            }
        });
        putBody.request();
    }

    @Nullable
    public final GroupInfo findGroupInfoByFriendId(@NotNull String chatUserId) {
        List<GroupInfo> value;
        Intrinsics.checkNotNullParameter(chatUserId, "chatUserId");
        List<FriendInfo> value2 = this.friendListLivedata.getValue();
        if (value2 != null) {
            for (FriendInfo friendInfo : value2) {
                if (Intrinsics.areEqual(friendInfo.getFriendId(), chatUserId) && (value = this.groupListLiveData.getValue()) != null) {
                    Intrinsics.checkNotNullExpressionValue(value, "value");
                    for (GroupInfo groupInfo : value) {
                        boolean z10 = false;
                        if (groupInfo != null && groupInfo.getId() == friendInfo.getGroupId()) {
                            z10 = true;
                            continue;
                        }
                        if (z10) {
                            return groupInfo;
                        }
                    }
                    continue;
                }
            }
            return null;
        }
        return null;
    }

    @NotNull
    public final MutableLiveData<List<FriendInfo>> getFriendListLivedata() {
        return this.friendListLivedata;
    }

    public final void getGroupList() {
        if (this.groupListLiveData.getValue() == null) {
            launchIO(new FriendListViewModel$getGroupList$1(this, null));
        }
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new FriendListViewModel$getGroupList$2(this, null), 2, null);
    }

    @NotNull
    public final MutableLiveData<List<GroupInfo>> getGroupListLiveData() {
        return this.groupListLiveData;
    }

    public final void groupSort(@NotNull final Context context, @Nullable final List<GroupInfo> list, @NotNull final Function1<? super Boolean, Unit> callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
        publishingLoadingState(new LoadingStateModel.StartLoadingModel(null, null, 3, null));
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (GroupInfo groupInfo : list) {
                if (groupInfo != null) {
                    arrayList.add(Integer.valueOf(groupInfo.getId()));
                }
            }
        }
        GCRequest putBody = new GCRequest("api/token/social/friend/group/sort").putBody("groupIds", arrayList);
        putBody.getCallbackHolder().setSuccessClz(Object.class);
        putBody.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$groupSort$$inlined$success$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Response<Object> _response) {
                Intrinsics.checkNotNullParameter(_response, "_response");
                FriendListViewModel friendListViewModel = FriendListViewModel.this;
                friendListViewModel.launchIO(new FriendListViewModel$groupSort$3$1(list, friendListViewModel, context, null));
                callback.invoke(Boolean.TRUE);
            }
        });
        putBody.getCallbackHolder().setFailClz(Object.class);
        putBody.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$groupSort$$inlined$fail$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Response<Object> response) {
                Intrinsics.checkNotNull(response, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.v2.Response<T of com.guochao.faceshow.aaspring.base.http.v2.GCRequest.fail?>");
                Function1.this.invoke(Boolean.FALSE);
            }
        });
        putBody.complete(new Function1<GCRequest, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$groupSort$5
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GCRequest gCRequest) {
                invoke2(gCRequest);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GCRequest it) {
                Intrinsics.checkNotNullParameter(it, "it");
                FriendListViewModel.this.publishingLoadingState(new LoadingStateModel.LoadingSuccessModel(null, 1, null));
            }
        }).request();
    }

    public final void reset() {
        this.groupListLiveData.setValue(null);
        this.friendListLivedata.setValue(null);
        this.groupListLiveData = new MutableLiveData<>();
        this.friendListLivedata = new MutableLiveData<>();
        launchIO(new FriendListViewModel$reset$1(this, null));
    }

    public final void setFriendListLivedata(@NotNull MutableLiveData<List<FriendInfo>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.friendListLivedata = mutableLiveData;
    }

    public final void setGroup(final int i9, @Nullable final String str, @NotNull final Function1<? super Boolean, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        GCRequest putBody = new GCRequest("api/token/social/friend/group/member/add").putBody("groupId", Integer.valueOf(i9)).putBody("friendIds", new String[]{str});
        putBody.getCallbackHolder().setSuccessClz(GroupListBean.Data.class);
        putBody.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$setGroup$$inlined$success$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Response<Object> _response) {
                Intrinsics.checkNotNullParameter(_response, "_response");
                FriendListViewModel friendListViewModel = FriendListViewModel.this;
                friendListViewModel.launchIO(new FriendListViewModel$setGroup$2$1(friendListViewModel, str, i9, callback, null));
            }
        });
        putBody.getCallbackHolder().setFailClz(Object.class);
        putBody.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$setGroup$$inlined$fail$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Response<Object> response) {
                Intrinsics.checkNotNull(response, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.v2.Response<T of com.guochao.faceshow.aaspring.base.http.v2.GCRequest.fail?>");
                Function1.this.invoke(Boolean.FALSE);
            }
        });
        putBody.request();
    }

    public final void setGroupListLiveData(@NotNull MutableLiveData<List<GroupInfo>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.groupListLiveData = mutableLiveData;
    }

    public final void updateExpande(boolean z10, int i9) {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new FriendListViewModel$updateExpande$1(this, z10, i9, null), 2, null);
    }
}
