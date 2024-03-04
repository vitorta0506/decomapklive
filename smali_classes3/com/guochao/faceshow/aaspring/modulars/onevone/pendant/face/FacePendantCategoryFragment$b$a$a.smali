.class Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;->d:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->a:I

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;)I

    move-result v0

    if-eq v1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;->d:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->h:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->setLastFaceMotion(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;->d:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lq9/a;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;->d:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lq9/a;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;->d:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->h:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    invoke-interface {v0, v1}, Lq9/a;->t1(Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;)V

    :cond_1
    return-void
.end method
