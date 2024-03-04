.class Lj8/a$a;
.super Lcom/guochao/faceshow/aaspring/manager/a$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/a;->h()V
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
.field final synthetic a:Lj8/a;


# direct methods
.method constructor <init>(Lj8/a;)V
    .locals 0

    iput-object p1, p0, Lj8/a$a;->a:Lj8/a;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/manager/a$j;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lj8/a$a;->a:Lj8/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lj8/a;->e(Lj8/a;Z)Z

    .line 2
    iget-object p1, p0, Lj8/a$a;->a:Lj8/a;

    invoke-static {p1}, Lj8/a;->c(Lj8/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lj8/a$a;->a:Lj8/a;

    invoke-static {p1}, Lj8/a;->c(Lj8/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object p1, p0, Lj8/a$a;->a:Lj8/a;

    invoke-static {p1}, Lj8/a;->d(Lj8/a;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p3, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lj8/a$a;->d(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/io/File;)V

    return-void
.end method

.method public d(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/io/File;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mp4"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj8/a$a;->a:Lj8/a;

    invoke-static {p1}, Lj8/a;->a(Lj8/a;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lj8/a$a;->a:Lj8/a;

    invoke-static {p1}, Lj8/a;->a(Lj8/a;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    new-instance p1, Lcom/tencent/qgame/animplayer/AnimView;

    iget-object p2, p0, Lj8/a$a;->a:Lj8/a;

    invoke-static {p2}, Lj8/a;->a(Lj8/a;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/qgame/animplayer/AnimView;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object p2, p0, Lj8/a$a;->a:Lj8/a;

    invoke-static {p2, p1}, Lj8/a;->b(Lj8/a;Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/AnimView;

    .line 5
    iget-object p2, p0, Lj8/a$a;->a:Lj8/a;

    invoke-static {p2}, Lj8/a;->a(Lj8/a;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string p2, "im"

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Lcom/tencent/qgame/animplayer/AnimView;->setLoop(I)V

    .line 8
    new-instance p2, Lj8/a$a$a;

    invoke-direct {p2, p0, p1}, Lj8/a$a$a;-><init>(Lj8/a$a;Lcom/tencent/qgame/animplayer/AnimView;)V

    invoke-static {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils;->startPlay(Lcom/tencent/qgame/animplayer/AnimView;Ljava/io/File;Lcom/tencent/qgame/animplayer/inter/IAnimListener;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    .line 9
    iget-object p1, p0, Lj8/a$a;->a:Lj8/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lj8/a;->e(Lj8/a;Z)Z

    .line 10
    iget-object p1, p0, Lj8/a$a;->a:Lj8/a;

    invoke-static {p1}, Lj8/a;->c(Lj8/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lj8/a$a;->a:Lj8/a;

    invoke-static {p1}, Lj8/a;->c(Lj8/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12
    :cond_1
    iget-object p1, p0, Lj8/a$a;->a:Lj8/a;

    invoke-static {p1}, Lj8/a;->d(Lj8/a;)V

    :cond_2
    :goto_0
    return-void
.end method
