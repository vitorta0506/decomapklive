.class public Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    const v1, 0x7f0a089f

    const-string v2, "field \'mPlanetView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->mPlanetView:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a00ab

    const-string v2, "field \'mImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0804

    const-string v1, "method \'enter\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment_ViewBinding;->c:Landroid/view/View;

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0a97

    const-string v1, "method \'skip\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 9
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->mPlanetView:Lcom/guochao/faceshow/aaspring/modulars/login/cloud/view/SoulPlanetsView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->mImageView:Landroid/widget/ImageView;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment_ViewBinding;->c:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
