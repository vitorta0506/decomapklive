.class Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->f(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$a;->c:Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$a;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iput p3, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$a;->c:Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->c(Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;)Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$a;->c:Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->c(Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;)Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$b;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$a;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iget v1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$a;->b:I

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$b;->a(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V

    :cond_0
    return-void
.end method
