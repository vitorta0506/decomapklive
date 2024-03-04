.class public Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;
.implements Lcom/guochao/faceshow/aaspring/manager/im/d$a;


# static fields
.field private static final TAG:Ljava/lang/String; = "ChatPresenter"


# instance fields
.field private final LAST_MESSAGE_NUM:I

.field private conversation:Lcom/tencent/imsdk/v2/V2TIMConversation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isGetingMessage:Z

.field private view:Lcom/guochao/faceshow/aaspring/utils/ChatView;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/utils/ChatView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->isGetingMessage:Z

    const/16 v0, 0x14

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->LAST_MESSAGE_NUM:I

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->view:Lcom/guochao/faceshow/aaspring/utils/ChatView;

    .line 5
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getConversationManager()Lcom/tencent/imsdk/v2/V2TIMConversationManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c2c_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;)V

    invoke-virtual {p1, p2, v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManager;->getConversation(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;)Lcom/tencent/imsdk/v2/V2TIMConversation;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->conversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    return-object p0
.end method

.method static synthetic access$002(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;Lcom/tencent/imsdk/v2/V2TIMConversation;)Lcom/tencent/imsdk/v2/V2TIMConversation;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->conversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    return-object p1
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;)Lcom/guochao/faceshow/aaspring/utils/ChatView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->view:Lcom/guochao/faceshow/aaspring/utils/ChatView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->isGetingMessage:Z

    return p1
.end method


# virtual methods
.method public getConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->conversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    return-object v0
.end method

.method public getMessage(Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->isGetingMessage:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->isGetingMessage:Z

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    iget p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;->userId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x14

    new-instance v2, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$3;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$3;-><init>(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->getC2CHistoryMessageList(Ljava/lang/String;ILcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    :cond_0
    return-void
.end method

.method public onNewMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->conversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->conversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->view:Lcom/guochao/faceshow/aaspring/utils/ChatView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/ChatView;->showMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->readMessages()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onRecvMessageRevoked(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, La8/b;->a(Lcom/guochao/faceshow/aaspring/manager/im/d$a;Ljava/lang/String;)V

    return-void
.end method

.method public readMessages()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->conversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->conversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$4;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$4;-><init>(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->markC2CMessageAsRead(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public saveDraft(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->conversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getConversationManager()Lcom/tencent/imsdk/v2/V2TIMConversationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->conversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getConversationID()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$5;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$5;-><init>(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/tencent/imsdk/v2/V2TIMConversationManager;->setConversationDraft(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->conversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$2;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$2;-><init>(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMConversation;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    return-void
.end method

.method public start(Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->x(Lcom/guochao/faceshow/aaspring/manager/im/d$a;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->getMessage(Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->G(Lcom/guochao/faceshow/aaspring/manager/im/d$a;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
