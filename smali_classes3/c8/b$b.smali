.class Lc8/b$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/b;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/bean/LiveActivityDialogBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc8/b;


# direct methods
.method constructor <init>(Lc8/b;)V
    .locals 0

    iput-object p1, p0, Lc8/b$b;->a:Lc8/b;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/bean/LiveActivityDialogBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/bean/LiveActivityDialogBean;
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
            "Lcom/guochao/faceshow/bean/LiveActivityDialogBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/bean/LiveActivityDialogBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/LiveActivityDialogBean;->getLiveFrame()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/LiveActivityDialogBean$LiveItemBean;->getId()I

    move-result v2

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getBlackShow()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 5
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    :cond_2
    iget-object p2, p0, Lc8/b$b;->a:Lc8/b;

    invoke-static {p2, p1}, Lc8/b;->c(Lc8/b;Lcom/guochao/faceshow/bean/LiveActivityDialogBean;)Lcom/guochao/faceshow/bean/LiveActivityDialogBean;

    .line 7
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object p1

    invoke-virtual {p1}, Lc8/b;->z()V

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
            "Lcom/guochao/faceshow/bean/LiveActivityDialogBean;",
            ">;)V"
        }
    .end annotation

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

    check-cast p1, Lcom/guochao/faceshow/bean/LiveActivityDialogBean;

    invoke-virtual {p0, p1, p2}, Lc8/b$b;->a(Lcom/guochao/faceshow/bean/LiveActivityDialogBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
