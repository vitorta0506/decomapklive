.class Lsa/a$e;
.super Lcom/guochao/faceshow/aaspring/manager/a$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/a;->l(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/ViewGroup;IIILsa/a$i;)V
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
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lsa/a;


# direct methods
.method constructor <init>(Lsa/a;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lsa/a$e;->b:Lsa/a;

    iput-object p2, p0, Lsa/a$e;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/manager/a$j;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/manager/a$j;->b(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    .line 2
    iget-object p1, p0, Lsa/a$e;->b:Lsa/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lsa/a;->a(Lsa/a;Z)Z

    .line 3
    iget-object p1, p0, Lsa/a$e;->b:Lsa/a;

    invoke-static {p1}, Lsa/a;->b(Lsa/a;)V

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

    invoke-virtual {p0, p1, p2, p3}, Lsa/a$e;->d(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/io/File;)V

    return-void
.end method

.method public d(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/io/File;)V
    .locals 1
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

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mp4"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Lcom/tencent/qgame/animplayer/AnimView;

    iget-object p2, p0, Lsa/a$e;->a:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/qgame/animplayer/AnimView;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object p2, p0, Lsa/a$e;->a:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    iget-object p2, p0, Lsa/a$e;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lsa/a$e;->b:Lsa/a;

    invoke-static {v0}, Lsa/a;->f(Lsa/a;)Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p2, v0, :cond_0

    const-string p2, "bigLiveGift"

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    :cond_0
    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Lcom/tencent/qgame/animplayer/AnimView;->setLoop(I)V

    .line 8
    new-instance p2, Lsa/a$e$a;

    invoke-direct {p2, p0, p1}, Lsa/a$e$a;-><init>(Lsa/a$e;Lcom/tencent/qgame/animplayer/AnimView;)V

    invoke-static {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils;->startPlay(Lcom/tencent/qgame/animplayer/AnimView;Ljava/io/File;Lcom/tencent/qgame/animplayer/inter/IAnimListener;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lsa/a$e;->b:Lsa/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lsa/a;->a(Lsa/a;Z)Z

    .line 10
    iget-object p1, p0, Lsa/a$e;->b:Lsa/a;

    invoke-static {p1}, Lsa/a;->b(Lsa/a;)V

    :goto_0
    return-void
.end method
