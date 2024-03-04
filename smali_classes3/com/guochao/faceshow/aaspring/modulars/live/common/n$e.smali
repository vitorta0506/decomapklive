.class Lcom/guochao/faceshow/aaspring/modulars/live/common/n$e;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;",
            ">;>;)V"
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

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$e;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iput-object p1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->h:Ljava/util/List;

    const/16 p2, 0x8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->f:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->g:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->f(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;Landroid/content/Context;)V

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->i:Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->g:Landroid/widget/ListView;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->i:Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->g:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void
.end method
