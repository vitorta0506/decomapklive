.class Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->g2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$c;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$c;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->X1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$c;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->Y1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$c;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->X1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$c;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->X1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$c;->a:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->reset()V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$c;->a(Ljava/util/List;)V

    return-void
.end method
