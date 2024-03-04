.class Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->e(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

.field final synthetic b:Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder$a;->b:Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder$a;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder$a;->b:Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder$a;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->c(Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V

    return-void
.end method
