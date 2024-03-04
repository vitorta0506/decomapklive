.class Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;->S1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$a;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;",
            ">;>;)V"
        }
    .end annotation

    const/4 p2, -0x1

    const-string v0, ""

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lg7/a;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1, p2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$a;->onFailure(Lg7/a;)V

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance p1, Lg7/a;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1, p2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$a;->onFailure(Lg7/a;)V

    return-void

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;)V

    return-void
.end method
