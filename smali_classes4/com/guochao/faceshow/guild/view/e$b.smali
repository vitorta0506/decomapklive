.class Lcom/guochao/faceshow/guild/view/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/guild/view/e;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/widget/ImageView;Lbd/b;)V
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
.field final synthetic a:Lbd/b;

.field final synthetic b:Lcom/guochao/faceshow/guild/view/e;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/guild/view/e;Lbd/b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/guild/view/e$b;->b:Lcom/guochao/faceshow/guild/view/e;

    iput-object p2, p0, Lcom/guochao/faceshow/guild/view/e$b;->a:Lbd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/guochao/faceshow/guild/view/e$b;->c(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/load/DataSource;Z)Z

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

    iget-object p1, p0, Lcom/guochao/faceshow/guild/view/e$b;->a:Lbd/b;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lbd/b;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

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

    iget-object p1, p0, Lcom/guochao/faceshow/guild/view/e$b;->a:Lbd/b;

    invoke-interface {p1}, Lbd/b;->a()V

    const/4 p1, 0x0

    return p1
.end method
