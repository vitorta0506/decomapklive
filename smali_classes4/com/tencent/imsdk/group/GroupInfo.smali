.class public Lcom/tencent/imsdk/group/GroupInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static GROUP_ADD_OPTION_ALLOW_ANY:I = 0x3

.field public static GROUP_ADD_OPTION_FORBID_ANY:I = 0x1

.field public static GROUP_ADD_OPTION_NEED_AUTHENTICATION:I = 0x2

.field public static GROUP_INFO_MODIFY_FLAG_ADD_OPTION:J = 0x10L

.field public static GROUP_INFO_MODIFY_FLAG_CUSTOM_INFO:J = 0x200L

.field public static GROUP_INFO_MODIFY_FLAG_FACE_URL:J = 0x8L

.field public static GROUP_INFO_MODIFY_FLAG_GROUP_SEARCHABLE:J = 0x80L

.field public static GROUP_INFO_MODIFY_FLAG_INTRODUCTION:J = 0x4L

.field public static GROUP_INFO_MODIFY_FLAG_MAX_MEMBER_NUM:J = 0x20L

.field public static GROUP_INFO_MODIFY_FLAG_MEMBER_VISIBLE:J = 0x40L

.field public static GROUP_INFO_MODIFY_FLAG_NAME:J = 0x1L

.field public static GROUP_INFO_MODIFY_FLAG_NONE:J = 0x0L

.field public static GROUP_INFO_MODIFY_FLAG_NOTIFICATION:J = 0x2L

.field public static GROUP_INFO_MODIFY_FLAG_SHUTUP_ALL:J = 0x100L

.field public static TOPIC_INFO_MODIFY_FLAG_CUSTOM_STRING:J = 0x800L


# instance fields
.field private addOption:I

.field private communityID:Ljava/lang/String;

.field private createTime:J

.field private customInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private customString:Ljava/lang/String;

.field private faceUrl:Ljava/lang/String;

.field private groupID:Ljava/lang/String;

.field private groupInfoTimestamp:J

.field private groupNameBytes:[B

.field private groupSelfInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

.field private groupType:Ljava/lang/String;

.field private introductionBytes:[B

.field private isAllShutUp:Z

.field private isGroupMemberVisible:Z

.field private isGroupSearchable:Z

.field private lastMessageTimestamp:J

.field private memberCount:J

.field private memberMaxCount:J

.field private memberOnlineCount:J

.field private notificationBytes:[B

.field private ownerUserID:Ljava/lang/String;

.field private supportTopic:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->customInfo:Ljava/util/Map;

    .line 3
    new-instance v0, Lcom/tencent/imsdk/group/GroupMemberInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/group/GroupMemberInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupSelfInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    return-void
.end method


# virtual methods
.method public getAddOption()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->addOption:I

    return v0
.end method

.method public getCommunityID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->communityID:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->createTime:J

    return-wide v0
.end method

.method public getCustomInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->customInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getCustomString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->customString:Ljava/lang/String;

    return-object v0
.end method

.method public getFaceUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->faceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupID:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupInfoTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupInfoTimestamp:J

    return-wide v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupNameBytes:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public getGroupSelfInfo()Lcom/tencent/imsdk/group/GroupMemberInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupSelfInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    return-object v0
.end method

.method public getGroupType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupType:Ljava/lang/String;

    return-object v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->introductionBytes:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public getLastMessageTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->lastMessageTimestamp:J

    return-wide v0
.end method

.method public getMemberCount()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->memberCount:J

    return-wide v0
.end method

.method public getMemberMaxCount()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->memberMaxCount:J

    return-wide v0
.end method

.method public getMemberOnlineCount()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->memberOnlineCount:J

    return-wide v0
.end method

.method public getNotification()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->notificationBytes:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public getOwnerUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->ownerUserID:Ljava/lang/String;

    return-object v0
.end method

.method public isAllShutUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->isAllShutUp:Z

    return v0
.end method

.method public isGroupMemberVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->isGroupMemberVisible:Z

    return v0
.end method

.method public isGroupSearchable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->isGroupSearchable:Z

    return v0
.end method

.method public isSupportTopic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->supportTopic:Z

    return v0
.end method

.method public setAddOption(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->addOption:I

    return-void
.end method

.method public setAllShutUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->isAllShutUp:Z

    return-void
.end method

.method public setCommunityID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->communityID:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->createTime:J

    return-void
.end method

.method public setCustomInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->customInfo:Ljava/util/Map;

    return-void
.end method

.method public setCustomString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->customString:Ljava/lang/String;

    return-void
.end method

.method public setFaceUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->faceUrl:Ljava/lang/String;

    return-void
.end method

.method public setGroupID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupID:Ljava/lang/String;

    return-void
.end method

.method public setGroupInfoTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupInfoTimestamp:J

    return-void
.end method

.method public setGroupMemberVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->isGroupMemberVisible:Z

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupNameBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setGroupSearchable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->isGroupSearchable:Z

    return-void
.end method

.method public setGroupSelfInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupSelfInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    return-void
.end method

.method public setGroupType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupType:Ljava/lang/String;

    return-void
.end method

.method public setIntroduction(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->introductionBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setLastMessageTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->lastMessageTimestamp:J

    return-void
.end method

.method public setMemberCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->memberCount:J

    return-void
.end method

.method public setMemberMaxCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->memberMaxCount:J

    return-void
.end method

.method public setMemberOnlineCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->memberOnlineCount:J

    return-void
.end method

.method public setNotification(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->notificationBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setOwnerUserID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->ownerUserID:Ljava/lang/String;

    return-void
.end method

.method public setSupportTopic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->supportTopic:Z

    return-void
.end method
