.class Lcom/guochao/faceshow/systemassistant/adapter/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/adapter/b;->f(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/systemassistant/adapter/b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/adapter/b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$c;->a:Lcom/guochao/faceshow/systemassistant/adapter/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$c;->a:Lcom/guochao/faceshow/systemassistant/adapter/b;

    invoke-static {p1}, Lcom/guochao/faceshow/systemassistant/adapter/b;->i(Lcom/guochao/faceshow/systemassistant/adapter/b;)Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$c;->a:Lcom/guochao/faceshow/systemassistant/adapter/b;

    invoke-static {p1}, Lcom/guochao/faceshow/systemassistant/adapter/b;->h(Lcom/guochao/faceshow/systemassistant/adapter/b;)Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/systemassistant/adapter/b;->j(Lcom/guochao/faceshow/systemassistant/adapter/b;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V

    :cond_0
    return-void
.end method
