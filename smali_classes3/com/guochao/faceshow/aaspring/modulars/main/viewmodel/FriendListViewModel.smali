.class public final Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J4\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\t2\u0014\u0008\u0002\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00170\u001cJ\u001d\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"\u00a2\u0006\u0002\u0010#J>\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\"2\u0006\u0010\u0018\u001a\u00020\u00192\u0010\u0008\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\t2\u0014\u0008\u0002\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00170\u001cJ\u0010\u0010&\u001a\u0004\u0018\u00010\u00112\u0006\u0010\'\u001a\u00020\u0019J\u0006\u0010(\u001a\u00020\u0017J6\u0010)\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020 2\u0010\u0010*\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\t2\u0014\u0008\u0002\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00170\u001cJ \u0010+\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010,2\u000e\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010,H\u0002J\u0017\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00060\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010.J\u0018\u0010/\u001a\n\u0012\u0006\u0012\u0004\u0018\u000101002\u0006\u00102\u001a\u00020\"H\u0002J\u0019\u00103\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010.J,\u00104\u001a\u00020\u00172\u0010\u00105\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\t2\u0010\u00106\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\tH\u0002J\u0006\u00107\u001a\u00020\u0017J.\u00108\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\"2\u0008\u00109\u001a\u0004\u0018\u00010\u00192\u0014\u0008\u0002\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00170\u001cJ$\u0010:\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\t2\u0010\u00105\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\tH\u0002J\u0018\u0010;\u001a\u00020\u00172\u000e\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\tH\u0002J\u0016\u0010<\u001a\u00020\u00172\u0006\u0010=\u001a\u00020\u001d2\u0006\u0010>\u001a\u00020\"R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0007\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\t0\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0010\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\t0\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000b\"\u0004\u0008\u0013\u0010\rR\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006?"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "()V",
        "comparator",
        "Ljava/util/Comparator;",
        "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
        "friendListLivedata",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getFriendListLivedata",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setFriendListLivedata",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "friendRepo",
        "Lcom/guochao/faceshow/aaspring/db/FriendRepository;",
        "groupListLiveData",
        "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
        "getGroupListLiveData",
        "setGroupListLiveData",
        "groupRepo",
        "Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;",
        "addGroup",
        "",
        "name",
        "",
        "friendIds",
        "callback",
        "Lkotlin/Function1;",
        "",
        "deleteGroup",
        "context",
        "Landroid/content/Context;",
        "groupdId",
        "",
        "(Landroid/content/Context;Ljava/lang/Integer;)V",
        "editGroup",
        "groupId",
        "findGroupInfoByFriendId",
        "chatUserId",
        "getGroupList",
        "groupSort",
        "list",
        "listComparator",
        "",
        "loadFriendData",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadFriendDataFromServer",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "Lcom/guochao/faceshow/aaspring/modulars/friend/bean/FriendListBean$Result;",
        "page",
        "loadGroupFromServer",
        "putFriendsToGroup",
        "groupList",
        "friendList",
        "reset",
        "setGroup",
        "friendId",
        "sortGroup",
        "syncDb",
        "updateExpande",
        "expande",
        "id",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private friendListLivedata:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final friendRepo:Lcom/guochao/faceshow/aaspring/db/FriendRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private groupListLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final groupRepo:Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->friendListLivedata:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->groupListLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string v2, "getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->groupRepo:Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/db/FriendRepository;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/db/FriendRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->friendRepo:Lcom/guochao/faceshow/aaspring/db/FriendRepository;

    .line 6
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/c;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/c;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public static final synthetic access$getFriendRepo$p(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;)Lcom/guochao/faceshow/aaspring/db/FriendRepository;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->friendRepo:Lcom/guochao/faceshow/aaspring/db/FriendRepository;

    return-object p0
.end method

.method public static final synthetic access$getGroupRepo$p(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;)Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->groupRepo:Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;

    return-object p0
.end method

