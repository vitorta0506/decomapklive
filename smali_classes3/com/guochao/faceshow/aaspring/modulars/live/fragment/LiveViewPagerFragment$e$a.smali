.class Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e;->a(Lcom/guochao/lib_core/feature/Feature;)Lkotlin/Unit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/lib_core/feature/Feature;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e;Lcom/guochao/lib_core/feature/Feature;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e$a;->a:Lcom/guochao/lib_core/feature/Feature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;->getGiftList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FirstRechargeBean;->getGiftList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->firstRecharge:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->firstRecharge:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const v0, 0x7f11001a

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->firstRecharge:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$e$a;->a:Lcom/guochao/lib_core/feature/Feature;

    invoke-virtual {p1, v0}, Lcom/guochao/lib_core/feature/Feature;->setAvailable(Z)V

    :goto_0
    return-void
.end method
