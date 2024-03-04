.class public Lcom/tencent/imsdk/group/GroupManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/group/GroupManager$GroupManagerHolder;
    }
.end annotation


# instance fields
.field private mGroupInternalListener:Lcom/tencent/imsdk/group/GroupListener;

.field private mGroupListener:Lcom/tencent/imsdk/group/GroupListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/imsdk/group/GroupManager;)Lcom/tencent/imsdk/group/GroupListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/imsdk/group/GroupManager;->mGroupListener:Lcom/tencent/imsdk/group/GroupListener;

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/imsdk/group/GroupManager;
    .locals 1

    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager$GroupManagerHolder;->access$000()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    return-object v0
.end method

.method private initGroupListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupManager;->mGroupInternalListener:Lcom/tencent/imsdk/group/GroupListener;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/imsdk/group/GroupManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/imsdk/group/GroupManager$1;-><init>(Lcom/tencent/imsdk/group/GroupManager;)V

    iput-object v0, p0, Lcom/tencent/imsdk/group/GroupManager;->mGroupInternalListener:Lcom/tencent/imsdk/group/GroupListener;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupManager;->mGroupInternalListener:Lcom/tencent/imsdk/group/GroupListener;

    invoke-virtual {p0, v0}, Lcom/tencent/imsdk/group/GroupManager;->nativeSetGroupListener(Lcom/tencent/imsdk/group/GroupListener;)V

    return-void
.end method


