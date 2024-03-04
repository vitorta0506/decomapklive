.class Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->c:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->isSelectable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->c:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    const v0, 0x7f12002f

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->isSelected()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->c:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->T1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)I

    move-result p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->c:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->Z1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)I

    move-result v1

    const/4 v2, 0x1

    if-lt p1, v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->c:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    const v1, 0x7f12007d

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->Z1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setSelected(Z)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->c:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->V1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)I

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->c:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->Q1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setSelected(Z)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->c:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->W1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)I

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->c:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->Q1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f$a;->c:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->a2(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)V

    return-void
.end method
