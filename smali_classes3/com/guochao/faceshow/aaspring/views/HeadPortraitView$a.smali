.class Lcom/guochao/faceshow/aaspring/views/HeadPortraitView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->j(Lp7/h;)V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView$a;->c(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/load/DataSource;Z)Z

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

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
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

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView$a;->a:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return p2
.end method
