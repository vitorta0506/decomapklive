.class public final Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestBannerData$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->requestBannerData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0016J,\u0010\u000b\u001a\u00020\u00062\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0012\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\tH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestBannerData$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
        "Lg7/a;",
        "exp",
        "",
        "onFailure",
        "data",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
        "onResponse",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestBannerData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestBannerData$1$onFailure$list$1;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestBannerData$1$onFailure$list$1;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    const-string v0, "live_banner"

    .line 2
    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestBannerData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getMEventItemBeans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestBannerData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getMEventItemBeans()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestBannerData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->access$filterList(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestBannerData$1;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestBannerData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getMEventItemBeans()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestBannerData$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getMEventItemBeans()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->access$filterList(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p2, "live_banner"

    .line 5
    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
