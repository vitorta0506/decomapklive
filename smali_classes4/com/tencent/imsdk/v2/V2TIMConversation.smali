.class public Lcom/tencent/imsdk/v2/V2TIMConversation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final CONVERSATION_C2C_PREFIX:Ljava/lang/String; = "c2c_"

.field static final CONVERSATION_GROUP_PREFIX:Ljava/lang/String; = "group_"

.field public static final CONVERSATION_TYPE_INVALID:I = 0x0

.field public static final V2TIM_C2C:I = 0x1

.field public static V2TIM_CONVERSATION_MARK_TYPE_FOLD:J = 0x4L

.field public static V2TIM_CONVERSATION_MARK_TYPE_HIDE:J = 0x8L

.field public static V2TIM_CONVERSATION_MARK_TYPE_STAR:J = 0x1L

.field public static V2TIM_CONVERSATION_MARK_TYPE_UNREAD:J = 0x2L

.field public static final V2TIM_GROUP:I = 0x2


# instance fields
.field private conversation:Lcom/tencent/imsdk/conversation/Conversation;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConversationGroupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getConversationGroupList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConversationID()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getConversationKey()Lcom/tencent/imsdk/conversation/ConversationKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/ConversationKey;->getConversationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c2c_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v1}, Lcom/tencent/imsdk/conversation/Conversation;->getConversationKey()Lcom/tencent/imsdk/conversation/ConversationKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/imsdk/conversation/ConversationKey;->getConversationID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getConversationKey()Lcom/tencent/imsdk/conversation/ConversationKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/ConversationKey;->getConversationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v1}, Lcom/tencent/imsdk/conversation/Conversation;->getConversationKey()Lcom/tencent/imsdk/conversation/ConversationKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/imsdk/conversation/ConversationKey;->getConversationID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getCustomData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDraftText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getDraftMessage()Lcom/tencent/imsdk/message/DraftMessage;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/DraftMessage;->getUserDefinedData()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :cond_2
    return-object v1
.end method

.method public getDraftTimestamp()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getDraftMessage()Lcom/tencent/imsdk/message/DraftMessage;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/DraftMessage;->getEditTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFaceUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getC2cFaceUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getGroupFaceUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupAtInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupAtInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v1}, Lcom/tencent/imsdk/conversation/Conversation;->getConversationAtInfoList()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/conversation/ConversationAtInfo;

    .line 6
    new-instance v3, Lcom/tencent/imsdk/v2/V2TIMGroupAtInfo;

    invoke-direct {v3}, Lcom/tencent/imsdk/v2/V2TIMGroupAtInfo;-><init>()V

    .line 7
    invoke-virtual {v3, v2}, Lcom/tencent/imsdk/v2/V2TIMGroupAtInfo;->setConversationGroupAtInfo(Lcom/tencent/imsdk/conversation/ConversationAtInfo;)V

    .line 8
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getConversationType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getGroupID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getGroupType()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getGroupType()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    const-string v1, "Private"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Work"

    return-object v0

    :cond_2
    const-string v1, "ChatRoom"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "Meeting"

    :cond_3
    return-object v0
.end method

.method public getLastMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getLastMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v1}, Lcom/tencent/imsdk/conversation/Conversation;->getLastMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMarkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getMarkList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOrderKey()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getOrderKey()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecvOpt()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getType()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 3
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getUserMessageReceiveOption()I

    move-result v0

    if-ne v0, v3, :cond_0

    return v1

    :cond_0
    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    return v2

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getType()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 5
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getGroupMessageReceiveOption()I

    move-result v0

    .line 6
    sget v4, Lcom/tencent/imsdk/group/GroupMemberInfo;->MESSAGE_RECEIVE_OPTION_AUTO_RECEIVE:I

    if-ne v0, v4, :cond_3

    return v1

    .line 7
    :cond_3
    sget v4, Lcom/tencent/imsdk/group/GroupMemberInfo;->MESSAGE_RECEIVE_OPTION_NOT_RECEIVE:I

    if-ne v0, v4, :cond_4

    return v3

    .line 8
    :cond_4
    sget v3, Lcom/tencent/imsdk/group/GroupMemberInfo;->MESSAGE_RECEIVE_OPTION_RECEIVE_WITH_NO_OFFLINE_PUSH:I

    if-ne v0, v3, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public getShowName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getConversationType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 3
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getGroupName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getGroupID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getConversationType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 7
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getC2cRemark()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getC2cRemark()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getC2cNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getC2cNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getC2cUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    return-object v1
.end method

.method public getType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getConversationType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUnreadCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getUnreadMessageCount()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getConversationType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getC2cUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public isPinned()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->isPinned()Z

    move-result v0

    return v0
.end method

.method setConversation(Lcom/tencent/imsdk/conversation/Conversation;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMConversation;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    return-void
.end method
