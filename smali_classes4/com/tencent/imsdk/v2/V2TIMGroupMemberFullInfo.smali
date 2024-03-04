.class public Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;
.super Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;
.source "SourceFile"


# static fields
.field public static final V2TIM_GROUP_MEMBER_FILTER_ADMIN:I = 0x2

.field public static final V2TIM_GROUP_MEMBER_FILTER_ALL:I = 0x0

.field public static final V2TIM_GROUP_MEMBER_FILTER_COMMON:I = 0x4

.field public static final V2TIM_GROUP_MEMBER_FILTER_OWNER:I = 0x1

.field public static final V2TIM_GROUP_MEMBER_ROLE_ADMIN:I = 0x12c

.field public static final V2TIM_GROUP_MEMBER_ROLE_MEMBER:I = 0xc8

.field public static final V2TIM_GROUP_MEMBER_ROLE_OWNER:I = 0x190

.field public static final V2TIM_GROUP_MEMBER_UNDEFINED:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private modifyFlag:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;-><init>()V

    const-string v0, "V2TIMGroupMemberFullInfo"

    .line 2
    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->modifyFlag:J

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->groupMemberInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupMemberInfo;->getCustomInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getJoinTime()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->groupMemberInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupMemberInfo;->getJoinTime()J

    move-result-wide v0

    return-wide v0
.end method

.method getModifyFlag()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->modifyFlag:J

    return-wide v0
.end method

.method public getMuteUntil()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->groupMemberInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupMemberInfo;->getShutUpTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRole()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->groupMemberInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupMemberInfo;->getRole()I

    move-result v0

    .line 2
    sget v1, Lcom/tencent/imsdk/group/GroupMemberInfo;->MEMBER_ROLE_MEMBER:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc8

    return v0

    .line 3
    :cond_0
    sget v1, Lcom/tencent/imsdk/group/GroupMemberInfo;->MEMBER_ROLE_ADMINISTRATOR:I

    if-ne v0, v1, :cond_1

    const/16 v0, 0x12c

    return v0

    .line 4
    :cond_1
    sget v1, Lcom/tencent/imsdk/group/GroupMemberInfo;->MEMBER_ROLE_OWNER:I

    if-ne v0, v1, :cond_2

    const/16 v0, 0x190

    :cond_2
    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->groupMemberInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupMemberInfo;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCustomInfo(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->groupMemberInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setCustomInfo(Ljava/util/Map;)V

    .line 2
    iget-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->modifyFlag:J

    sget-wide v2, Lcom/tencent/imsdk/group/GroupMemberInfo;->GROUP_MEMBER_INFO_MODIFY_FLAG_CUSTOM_INFO:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->modifyFlag:J

    return-void
.end method

.method public setNameCard(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->groupMemberInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setNameCard(Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->modifyFlag:J

    sget-wide v2, Lcom/tencent/imsdk/group/GroupMemberInfo;->GROUP_MEMBER_INFO_MODIFY_FLAG_NAME_CARD:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->modifyFlag:J

    return-void
.end method

.method setReceiveMessageOpt(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->groupMemberInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setMessageReceiveOption(I)V

    .line 2
    iget-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->modifyFlag:J

    sget-wide v2, Lcom/tencent/imsdk/group/GroupMemberInfo;->GROUP_MEMBER_INFO_MODIFY_FLAG_MESSAGE_RECEIVE_FLAG:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->modifyFlag:J

    return-void
.end method

.method setRole(I)V
    .locals 4

    const/16 v0, 0xc8

    if-ne v0, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->groupMemberInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    sget v0, Lcom/tencent/imsdk/group/GroupMemberInfo;->MEMBER_ROLE_MEMBER:I

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setRole(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x12c

    if-ne v0, p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->groupMemberInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    sget v0, Lcom/tencent/imsdk/group/GroupMemberInfo;->MEMBER_ROLE_ADMINISTRATOR:I

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setRole(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x190

    if-ne v0, p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->groupMemberInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    sget v0, Lcom/tencent/imsdk/group/GroupMemberInfo;->MEMBER_ROLE_OWNER:I

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setRole(I)V

    .line 4
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->modifyFlag:J

    sget-wide v2, Lcom/tencent/imsdk/group/GroupMemberInfo;->GROUP_MEMBER_INFO_MODIFY_FLAG_MEMBER_ROLE:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->modifyFlag:J

    return-void
.end method

.method setShutUpTime(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->groupMemberInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setShutUpTime(J)V

    .line 2
    iget-wide p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->modifyFlag:J

    sget-wide v0, Lcom/tencent/imsdk/group/GroupMemberInfo;->GROUP_MEMBER_INFO_MODIFY_FLAG_SHUTUP_TIME:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->modifyFlag:J

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->groupMemberInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupMemberInfo;->setUserID(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V2TIMGroupMemberFullInfo--->"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "userID:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nickName:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nameCard:"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->getNameCard()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", friendRemark:"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->getFriendRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", faceUrl:"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->getFaceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", role:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->getRole()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", muteUtil:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->getMuteUntil()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", joinTime:"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;->getJoinTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
