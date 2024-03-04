.class Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;->onNext(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/MobileBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/MobileBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/MobileBean;
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
            "Lcom/guochao/faceshow/aaspring/beans/MobileBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/MobileBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 2
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;->onFailure(Lg7/a;)V

    return-void

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    iget-object v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MobileBean;->getMobilelist()Ljava/util/List;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;Ljava/util/List;Ljava/util/List;)V

    :cond_2
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
            "Lcom/guochao/faceshow/aaspring/beans/MobileBean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/MobileBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;->a(Lcom/guochao/faceshow/aaspring/beans/MobileBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
