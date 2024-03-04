.class Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/PkRecordData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/PkRecordData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/PkRecordData;
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
            "Lcom/guochao/faceshow/aaspring/beans/PkRecordData;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/PkRecordData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->showEmptyViewNoText()V

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;->pkSession:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;->getPkCount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;->getPkCount()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;->pkWin:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;->getWinTimes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;->getWinTimes()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;->pkWinRate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;->getWinRoute()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "0%"

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;->getWinRoute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;->getPkList()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->showEmptyViewNoText()V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->notifyDataLoaded(Z)V

    return-void

    .line 8
    :cond_4
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;->a:I

    if-ne p2, v0, :cond_5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;->getPkList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_5

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->showEmptyViewNoText()V

    .line 10
    :cond_5
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;->a:I

    if-ne p2, v0, :cond_6

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->clearAll()V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;->getPkList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->addDatas(Ljava/util/List;)V

    goto :goto_3

    .line 13
    :cond_6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;->getPkList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->addDatas(Ljava/util/List;)V

    .line 14
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->notifyDataLoaded(Z)V

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
            "Lcom/guochao/faceshow/aaspring/beans/PkRecordData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->showEmptyViewNoText()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->notifyDataLoaded(Z)V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PkRecordData;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$a;->a(Lcom/guochao/faceshow/aaspring/beans/PkRecordData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
