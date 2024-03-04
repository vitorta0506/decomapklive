.class Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$d;
.super Lkc/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$d;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-direct {p0}, Lkc/f;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$d;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-static {p1}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->d0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->f()Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$d;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->MsgId:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->e0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;Ljava/lang/String;Z)V

    return-void
.end method
