.class Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$b;


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

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$e;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Type:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$e;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->g0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xcb

    if-ne v0, v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->getImgInfoArrayFirstItem()Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$e;->a:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-virtual {p1}, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->getImgInfoArrayFirstItem()Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;->URL:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->i0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method
