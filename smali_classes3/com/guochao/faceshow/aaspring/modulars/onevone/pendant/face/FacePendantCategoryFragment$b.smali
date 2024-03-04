.class Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;
.super Lcom/guochao/faceshow/aaspring/manager/a$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->a2(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/manager/a$j<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/manager/a$j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;DJJ)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super/range {p0 .. p8}, Lcom/guochao/faceshow/aaspring/manager/a$j;->a(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;DJJ)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    const-wide/high16 p5, 0x4059000000000000L    # 100.0

    mul-double p3, p3, p5

    double-to-int p2, p3

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;I)I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->a:I

    const p3, 0x7f0a08ce

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->X1(ILjava/lang/Object;)V

    return-void
.end method

.method public b(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/manager/a$j;->b(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p3, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->d(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/io/File;)V

    return-void
.end method

.method public d(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/io/File;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/manager/a$j;->c(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->a:I

    const v1, 0x7f0a051f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->X1(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;)Ljava/util/Set;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->Q1()Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->Q1()Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;

    move-result-object p1

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    return-void

    .line 8
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$b;Ljava/io/File;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;)V

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;->run(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
