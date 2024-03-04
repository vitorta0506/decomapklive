.class Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$a;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean;
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
            "Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean;",
            ">;)V"
        }
    .end annotation

    const/4 p2, -0x1

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean;->getPage()Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean;->getPage()Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean;->getPage()Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean;->getTotalPage()I

    move-result v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$a;->a:I

    if-ge v1, v2, :cond_0

    .line 3
    new-instance p1, Lg7/a;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1, p2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$a;->onFailure(Lg7/a;)V

    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean;->getPage()Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addDatas(Ljava/util/List;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lg7/a;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1, p2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$a;->onFailure(Lg7/a;)V

    :goto_0
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$a;->a(Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
