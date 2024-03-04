.class Lc8/a$e;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/a;->s(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/UserSignBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentActivity;

.field final synthetic b:Lc8/a;


# direct methods
.method constructor <init>(Lc8/a;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lc8/a$e;->b:Lc8/a;

    iput-object p2, p0, Lc8/a$e;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lc8/a$e;->b:Lc8/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/a;->c(Lc8/a;Z)Z

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/UserSignBean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/beans/UserSignBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/UserSignBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/UserSignBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/UserSignBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserSignBean;->getSesign()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setE(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lc8/a$e;->b:Lc8/a;

    invoke-static {p1}, Lc8/a;->k(Lc8/a;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;

    .line 4
    iget-object v0, p0, Lc8/a$e;->a:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/a$e;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lc8/a$e;->b:Lc8/a;

    iget-object v1, p0, Lc8/a$e;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, v1, p2}, Lc8/a;->l(Lc8/a;Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lc8/a$e;->b:Lc8/a;

    invoke-static {p1}, Lc8/a;->k(Lc8/a;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserSignBean;

    invoke-virtual {p0, p1, p2}, Lc8/a$e;->onResponse(Lcom/guochao/faceshow/aaspring/beans/UserSignBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
