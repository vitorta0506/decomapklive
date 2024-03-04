.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->P1(Lcom/guochao/faceshow/aaspring/beans/RecommendUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->a:Lcom/guochao/faceshow/aaspring/beans/RecommendUser;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RecommendUser;->getRecommendList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->isCheck()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->setCheck(Z)V

    const p3, 0x7f0a01ec

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->isCheck()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method
