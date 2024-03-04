.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$b;->a(Lcom/guochao/faceshow/aaspring/beans/RecommendUser;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/beans/RecommendUser;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$b;Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;Lcom/guochao/faceshow/aaspring/beans/RecommendUser;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$b$b;->c:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$b;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$b$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$b$b;->b:Lcom/guochao/faceshow/aaspring/beans/RecommendUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$b$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;->d()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$b$b;->c:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$b;->c:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$d;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$b$b;->c:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$b;->c:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$d;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$b$b;->b:Lcom/guochao/faceshow/aaspring/beans/RecommendUser;

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$d;->m(Lcom/guochao/faceshow/aaspring/beans/RecommendUser;)V

    :cond_0
    return-void
.end method
