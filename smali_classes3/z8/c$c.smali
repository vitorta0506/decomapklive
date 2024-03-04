.class Lz8/c$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz8/c;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lz8/c;


# direct methods
.method constructor <init>(Lz8/c;)V
    .locals 0

    iput-object p1, p0, Lz8/c$c;->a:Lz8/c;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;
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
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    iget-object p2, p0, Lz8/c$c;->a:Lz8/c;

    iget-object p2, p2, Lz8/c;->k:Lz8/b;

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getMatchList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lz8/c$c;->a:Lz8/c;

    iget-object p2, p2, Lz8/c;->k:Lz8/b;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getMatchList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lz8/b;->o(Ljava/util/List;)V

    .line 4
    iget-object p2, p0, Lz8/c$c;->a:Lz8/c;

    iget-object p2, p2, Lz8/c;->p:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Lz8/c$c;->a:Lz8/c;

    iget-object p2, p2, Lz8/c;->q:Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getMatchList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;->z(Ljava/util/List;J)V

    :cond_1
    return-void

    .line 6
    :cond_2
    :goto_0
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lz8/c$c;->onFailure(Lg7/a;)V

    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lz8/c$c;->a:Lz8/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lz8/c;->k(Lz8/c;Z)Z

    .line 3
    iget-object v0, p0, Lz8/c$c;->a:Lz8/c;

    invoke-static {v0}, Lz8/c;->g(Lz8/c;)V

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
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;",
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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    invoke-virtual {p0, p1, p2}, Lz8/c$c;->a(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
