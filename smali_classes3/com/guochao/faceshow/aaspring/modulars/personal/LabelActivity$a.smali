.class Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/modulars/personal/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$a;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/personal/d;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/personal/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/personal/d;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/modulars/personal/d;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/d;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/d;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$a;->a:I

    if-ne v1, v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/d;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setDatas(Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/d;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addDatas(Ljava/util/List;)V

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/d;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p2, 0x1

    :cond_2
    invoke-virtual {v1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    return-void

    .line 6
    :cond_3
    :goto_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$a;->a:I

    if-ne p1, v0, :cond_4

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    goto :goto_2

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    :goto_2
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/modulars/personal/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$a;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/personal/d;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$a;->a(Lcom/guochao/faceshow/aaspring/modulars/personal/d;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
