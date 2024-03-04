.class public Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

.field private mMatchMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConversationInfo()Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    return-object v0
.end method

.method public getMatchMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->mMatchMessages:Ljava/util/List;

    return-object v0
.end method

.method public setConversationInfo(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    return-void
.end method

.method public setMatchMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->mMatchMessages:Ljava/util/List;

    return-void
.end method
