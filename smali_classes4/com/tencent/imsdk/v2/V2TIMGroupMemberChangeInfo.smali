.class public Lcom/tencent/imsdk/v2/V2TIMGroupMemberChangeInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private groupMemberInfoChangeItem:Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;

    invoke-direct {v0}, Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberChangeInfo;->groupMemberInfoChangeItem:Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;

    return-void
.end method


# virtual methods
.method getGroupMemberInfoChangeItem()Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberChangeInfo;->groupMemberInfoChangeItem:Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;

    return-object v0
.end method

.method public getMuteTime()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberChangeInfo;->groupMemberInfoChangeItem:Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;->getShutUpTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberChangeInfo;->groupMemberInfoChangeItem:Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setGroupMemberInfoChangeItem(Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberChangeInfo;->groupMemberInfoChangeItem:Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;

    return-void
.end method