.method public static final synthetic access$loadFriendData(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->loadFriendData(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadFriendDataFromServer(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;I)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->loadFriendDataFromServer(I)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadGroupFromServer(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->loadGroupFromServer(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$putFriendsToGroup(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->putFriendsToGroup(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$syncDb(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->syncDb(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic addGroup$default(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget-object p3, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$1;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$1;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->addGroup(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/db/FriendInfo;Lcom/guochao/faceshow/aaspring/db/FriendInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->comparator$lambda-2(Lcom/guochao/faceshow/aaspring/db/FriendInfo;Lcom/guochao/faceshow/aaspring/db/FriendInfo;)I

    move-result p0

    return p0
.end method

.method private static final comparator$lambda-2(Lcom/guochao/faceshow/aaspring/db/FriendInfo;Lcom/guochao/faceshow/aaspring/db/FriendInfo;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getOnlineStatue()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 4
    :goto_0
    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setOnlineStatue(Ljava/lang/Integer;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getOnlineStatue()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getOnlineStatue()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v1, :cond_4

    .line 8
    :goto_2
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->setOnlineStatue(Ljava/lang/Integer;)V

    .line 9
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getOnlineStatue()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_5
    if-ne v0, v2, :cond_8

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getNickName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_6

    move-object p0, v0

    .line 12
    :cond_6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getNickName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    move-object v0, p1

    :goto_3
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->compareTo(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0

    .line 13
    :cond_8
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/guochao/faceshow/aaspring/db/GroupInfo;Lcom/guochao/faceshow/aaspring/db/GroupInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->sortGroup$lambda-6(Lcom/guochao/faceshow/aaspring/db/GroupInfo;Lcom/guochao/faceshow/aaspring/db/GroupInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic editGroup$default(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;ILjava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 1
    sget-object p4, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$1;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$1;

    .line 2
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->editGroup(ILjava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic groupSort$default(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget-object p3, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$groupSort$1;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$groupSort$1;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->groupSort(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final listComparator(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->comparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method private final loadFriendData(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$loadFriendData$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$loadFriendData$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final loadFriendDataFromServer(I)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/aaspring/modulars/friend/bean/FriendListBean$Result;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v1, "api/token/social/friend/list"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    const/16 v0, 0x1f4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 2
    :try_start_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->buildRequestParams()Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/friend/bean/FriendListBean$Result;

    invoke-virtual {v0, p1, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->execute(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;Ljava/lang/reflect/Type;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->Companion:Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;->fail(ILjava/lang/Object;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->setError(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private final loadGroupFromServer(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$loadGroupFromServer$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$loadGroupFromServer$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final putFriendsToGroup(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->groupListLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_b

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-nez v2, :cond_2

    goto :goto_3

    .line 4
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-string v5, "copy.iterator()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    if-eqz v5, :cond_3

    .line 8
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getGroupId()I

    move-result v6

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v7

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_3

    .line 9
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 11
    :cond_5
    invoke-direct {p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->listComparator(Ljava/util/List;)Ljava/util/List;

    .line 12
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setList(Ljava/util/List;)V

    :goto_3
    if-eqz v0, :cond_1

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    const/4 v5, 0x0

    if-eqz v2, :cond_7

    .line 14
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_5

    :cond_7
    move-object v6, v5

    :goto_5
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_6

    :cond_8
    move-object v7, v5

    :goto_6
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    if-eqz v4, :cond_a

    .line 15
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->isSelect()Ljava/lang/Boolean;

    move-result-object v5

    :cond_a
    invoke-virtual {v2, v5}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->setSelect(Ljava/lang/Boolean;)V

    goto :goto_4

    .line 16
    :cond_b
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->sortGroup(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public static synthetic setGroup$default(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;ILjava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget-object p3, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$setGroup$1;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$setGroup$1;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->setGroup(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final sortGroup(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    .line 1
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/d;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/d;

    .line 2
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method private static final sortGroup$lambda-6(Lcom/guochao/faceshow/aaspring/db/GroupInfo;Lcom/guochao/faceshow/aaspring/db/GroupInfo;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getSortNum()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getSortNum()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sub-int/2addr v0, p0

    :cond_2
    :goto_1
    return v0
.end method

.method private final syncDb(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$syncDb$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$syncDb$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->launchIO(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final addGroup(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$StartLoadingModel;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v2, v3, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$StartLoadingModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->publishingLoadingState(Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;)V

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v2, "api/token/social/friend/group/save"

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    const-string v1, "friendIds"

    .line 4
    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$$inlined$success$1;

    invoke-direct {v2, p0, p3, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$$inlined$success$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Lkotlin/jvm/functions/Function1;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p1

    const-class p2, Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$$inlined$fail$1;

    invoke-direct {p2, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$$inlined$fail$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 9
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$5;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$addGroup$5;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->complete(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method public final deleteGroup(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v1, "api/token/social/friend/group/delete"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "groupIds"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$$inlined$success$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$deleteGroup$$inlined$success$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Ljava/lang/Integer;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method public final editGroup(ILjava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    const-string v1, "name"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v3, "api/token/social/friend/group/save"

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "groupId"

    invoke-virtual {v2, v4, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v1

    if-eqz p3, :cond_1

    .line 2
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    const-string v2, "friendIds"

    .line 3
    invoke-virtual {v1, v2, p3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    .line 4
    :cond_2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p3

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$$inlined$success$1;

    invoke-direct {v2, p0, p4, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$$inlined$success$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Lkotlin/jvm/functions/Function1;ILjava/lang/String;)V

    invoke-virtual {p3, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 6
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 7
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$$inlined$fail$1;

    invoke-direct {p2, p4}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$editGroup$$inlined$fail$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 8
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method public final findGroupInfoByFriendId(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/db/GroupInfo;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "chatUserId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->friendListLivedata:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getFriendId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->groupListLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    const-string v3, "value"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v5

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getGroupId()I

    move-result v6

    if-ne v5, v6, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-eqz v4, :cond_1

    return-object v3

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getFriendListLivedata()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->friendListLivedata:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getGroupList()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->groupListLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$getGroupList$1;

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$getGroupList$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->launchIO(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 3
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$getGroupList$2;

    invoke-direct {v5, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$getGroupList$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getGroupListLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->groupListLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final groupSort(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$StartLoadingModel;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v2, v3, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$StartLoadingModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->publishingLoadingState(Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    new-instance v2, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v3, "api/token/social/friend/group/sort"

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    const-string v3, "groupIds"

    invoke-virtual {v2, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 7
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$groupSort$$inlined$success$1;

    invoke-direct {v3, p0, p3, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$groupSort$$inlined$success$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Lkotlin/jvm/functions/Function1;Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 8
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 9
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$groupSort$$inlined$fail$1;

    invoke-direct {p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$groupSort$$inlined$fail$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 10
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$groupSort$5;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$groupSort$5;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;)V

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->complete(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->groupListLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->friendListLivedata:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->groupListLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->friendListLivedata:Landroidx/lifecycle/MutableLiveData;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$reset$1;

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$reset$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->launchIO(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setFriendListLivedata(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->friendListLivedata:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setGroup(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v1, "api/token/social/friend/group/member/add"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "groupId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "friendIds"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/friend/bean/GroupListBean$Data;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$setGroup$$inlined$success$1;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$setGroup$$inlined$success$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p1

    const-class p2, Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$setGroup$$inlined$fail$1;

    invoke-direct {p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$setGroup$$inlined$fail$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method public final setGroupListLiveData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->groupListLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final updateExpande(ZI)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$updateExpande$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel$updateExpande$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;ZILkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
