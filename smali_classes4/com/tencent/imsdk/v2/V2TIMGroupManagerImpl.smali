.class public Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;
.super Lcom/tencent/imsdk/v2/V2TIMGroupManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$V2TIMGroupManagerImplHolder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupManager;-><init>()V

    const-string v0, "V2TIMAdvGroupMgrImpl"

    .line 3
    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;
    .locals 1

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$V2TIMGroupManagerImplHolder;->access$100()Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acceptGroupApplication(Lcom/tencent/imsdk/v2/V2TIMGroupApplication;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    if-nez p1, :cond_1

    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "acceptGroupApplication err, v2TIMGroupApplication is null"

    .line 1
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string/jumbo p2, "v2TIMGroupApplication is null"

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->getGroupApplication()Lcom/tencent/imsdk/group/GroupApplication;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$33;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$33;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->acceptGroupApplication(Lcom/tencent/imsdk/group/GroupApplication;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public createGroup(Lcom/tencent/imsdk/v2/V2TIMGroupInfo;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMGroupInfo;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMCreateGroupMemberInfo;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "createGroup, null info"

    .line 1
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "info is null"

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMCreateGroupMemberInfo;

    .line 5
    new-instance v2, Lcom/tencent/imsdk/group/GroupMemberInfo;

    invoke-direct {v2}, Lcom/tencent/imsdk/group/GroupMemberInfo;-><init>()V

    .line 6
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMCreateGroupMemberInfo;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setUserID(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMCreateGroupMemberInfo;->getRole()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setRole(I)V

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$1;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$1;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v0, v1}, Lcom/tencent/imsdk/group/GroupManager;->createGroup(Lcom/tencent/imsdk/group/GroupInfo;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public createTopicInCommunity(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMTopicInfo;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMTopicInfo;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1781

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "invalid groupID"

    .line 2
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    const-string/jumbo p1, "topicInfo is null"

    .line 3
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 4
    :cond_3
    invoke-virtual {p2}, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setCommunityID(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p1

    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$36;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$36;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p1, p2, v0}, Lcom/tencent/imsdk/group/GroupManager;->createTopic(Lcom/tencent/imsdk/group/GroupInfo;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteGroupAttributes(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "deleteGroupAttributes error, groupID is empty"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "groupID is empty"

    .line 3
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$9;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$9;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->deleteGroupAttributes(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteTopicFromCommunity(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMTopicOperationResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$37;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$37;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p3

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$38;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$38;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->deleteTopic(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    const/16 p1, 0x1781

    const-string p2, "invalid groupID or topicIDList"

    .line 4
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getGroupApplicationList(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupApplicationResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$31;

    invoke-direct {v0, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$31;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$32;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$32;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p1, v1}, Lcom/tencent/imsdk/group/GroupManager;->getGroupApplicationList(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getGroupAttributes(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "getGroupAttributes error, groupID is empty"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "groupID is empty"

    .line 3
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$10;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$10;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->getGroupAttributes(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getGroupMemberList(Ljava/lang/String;IJLcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfoResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "getGroupMemberList error, groupID is empty"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    const/16 p1, 0x1781

    const-string p2, "groupID is empty"

    .line 3
    invoke-interface {p5, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    sget v0, Lcom/tencent/imsdk/group/GroupMemberInfo;->GROUP_MEMBER_FILTER_FLAG_ALL:I

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    sget p2, Lcom/tencent/imsdk/group/GroupMemberInfo;->GROUP_MEMBER_FILTER_FLAG_MEMBER:I

    goto :goto_0

    .line 6
    :cond_3
    sget p2, Lcom/tencent/imsdk/group/GroupMemberInfo;->GROUP_MEMBER_FILTER_FLAG_ADMINISTRATOR:I

    goto :goto_0

    .line 7
    :cond_4
    sget p2, Lcom/tencent/imsdk/group/GroupMemberInfo;->GROUP_MEMBER_FILTER_FLAG_OWNER:I

    :goto_0
    move v2, p2

    goto :goto_1

    :cond_5
    move v2, v0

    .line 8
    :goto_1
    new-instance p2, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$12;

    invoke-direct {p2, p0, p5}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$12;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 9
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v5, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$13;

    invoke-direct {v5, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$13;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    move-object v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/imsdk/group/GroupManager;->getGroupMemberList(Ljava/lang/String;IJLcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getGroupMembersInfo(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$14;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$14;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p3

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$15;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$15;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->getGroupMembersInfo(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "getGroupMembersInfo fail, memberList is empty"

    .line 4
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const/16 p1, 0x1781

    const-string p2, "memberList is empty"

    .line 5
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getGroupOnlineMemberCount(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string v0, "groupID is empty"

    .line 2
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$11;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$11;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/group/GroupManager;->getGroupOnlineMemberCount(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getGroupsInfo(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupInfoResult;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$2;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p2

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$3;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$3;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/group/GroupManager;->getGroupsInfo(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string v0, "getGroupsInfo error, empty groupIDList"

    .line 4
    invoke-static {p1, v0}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const/16 p1, 0x1781

    const-string v0, "empty groupIDList"

    .line 5
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getJoinedCommunityList(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$29;

    invoke-direct {v0, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$29;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$30;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$30;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p1, v1}, Lcom/tencent/imsdk/group/GroupManager;->getJoinedCommunityList(Lcom/tencent/imsdk/common/IMCallback;)V

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object p1

    const-wide/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/imsdk/manager/BaseManager;->checkTUIComponent(J)V

    return-void
.end method

.method public getJoinedGroupList(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$27;

    invoke-direct {v0, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$27;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$28;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$28;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p1, v1}, Lcom/tencent/imsdk/group/GroupManager;->getJoinedGroupList(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getTopicInfoList(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMTopicInfoResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "invalid groupID"

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$42;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$42;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 4
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p3

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$43;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$43;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->getTopicList(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public initGroupAttributes(Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "initGroupAttributes error, groupID is empty"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "groupID is empty"

    .line 3
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$7;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$7;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->initGroupAttributes(Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public inviteUserToGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberOperationResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$20;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$20;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p3

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$21;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$21;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p3, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->inviteUserToGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "inviteUserToGroup error, groupID or userList is empty"

    .line 4
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const/16 p1, 0x1781

    const-string p2, "groupID or userList is empty"

    .line 5
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public kickGroupMember(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberOperationResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$22;

    invoke-direct {v0, p0, p4}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$22;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p4

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$23;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$23;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p4, p1, p2, p3, v1}, Lcom/tencent/imsdk/group/GroupManager;->kickGroupMember(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "kickGroupMember error, groupID or memberList is empty"

    .line 4
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    const/16 p1, 0x1781

    const-string p2, "groupID or memberList is empty"

    .line 5
    invoke-interface {p4, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public markGroupMemberList(Ljava/lang/String;Ljava/util/List;IZLcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1781

    if-eqz v0, :cond_1

    if-eqz p5, :cond_0

    const-string p1, "invalid groupID"

    .line 2
    invoke-interface {p5, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v2

    new-instance v7, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$25;

    invoke-direct {v7, p0, p5}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$25;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/imsdk/group/GroupManager;->markGroupMemberList(Ljava/lang/String;Ljava/util/List;IZLcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p5, :cond_4

    const-string p1, "empty member list"

    .line 5
    invoke-interface {p5, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public muteGroupMember(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$19;

    invoke-direct {v1, p0, p4}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$19;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/tencent/imsdk/group/GroupManager;->muteGroupMember(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    const/16 p1, 0x1781

    const-string p2, "groupID or userID is empty"

    .line 3
    invoke-interface {p4, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public refuseGroupApplication(Lcom/tencent/imsdk/v2/V2TIMGroupApplication;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    if-nez p1, :cond_1

    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "acceptGroupApplication err, v2TIMGroupApplication is null"

    .line 1
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string/jumbo p2, "v2TIMGroupApplication is null"

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->getGroupApplication()Lcom/tencent/imsdk/group/GroupApplication;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$34;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$34;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->refuseGroupApplication(Lcom/tencent/imsdk/group/GroupApplication;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public searchGroupMembers(Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;",
            ">;>;>;)V"
        }
    .end annotation

    const/16 v0, 0x1781

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "searchParam is null"

    .line 1
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->getKeywordList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->getKeywordList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$16;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$16;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 4
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;->getGroupMemberSearchParam()Lcom/tencent/imsdk/group/GroupMemberSearchParam;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$17;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$17;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/group/GroupManager;->searchGroupMembersInfo(Lcom/tencent/imsdk/group/GroupMemberSearchParam;Lcom/tencent/imsdk/common/IMCallback;)V

    .line 5
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object p1

    const-wide/16 v0, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/imsdk/manager/BaseManager;->checkTUIComponent(J)V

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    const-string p1, "keywordList cannot be empty"

    .line 6
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public searchGroups(Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupInfo;",
            ">;>;)V"
        }
    .end annotation

    const/16 v0, 0x1781

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "searchParam is null"

    .line 1
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;->getKeywordList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;->getKeywordList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$4;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$4;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 4
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;->getGroupSearchParam()Lcom/tencent/imsdk/group/GroupSearchParam;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$5;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$5;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/group/GroupManager;->searchGroups(Lcom/tencent/imsdk/group/GroupSearchParam;Lcom/tencent/imsdk/common/IMCallback;)V

    .line 5
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object p1

    const-wide/16 v0, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/imsdk/manager/BaseManager;->checkTUIComponent(J)V

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    const-string p1, "empty keywordList"

    .line 6
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setGroupApplicationRead(Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$35;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$35;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/group/GroupManager;->setGroupApplicationRead(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setGroupAttributes(Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1781

    const-string v2, "V2TIMAdvGroupMgrImpl"

    if-eqz v0, :cond_1

    const-string p1, "setGroupAttributes error, groupID is empty"

    .line 2
    invoke-static {v2, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string p1, "groupID is empty"

    .line 3
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    .line 4
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$8;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$8;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->setGroupAttributes(Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "setGroupAttributes error, attributes is empty"

    .line 6
    invoke-static {v2, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    const-string p1, "attributes is empty"

    .line 7
    invoke-interface {p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setGroupInfo(Lcom/tencent/imsdk/v2/V2TIMGroupInfo;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 3

    if-nez p1, :cond_1

    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string v0, "setGroupInfo error, null info"

    .line 1
    invoke-static {p1, v0}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string v0, "null info"

    .line 2
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->getModifyFlag()I

    move-result v0

    int-to-long v0, v0

    .line 4
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object p1

    .line 5
    new-instance v2, Lcom/tencent/imsdk/group/GroupInfoModifyParam;

    invoke-direct {v2}, Lcom/tencent/imsdk/group/GroupInfoModifyParam;-><init>()V

    .line 6
    invoke-virtual {v2, p1}, Lcom/tencent/imsdk/group/GroupInfoModifyParam;->setGroupInfo(Lcom/tencent/imsdk/group/GroupInfo;)V

    .line 7
    invoke-virtual {v2, v0, v1}, Lcom/tencent/imsdk/group/GroupInfoModifyParam;->setModifyFlag(J)V

    .line 8
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p1

    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$6;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$6;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {p1, v2, v0}, Lcom/tencent/imsdk/group/GroupManager;->setGroupInfo(Lcom/tencent/imsdk/group/GroupInfoModifyParam;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setGroupMemberInfo(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;

    invoke-direct {v0}, Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->getModifyFlag()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;->setModifyFlag(J)V

    .line 4
    invoke-virtual {p2}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->getGroupMemberInfo()Lcom/tencent/imsdk/group/GroupMemberInfo;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;->setMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)V

    .line 5
    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;->getMemberInfo()Lcom/tencent/imsdk/group/GroupMemberInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setGroupID(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p1

    new-instance p2, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$18;

    invoke-direct {p2, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$18;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {p1, v0, p2}, Lcom/tencent/imsdk/group/GroupManager;->setGroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfoModifyParam;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "setGroupMemberInfo error, groupID is empty or profile is null"

    .line 7
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const/16 p1, 0x1781

    const-string p2, "groupID is empty or profile is null"

    .line 8
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setGroupMemberRole(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget v0, Lcom/tencent/imsdk/group/GroupMemberInfo;->MEMBER_ROLE_MEMBER:I

    const/16 v0, 0x190

    if-ne v0, p3, :cond_1

    .line 3
    sget p3, Lcom/tencent/imsdk/group/GroupMemberInfo;->MEMBER_ROLE_OWNER:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x12c

    if-ne v0, p3, :cond_2

    .line 4
    sget p3, Lcom/tencent/imsdk/group/GroupMemberInfo;->MEMBER_ROLE_ADMINISTRATOR:I

    .line 5
    :cond_2
    :goto_0
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$24;

    invoke-direct {v1, p0, p4}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$24;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/tencent/imsdk/group/GroupManager;->setGroupMemberRole(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string p2, "setGroupMemberRole error, groupID or userID is empty"

    .line 6
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_4

    const/16 p1, 0x1781

    const-string p2, "groupID or userID is empty"

    .line 7
    invoke-interface {p4, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setTopicInfo(Lcom/tencent/imsdk/v2/V2TIMTopicInfo;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 4

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string v0, "invalid topicInfo"

    .line 1
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->getModifyFlag()I

    move-result v0

    int-to-long v0, v0

    .line 3
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/tencent/imsdk/group/GroupInfoModifyParam;

    invoke-direct {v3}, Lcom/tencent/imsdk/group/GroupInfoModifyParam;-><init>()V

    .line 5
    invoke-virtual {v3, v2}, Lcom/tencent/imsdk/group/GroupInfoModifyParam;->setGroupInfo(Lcom/tencent/imsdk/group/GroupInfo;)V

    .line 6
    invoke-virtual {v3, v0, v1}, Lcom/tencent/imsdk/group/GroupInfoModifyParam;->setModifyFlag(J)V

    .line 7
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$39;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$39;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, v3, v1}, Lcom/tencent/imsdk/group/GroupManager;->setTopicInfo(Lcom/tencent/imsdk/group/GroupInfoModifyParam;Lcom/tencent/imsdk/common/IMCallback;)V

    .line 8
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->isNeedModifyDraft()Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 9
    :cond_2
    new-instance p2, Lcom/tencent/imsdk/conversation/ConversationKey;

    invoke-direct {p2}, Lcom/tencent/imsdk/conversation/ConversationKey;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->getTopicID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/imsdk/conversation/ConversationKey;->setConversationID(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 11
    invoke-virtual {p2, v0}, Lcom/tencent/imsdk/conversation/ConversationKey;->setConversationType(I)V

    .line 12
    new-instance v0, Lcom/tencent/imsdk/message/DraftMessage;

    invoke-direct {v0}, Lcom/tencent/imsdk/message/DraftMessage;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->getTopicInfo()Lcom/tencent/imsdk/group/TopicInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/group/TopicInfo;->getTempDraft()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/DraftMessage;->setUserDefinedData([B)V

    .line 15
    :cond_3
    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$40;

    invoke-direct {p1, p0}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$40;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;)V

    .line 16
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object v1

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$41;

    invoke-direct {v2, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$41;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v1, p2, v0, v2}, Lcom/tencent/imsdk/conversation/ConversationManager;->setConversationDraft(Lcom/tencent/imsdk/conversation/ConversationKey;Lcom/tencent/imsdk/message/DraftMessage;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public transferGroupOwner(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$26;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$26;-><init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->transferGroupOwner(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "V2TIMAdvGroupMgrImpl"

    const-string/jumbo p2, "transferGroupOwner error, groupID or userID is empty"

    .line 3
    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const/16 p1, 0x1781

    const-string p2, "groupID or userID is empty"

    .line 4
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
