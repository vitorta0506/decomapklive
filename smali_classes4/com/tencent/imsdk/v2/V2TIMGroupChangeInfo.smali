.class public Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final V2TIM_GROUP_INFO_CHANGE_TYPE_CUSTOM:I = 0x6

.field public static final V2TIM_GROUP_INFO_CHANGE_TYPE_FACE_URL:I = 0x4

.field public static final V2TIM_GROUP_INFO_CHANGE_TYPE_GROUP_ADD_OPT:I = 0xb

.field public static final V2TIM_GROUP_INFO_CHANGE_TYPE_INTRODUCTION:I = 0x2

.field public static final V2TIM_GROUP_INFO_CHANGE_TYPE_NAME:I = 0x1

.field public static final V2TIM_GROUP_INFO_CHANGE_TYPE_NOTIFICATION:I = 0x3

.field public static final V2TIM_GROUP_INFO_CHANGE_TYPE_OWNER:I = 0x5

.field public static final V2TIM_GROUP_INFO_CHANGE_TYPE_RECEIVE_MESSAGE_OPT:I = 0xa

.field public static final V2TIM_GROUP_INFO_CHANGE_TYPE_SHUT_UP_ALL:I = 0x8

.field public static final V2TIM_GROUP_INFO_INVALID:I


# instance fields
.field private groupInfoChangeItem:Lcom/tencent/imsdk/group/GroupInfoChangeItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/imsdk/group/GroupInfoChangeItem;

    invoke-direct {v0}, Lcom/tencent/imsdk/group/GroupInfoChangeItem;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;->groupInfoChangeItem:Lcom/tencent/imsdk/group/GroupInfoChangeItem;

    return-void
.end method


# virtual methods
.method public getBoolValue()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;->groupInfoChangeItem:Lcom/tencent/imsdk/group/GroupInfoChangeItem;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->getBoolValueChanged()Z

    move-result v0

    return v0
.end method

.method getGroupInfoChangeItem()Lcom/tencent/imsdk/group/GroupInfoChangeItem;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;->groupInfoChangeItem:Lcom/tencent/imsdk/group/GroupInfoChangeItem;

    return-object v0
.end method

.method public getIntValue()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;->groupInfoChangeItem:Lcom/tencent/imsdk/group/GroupInfoChangeItem;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->getGroupInfoChangeType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 2
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;->groupInfoChangeItem:Lcom/tencent/imsdk/group/GroupInfoChangeItem;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->getIntValueChanged()I

    move-result v0

    .line 3
    sget v1, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_ADD_OPTION_ALLOW_ANY:I

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    return v2

    .line 4
    :cond_0
    sget v1, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_ADD_OPTION_FORBID_ANY:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_1
    sget v1, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_ADD_OPTION_NEED_AUTHENTICATION:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;->groupInfoChangeItem:Lcom/tencent/imsdk/group/GroupInfoChangeItem;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->getIntValueChanged()I

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;->groupInfoChangeItem:Lcom/tencent/imsdk/group/GroupInfoChangeItem;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->getCustomInfoKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;->groupInfoChangeItem:Lcom/tencent/imsdk/group/GroupInfoChangeItem;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->getGroupInfoChangeType()I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;->groupInfoChangeItem:Lcom/tencent/imsdk/group/GroupInfoChangeItem;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->getValueChanged()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setGroupInfoChangeItem(Lcom/tencent/imsdk/group/GroupInfoChangeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;->groupInfoChangeItem:Lcom/tencent/imsdk/group/GroupInfoChangeItem;

    return-void
.end method
