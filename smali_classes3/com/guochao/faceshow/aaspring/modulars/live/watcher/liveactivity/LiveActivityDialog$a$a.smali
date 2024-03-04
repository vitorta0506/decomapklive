.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const v0, 0x7f0a0522

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;->getIsClick()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;->getClickUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/web/WebViewActivity$e;->l(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->g(Z)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->k(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;->getShareText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->i(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;->getShareImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->h(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->f(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;

    .line 8
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;->getId()I

    move-result p1

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "api/appactivity/udpateClickLog"

    invoke-direct {p1, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "activityDialogId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_2
    :goto_0
    return-void
.end method
