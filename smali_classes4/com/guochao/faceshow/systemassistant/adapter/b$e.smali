.class Lcom/guochao/faceshow/systemassistant/adapter/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$e;->b:Lcom/guochao/faceshow/systemassistant/adapter/b;

    iput-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$e;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$e;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Status:Ljava/lang/String;

    const-string v0, "0"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$e;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iget-object v0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->g(Z)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$e;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iget-object v0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Url:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->k(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$e;->b:Lcom/guochao/faceshow/systemassistant/adapter/b;

    iget-object v0, v0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->k:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$e;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b$e;->b:Lcom/guochao/faceshow/systemassistant/adapter/b;

    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->k:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
