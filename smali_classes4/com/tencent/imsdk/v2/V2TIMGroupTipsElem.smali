.class public Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;
.super Lcom/tencent/imsdk/v2/V2TIMElem;
.source "SourceFile"


# static fields
.field public static final GROUP_TIPS_TYPE_INVALID:I = 0x0

.field public static final V2TIM_GROUP_TIPS_TYPE_CANCEL_ADMIN:I = 0x6

.field public static final V2TIM_GROUP_TIPS_TYPE_GROUP_INFO_CHANGE:I = 0x7

.field public static final V2TIM_GROUP_TIPS_TYPE_INVITE:I = 0x2

.field public static final V2TIM_GROUP_TIPS_TYPE_JOIN:I = 0x1

.field public static final V2TIM_GROUP_TIPS_TYPE_KICKED:I = 0x4

.field public static final V2TIM_GROUP_TIPS_TYPE_MEMBER_INFO_CHANGE:I = 0x8

.field public static final V2TIM_GROUP_TIPS_TYPE_QUIT:I = 0x3

.field public static final V2TIM_GROUP_TIPS_TYPE_SET_ADMIN:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;-><init>()V

    return-void
.end method

.method private getGroupType()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/GroupTipsElement;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupTipsElement;->getGroupType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getGroupChangeInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/GroupTipsElement;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupTipsElement;->getGroupInfoChangeItemList()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/group/GroupInfoChangeItem;

    .line 6
    new-instance v3, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;

    invoke-direct {v3}, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;-><init>()V

    .line 7
    invoke-virtual {v3, v2}, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;->setGroupInfoChangeItem(Lcom/tencent/imsdk/group/GroupInfoChangeItem;)V

    .line 8
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/GroupTipsElement;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupTipsElement;->getGroupID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemberChangeInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberChangeInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/GroupTipsElement;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupTipsElement;->getGroupMemberInfoChangeItemList()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;

    .line 6
    new-instance v3, Lcom/tencent/imsdk/v2/V2TIMGroupMemberChangeInfo;

    invoke-direct {v3}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberChangeInfo;-><init>()V

    .line 7
    invoke-virtual {v3, v2}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberChangeInfo;->setGroupMemberInfoChangeItem(Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;)V

    .line 8
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getMemberCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/GroupTipsElement;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupTipsElement;->getGroupMemberCount()I

    move-result v0

    return v0
.end method

.method public getMemberList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/GroupTipsElement;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupTipsElement;->getTargetGroupMemberInfoList()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupTipsElement;->getTargetUserInfoList()Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/imsdk/group/GroupMemberInfo;

    .line 8
    new-instance v5, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    invoke-direct {v5}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;-><init>()V

    .line 9
    invoke-virtual {v5, v4}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->setGroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)V

    .line 10
    invoke-virtual {v4}, Lcom/tencent/imsdk/group/GroupMemberInfo;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/relationship/UserInfo;

    .line 12
    invoke-virtual {v1}, Lcom/tencent/imsdk/relationship/UserInfo;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v4, v1}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->setUserInfo(Lcom/tencent/imsdk/relationship/UserInfo;)V

    .line 14
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v2

    :cond_4
    return-object v1
.end method

.method public getOpMember()Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/GroupTipsElement;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupTipsElement;->getOperatorGroupMemberInfo()Lcom/tencent/imsdk/group/GroupMemberInfo;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupTipsElement;->getOperatorUserInfo()Lcom/tencent/imsdk/relationship/UserInfo;

    move-result-object v0

    .line 5
    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    invoke-direct {v2}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;-><init>()V

    .line 6
    invoke-virtual {v2, v1}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->setGroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)V

    .line 7
    invoke-virtual {v2, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->setUserInfo(Lcom/tencent/imsdk/relationship/UserInfo;)V

    return-object v2

    :cond_1
    return-object v1
.end method

.method public getType()I
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/GroupTipsElement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupTipsElement;->getGroupTipsType()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v0, v8, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;->getGroupType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Private"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-ne v0, v7, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    if-ne v0, v6, :cond_4

    const/4 v1, 0x4

    goto :goto_0

    :cond_4
    if-ne v0, v5, :cond_5

    const/4 v1, 0x5

    goto :goto_0

    :cond_5
    if-ne v0, v4, :cond_6

    const/4 v1, 0x6

    goto :goto_0

    :cond_6
    if-ne v0, v3, :cond_7

    const/4 v1, 0x7

    goto :goto_0

    :cond_7
    if-ne v0, v2, :cond_8

    const/16 v1, 0x8

    :cond_8
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;->getGroupChangeInfoList()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;

    const-string/jumbo v4, "sub type:"

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;->getType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", key:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value:"

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", intValue:"

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;->getIntValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", boolValue:"

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;->getBoolValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;->getMemberChangeInfoList()Ljava/util/List;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMGroupMemberChangeInfo;

    const-string/jumbo v5, "userID:"

    .line 12
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberChangeInfo;->getUserID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", muteTime:"

    .line 13
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberChangeInfo;->getMuteTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;->getMemberList()Ljava/util/List;

    move-result-object v2

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    .line 17
    invoke-virtual {v5}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;->getOpMember()Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    const-string v2, ""

    .line 20
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "V2TIMGroupTipsElem--->"

    .line 21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "groupID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;->getGroupID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", tips type:"

    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", memberCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;->getMemberCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", memberList:"

    .line 24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", groupChangedInfoList:"

    .line 25
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", memberChangedInfoList:"

    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", opUser:"

    .line 27
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
