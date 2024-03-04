.class Lcom/guochao/faceshow/activity/InvalitedActivity$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/InvalitedActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/bean/MyInvalitedPersons;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/InvalitedActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/InvalitedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/InvalitedActivity$a;->a:Lcom/guochao/faceshow/activity/InvalitedActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/bean/MyInvalitedPersons;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/bean/MyInvalitedPersons;
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
            "Lcom/guochao/faceshow/bean/MyInvalitedPersons;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/bean/MyInvalitedPersons;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/activity/InvalitedActivity$a;->onFailure(Lg7/a;)V

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/activity/InvalitedActivity$a;->a:Lcom/guochao/faceshow/activity/InvalitedActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/bean/MyInvalitedPersons;->list:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addDatas(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/InvalitedActivity$a;->a:Lcom/guochao/faceshow/activity/InvalitedActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/activity/InvalitedActivity;->notifyDataLoaded(Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/InvalitedActivity$a;->a:Lcom/guochao/faceshow/activity/InvalitedActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activity/InvalitedActivity;->showEmptyView()V

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
            "Lcom/guochao/faceshow/bean/MyInvalitedPersons;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/InvalitedActivity$a;->a:Lcom/guochao/faceshow/activity/InvalitedActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/activity/InvalitedActivity;->notifyDataLoaded(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/InvalitedActivity$a;->a:Lcom/guochao/faceshow/activity/InvalitedActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activity/InvalitedActivity;->showEmptyView()V

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

    check-cast p1, Lcom/guochao/faceshow/bean/MyInvalitedPersons;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/activity/InvalitedActivity$a;->a(Lcom/guochao/faceshow/bean/MyInvalitedPersons;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
