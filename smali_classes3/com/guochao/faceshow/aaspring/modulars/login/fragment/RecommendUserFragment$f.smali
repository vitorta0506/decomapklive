.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$f;
.super Lk9/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    invoke-direct {p0}, Lk9/b;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->a:Lcom/guochao/faceshow/aaspring/beans/RecommendUser;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RecommendUser;->getRecommendList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->a:Lcom/guochao/faceshow/aaspring/beans/RecommendUser;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RecommendUser;->getRecommendList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPopularity(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->d:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onThemeColorChanged(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