# virtual methods
.method public acceptGroupApplication(Lcom/tencent/imsdk/group/GroupApplication;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    sget v0, Lcom/tencent/imsdk/group/GroupApplication;->RESPONSE_TYPE_AGREE:I

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupApplication;->setResponseType(I)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/tencent/imsdk/group/GroupApplication;->setResponseMessage(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1, p3}, Lcom/tencent/imsdk/group/GroupManager;->nativeResponseGroupApplication(Lcom/tencent/imsdk/group/GroupApplication;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public createGroup(Lcom/tencent/imsdk/group/GroupInfo;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/group/GroupInfo;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 9
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 10
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/group/GroupManager;->nativeCreateGroup(Lcom/tencent/imsdk/group/GroupInfo;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public createGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p4, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance v0, Lcom/tencent/imsdk/group/GroupInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/group/GroupInfo;-><init>()V

    .line 4
    invoke-virtual {v0, p2}, Lcom/tencent/imsdk/group/GroupInfo;->setGroupID(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setGroupType(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p3}, Lcom/tencent/imsdk/group/GroupInfo;->setGroupName(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, v0, p1, p4}, Lcom/tencent/imsdk/group/GroupManager;->nativeCreateGroup(Lcom/tencent/imsdk/group/GroupInfo;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public createTopic(Lcom/tencent/imsdk/group/GroupInfo;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/group/GroupInfo;",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/group/GroupManager;->nativeCreateTopic(Lcom/tencent/imsdk/group/GroupInfo;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteGroupAttributes(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/group/GroupManager;->nativeDeleteGroupAttributes(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteTopic(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/group/GroupManager;->nativeDeleteTopic(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public dismissGroup(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/group/GroupManager;->nativeDismissGroup(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getGroupApplicationList(Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Lcom/tencent/imsdk/group/GroupApplicationResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x177d

    const-string v1, "sdk not init"

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/group/GroupManager;->nativeGetGroupApplicationList(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getGroupAttributes(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/group/GroupManager;->nativeGetGroupAttributes(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getGroupMemberList(Ljava/lang/String;IJLcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Lcom/tencent/imsdk/group/GroupMemberInfoResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p5, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/tencent/imsdk/group/GroupManager;->nativeGetGroupMemberList(Ljava/lang/String;IJLcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getGroupMembersInfo(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/group/GroupManager;->nativeGetGroupMembersInfo(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getGroupOnlineMemberCount(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/group/GroupManager;->nativeGetGroupOnlineMemberCount(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getGroupsInfo(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupInfoGetResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/group/GroupManager;->nativeGetGroupsInfo(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getJoinedCommunityList(Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x177d

    const-string v1, "sdk not init"

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/group/GroupManager;->nativeGetJoinedCommunityList(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getJoinedGroupList(Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x177d

    const-string v1, "sdk not init"

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/group/GroupManager;->nativeGetJoinedGroupList(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getTopicList(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/TopicInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/group/GroupManager;->nativeGetTopicList(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public init()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/imsdk/group/GroupManager;->initGroupListener()V

    return-void
.end method

.method public initGroupAttributes(Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/group/GroupManager;->nativeInitGroupAttributes(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public inviteUserToGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberOperationResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, ""

    .line 3
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/tencent/imsdk/group/GroupManager;->nativeInviteGroupMembers(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public joinGroup(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    :try_start_0
    const-string v0, "UTF-8"

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 5
    invoke-virtual {p2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    new-array p2, v1, [B

    goto :goto_0

    :cond_2
    new-array p2, v1, [B

    .line 6
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/group/GroupManager;->nativeJoinGroup(Ljava/lang/String;[BLcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public kickGroupMember(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberOperationResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p4, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/imsdk/group/GroupManager;->nativeDeleteGroupMembers(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public markGroupMemberList(Ljava/lang/String;Ljava/util/List;IZLcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p5, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/tencent/imsdk/group/GroupManager;->nativeMarkGroupMemberList(Ljava/lang/String;Ljava/util/List;IZLcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public muteGroupMember(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p4, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/imsdk/group/GroupManager;->nativeMuteGroupMember(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method protected native nativeCreateGroup(Lcom/tencent/imsdk/group/GroupInfo;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/group/GroupInfo;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected native nativeCreateTopic(Lcom/tencent/imsdk/group/GroupInfo;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeDeleteGroupAttributes(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeDeleteGroupMembers(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeDeleteTopic(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeDismissGroup(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeGetGroupApplicationList(Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeGetGroupAttributes(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeGetGroupMemberList(Ljava/lang/String;IJLcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeGetGroupMembersInfo(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeGetGroupOnlineMemberCount(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeGetGroupsInfo(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeGetJoinedCommunityList(Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeGetJoinedGroupList(Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeGetTopicList(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeInitGroupAttributes(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeInviteGroupMembers(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeJoinGroup(Ljava/lang/String;[BLcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeMarkGroupMemberList(Ljava/lang/String;Ljava/util/List;IZLcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeMuteGroupMember(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeQuitGroup(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeResponseGroupApplication(Lcom/tencent/imsdk/group/GroupApplication;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeSearchGroupMembersInfo(Lcom/tencent/imsdk/group/GroupMemberSearchParam;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeSearchGroups(Lcom/tencent/imsdk/group/GroupSearchParam;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeSetGroupApplicationListRead(Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeSetGroupInfo(Lcom/tencent/imsdk/group/GroupInfoModifyParam;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeSetGroupListener(Lcom/tencent/imsdk/group/GroupListener;)V
.end method

.method protected native nativeSetGroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeSetGroupMemberRole(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeSetGroupMessageReceiveOption(Ljava/lang/String;ILcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeSetGroupOwner(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeSetTopicInfo(Lcom/tencent/imsdk/group/GroupInfoModifyParam;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeUpdateGroupAttributes(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method public quitGroup(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/group/GroupManager;->nativeQuitGroup(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public refuseGroupApplication(Lcom/tencent/imsdk/group/GroupApplication;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    sget v0, Lcom/tencent/imsdk/group/GroupApplication;->RESPONSE_TYPE_REFUSE:I

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupApplication;->setResponseType(I)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/tencent/imsdk/group/GroupApplication;->setResponseMessage(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1, p3}, Lcom/tencent/imsdk/group/GroupManager;->nativeResponseGroupApplication(Lcom/tencent/imsdk/group/GroupApplication;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public searchGroupMembersInfo(Lcom/tencent/imsdk/group/GroupMemberSearchParam;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/group/GroupMemberSearchParam;",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/group/GroupManager;->nativeSearchGroupMembersInfo(Lcom/tencent/imsdk/group/GroupMemberSearchParam;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public searchGroups(Lcom/tencent/imsdk/group/GroupSearchParam;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/group/GroupSearchParam;",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/group/GroupManager;->nativeSearchGroups(Lcom/tencent/imsdk/group/GroupSearchParam;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setGroupApplicationRead(Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x177d

    const-string v1, "sdk not init"

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/group/GroupManager;->nativeSetGroupApplicationListRead(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setGroupAttributes(Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/group/GroupManager;->nativeUpdateGroupAttributes(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setGroupInfo(Lcom/tencent/imsdk/group/GroupInfoModifyParam;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/group/GroupManager;->nativeSetGroupInfo(Lcom/tencent/imsdk/group/GroupInfoModifyParam;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setGroupListener(Lcom/tencent/imsdk/group/GroupListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupManager;->mGroupListener:Lcom/tencent/imsdk/group/GroupListener;

    return-void
.end method

.method public setGroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/group/GroupManager;->nativeSetGroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setGroupMemberRole(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p4, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/imsdk/group/GroupManager;->nativeSetGroupMemberRole(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setGroupReceiveMessageOpt(Ljava/lang/String;ILcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/group/GroupManager;->nativeSetGroupMessageReceiveOption(Ljava/lang/String;ILcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setTopicInfo(Lcom/tencent/imsdk/group/GroupInfoModifyParam;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/group/GroupManager;->nativeSetTopicInfo(Lcom/tencent/imsdk/group/GroupInfoModifyParam;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public transferGroupOwner(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/group/GroupManager;->nativeSetGroupOwner(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method
