.class Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$e;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$e;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$e;Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$e$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$e;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$e$a;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/imsdk/v2/V2TIMConversation;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$e$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$e;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$e;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-static {v1, p1, v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;Lcom/tencent/imsdk/v2/V2TIMConversation;Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$e$a;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setTIMConversation2(Lcom/tencent/imsdk/v2/V2TIMConversation;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$e$a;->a(Lcom/tencent/imsdk/v2/V2TIMConversation;)V

    return-void
.end method
