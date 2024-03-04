.class Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->c(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Ls0/k;Z)Z
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/GlideException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Ls0/k<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Ls0/k<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    return p3

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->R1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)I

    move-result p2

    if-lez p2, :cond_4

    iget-object p2, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->S1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)I

    move-result p2

    if-gtz p2, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->R1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)I

    move-result p2

    .line 4
    iget-object p4, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-static {p4}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->S1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)I

    move-result p4

    .line 5
    iget-object p5, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-virtual {p5}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v0, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v0

    add-int/2addr p5, v0

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    int-to-float v2, p5

    div-float v3, v0, v2

    int-to-float p2, p2

    mul-float v4, p2, v1

    int-to-float v5, p4

    div-float/2addr v4, v5

    cmpg-float v3, v4, v3

    if-gez v3, :cond_2

    if-ge p5, p4, :cond_2

    mul-float v5, v5, v1

    div-float/2addr v5, v2

    div-float/2addr v0, p2

    mul-float v5, v5, v0

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->T1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object p2

    const/high16 p4, 0x3fc00000    # 1.5f

    mul-float p5, v5, p4

    mul-float p4, p4, p5

    invoke-virtual {p2, v5, p5, p4}, Lcom/github/chrisbanes/photoview/PhotoView;->e(FFF)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->T1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/github/chrisbanes/photoview/PhotoView;->setScale(F)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-static {p2, v5}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->V1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;F)F

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->T1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/github/chrisbanes/photoview/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->U1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;->a:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->T1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c$a;-><init>(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;)V

    const-wide/16 p4, 0x64

    invoke-virtual {p1, p2, p4, p5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return p3

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
