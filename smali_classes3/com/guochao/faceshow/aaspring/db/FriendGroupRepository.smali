.class public final Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cJ\u0017\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\u0012J\u0010\u0010\u0013\u001a\u00020\u00082\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000eJ\u0018\u0010\u0015\u001a\u00020\u00082\u0010\u0010\u0016\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\u0012J\u001f\u0010\u0017\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u001aJ\u001f\u0010\u001b\u001a\u00020\u00082\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u001dJ\u001f\u0010\u001e\u001a\u00020\u00082\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 \u00a2\u0006\u0002\u0010!R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "appDB",
        "Lcom/guochao/faceshow/aaspring/db/AppDatabase;",
        "deleteAllGroup",
        "",
        "deleteAllGroupAsyn",
        "deleteGroup",
        "id",
        "",
        "findGroupById",
        "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
        "groupId",
        "(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
        "getGroupList",
        "",
        "insertGroup",
        "groupInfo",
        "insertGroups",
        "list",
        "upDateIsExpanded",
        "isExpanded",
        "",
        "(Ljava/lang/Boolean;Ljava/lang/Integer;)V",
        "upDateSortNum",
        "sortNum",
        "(Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "updateGroupName",
        "name",
        "",
        "(Ljava/lang/Integer;Ljava/lang/String;)V",
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    return-void
.end method

.method public static final synthetic access$getAppDB$p(Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;)Lcom/guochao/faceshow/aaspring/db/AppDatabase;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    return-object p0
.end method


# virtual methods
.method public final deleteAllGroup()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendGroupRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;->deleteAllGroup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final deleteAllGroupAsyn()V
    .locals 6

    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository$deleteAllGroupAsyn$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository$deleteAllGroupAsyn$1;-><init>(Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final deleteGroup(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendGroupRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;->deleteGroupById(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final findGroupById(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/db/GroupInfo;
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendGroupRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;->findGroupById(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final getGroupList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendGroupRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;->getGroupList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final insertGroup(Lcom/guochao/faceshow/aaspring/db/GroupInfo;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/db/GroupInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendGroupRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;->insertGroup(Lcom/guochao/faceshow/aaspring/db/GroupInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final insertGroups(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendGroupRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;->insertGroups(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final upDateIsExpanded(Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendGroupRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;->updateIsExpaned(Ljava/lang/Boolean;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final upDateSortNum(Ljava/lang/Integer;Ljava/lang/Integer;)V
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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendGroupRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;->updateSortNum(Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final updateGroupName(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/db/FriendGroupRepository;->appDB:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->friendGroupRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;->updateGroupName(Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
