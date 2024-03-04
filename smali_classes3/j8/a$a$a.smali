.class Lj8/a$a$a;
.super Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/a$a;->d(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj8/a$a;


# direct methods
.method constructor <init>(Lj8/a$a;Lcom/tencent/qgame/animplayer/AnimView;)V
    .locals 0

    iput-object p1, p0, Lj8/a$a$a;->a:Lj8/a$a;

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;-><init>(Lcom/tencent/qgame/animplayer/AnimView;)V

    return-void
.end method


# virtual methods
.method public onVideoComplete(Lcom/tencent/qgame/animplayer/AnimView;)V
    .locals 1
    .param p1    # Lcom/tencent/qgame/animplayer/AnimView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lj8/a$a$a;->a:Lj8/a$a;

    iget-object p1, p1, Lj8/a$a;->a:Lj8/a;

    invoke-static {p1}, Lj8/a;->c(Lj8/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lj8/a$a$a;->a:Lj8/a$a;

    iget-object p1, p1, Lj8/a$a;->a:Lj8/a;

    invoke-static {p1}, Lj8/a;->c(Lj8/a;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object p1, p0, Lj8/a$a$a;->a:Lj8/a$a;

    iget-object p1, p1, Lj8/a$a;->a:Lj8/a;

    invoke-static {p1}, Lj8/a;->d(Lj8/a;)V

    return-void
.end method
