.class Lcom/guochao/faceshow/systemassistant/adapter/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/adapter/b;->l(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

.field final synthetic b:Lcom/guochao/faceshow/systemassistant/adapter/b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/adapter/b;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$f;->b:Lcom/guochao/faceshow/systemassistant/adapter/b;

    iput-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$f;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$f;->b:Lcom/guochao/faceshow/systemassistant/adapter/b;

    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->k:Landroid/content/Context;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$f;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iget-object v0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$f;->b:Lcom/guochao/faceshow/systemassistant/adapter/b;

    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->k:Landroid/content/Context;

    const v0, 0x7f1201e7

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1
.end method
