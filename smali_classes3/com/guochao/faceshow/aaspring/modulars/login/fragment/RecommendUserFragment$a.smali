.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->enter(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c<",
        "Lg7/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lg7/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->mImageView:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$a;->a:Landroid/view/View;

    const v0, 0x7f0a0801

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method
