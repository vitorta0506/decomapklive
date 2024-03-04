.class Lcom/guochao/faceshow/aaspring/beans/ConversationInfo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;-><init>(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;Lcom/tencent/imsdk/v2/V2TIMConversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Lcom/tencent/imsdk/v2/V2TIMConversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo$2;->this$0:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/tencent/imsdk/v2/V2TIMConversation;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo$2;->this$0:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->access$002(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/tencent/imsdk/v2/V2TIMConversation;)Lcom/tencent/imsdk/v2/V2TIMConversation;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo$2;->onSuccess(Lcom/tencent/imsdk/v2/V2TIMConversation;)V

    return-void
.end method
