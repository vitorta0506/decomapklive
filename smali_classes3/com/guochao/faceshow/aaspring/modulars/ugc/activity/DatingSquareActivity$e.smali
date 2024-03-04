.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

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
            "Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;",
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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
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
            "Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->E()V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;Ljava/util/List;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 9
    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    if-eqz v0, :cond_2

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    const-string v0, "DatingSquareLanguage"

    .line 14
    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_6

    if-eqz p2, :cond_5

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DatingSquareLanguage;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->V1(ILjava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)V

    return-void
.end method
