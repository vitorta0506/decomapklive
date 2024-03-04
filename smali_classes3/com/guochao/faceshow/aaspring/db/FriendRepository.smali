.class public final Lcom/guochao/faceshow/aaspring/db/FriendRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u001d\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\u0013J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0018\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0016J\'\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\u001aJ\u0010\u0010\u001b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\tJ\u0018\u0010\u001c\u001a\u00020\u000e2\u0010\u0010\u001d\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\tJ\u0010\u0010\u001e\u001a\u00020\u000e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\nJ\u001f\u0010 \u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010!\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\"J\u001f\u0010#\u001a\u00020\u000e2\u0008\u0010$\u001a\u0004\u0018\u00010\u00162\u0008\u0010!\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010%R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u0007\u001a\u0014\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\t\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006&"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/db/FriendRepository;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "appDB",
        "Lcom/guochao/faceshow/aaspring/db/AppDatabase;",
        "userList",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
        "getUserList",
        "()Landroidx/lifecycle/LiveData;",
        "deleteAllFriend",
        "",
        "deleteAllFriendAsyn",
        "findUserByGroupId",
        "groupId",
        "",
        "(Ljava/lang/Integer;)Ljava/util/List;",
        "findUserById",
        "userId",
        "",
        "findUserByNameOrId",
        "key",
        "findUserByNameOrIdForGroup",
        "(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;",
        "getAllUser",
        "insertFriends",
        "list",
        "insertUser",
        "user",
        "undateGroupIdByGroupId",
        "newGroupId",
        "(Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "updateGroupIdByFriendId",
        "friendId",
        "(Ljava/lang/String;Ljava/lang/Integer;)V",
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
.field private final appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->Companion:Lcom/guochao/faceshow/aaspring/db/AppDatabase$Companion;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/db/AppDatabase$Companion;->getInstance(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/db/FriendRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    return-void
.end method

.method public static final synthetic access$getAppDB$p(Lcom/guochao/faceshow/aaspring/db/FriendRepository;)Lcom/guochao/faceshow/aaspring/db/AppDatabase;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/db/FriendRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    return-object p0
.end method


# virtual methods
.method public final deleteAllFriend()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/FriendRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/db/FriendDao;->deleteAllFriend()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final deleteAllFriendAsyn()V
    .locals 6

    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/aaspring/db/FriendRepository$deleteAllFriendAsyn$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/guochao/faceshow/aaspring/db/FriendRepository$deleteAllFriendAsyn$1;-><init>(Lcom/guochao/faceshow/aaspring/db/FriendRepository;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final findUserByGroupId(Ljava/lang/Integer;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/FriendRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/db/FriendDao;->findUserByGroupId(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final findUserById(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/db/FriendInfo;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/FriendRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/db/FriendDao;->findUserById(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final findUserByNameOrId(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/FriendRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/db/FriendDao;->findUserByNameOrId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final findUserByNameOrIdForGroup(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/FriendRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/db/FriendDao;->findUserByNameOrIdForGroup(Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getAllUser()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/FriendRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/db/FriendDao;->getAllUser()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUserList()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/FriendRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/db/FriendDao;->getUserList()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final insertFriends(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/FriendRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/db/FriendDao;->insertFriends(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final insertUser(Lcom/guochao/faceshow/aaspring/db/FriendInfo;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/db/FriendInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/FriendRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/db/FriendDao;->insertFriend(Lcom/guochao/faceshow/aaspring/db/FriendInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final undateGroupIdByGroupId(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/FriendRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/db/FriendDao;->updateGroupIdByGroupId(Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final updateGroupIdByFriendId(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/FriendRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/db/FriendDao;->updateGroupIdByFriendId(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
