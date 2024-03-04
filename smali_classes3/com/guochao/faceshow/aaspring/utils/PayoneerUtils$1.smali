.class Lcom/guochao/faceshow/aaspring/utils/PayoneerUtils$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/PayoneerUtils;->getPayonnerLoginOrRegistRequest(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/CheckUrlData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/PayoneerUtils$1;->val$activity:Landroid/app/Activity;

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
            "Lcom/guochao/faceshow/aaspring/beans/CheckUrlData;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/PayoneerUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/beans/CheckUrlData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/CheckUrlData;
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
            "Lcom/guochao/faceshow/aaspring/beans/CheckUrlData;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/CheckUrlData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/CheckUrlData;->getStatus()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/CheckUrlData;->getStatus()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/PayoneerUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/b;->h(Landroid/app/Activity;I)V

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/PayoneerUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

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
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/CheckUrlData;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/PayoneerUtils$1;->onResponse(Lcom/guochao/faceshow/aaspring/beans/CheckUrlData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
