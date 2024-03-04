.class public Lic/d;
.super Lcom/bumptech/glide/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/c;Lp0/e;Lp0/h;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lp0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lp0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/c;Lp0/e;Lp0/h;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Class;)Lic/c;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lic/c<",
            "TResourceType;>;"
        }
    .end annotation

    new-instance v0, Lic/c;

    iget-object v1, p0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/c;

    iget-object v2, p0, Lcom/bumptech/glide/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lic/c;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/h;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public B()Lic/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lic/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/h;->b()Lcom/bumptech/glide/g;

    move-result-object v0

    check-cast v0, Lic/c;

    return-object v0
.end method

.method public C()Lic/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lic/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/h;->c()Lcom/bumptech/glide/g;

    move-result-object v0

    check-cast v0, Lic/c;

    return-object v0
.end method

.method public D()Lic/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lic/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/h;->d()Lcom/bumptech/glide/g;

    move-result-object v0

    check-cast v0, Lic/c;

    return-object v0
.end method

.method public E()Lic/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lic/c<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/h;->e()Lcom/bumptech/glide/g;

    move-result-object v0

    check-cast v0, Lic/c;

    return-object v0
.end method

.method public F(Ljava/lang/Object;)Lic/c;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lic/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->h(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public G()Lic/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lic/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/h;->i()Lcom/bumptech/glide/g;

    move-result-object v0

    check-cast v0, Lic/c;

    return-object v0
.end method

.method public H(Landroid/graphics/drawable/Drawable;)Lic/c;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lic/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->m(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/g;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public I(Landroid/net/Uri;)Lic/c;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lic/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->n(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public J(Ljava/io/File;)Lic/c;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lic/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->o(Ljava/io/File;)Lcom/bumptech/glide/g;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public K(Ljava/lang/Integer;)Lic/c;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lic/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->p(Ljava/lang/Integer;)Lcom/bumptech/glide/g;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public L(Ljava/lang/Object;)Lic/c;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lic/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->q(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public M(Ljava/lang/String;)Lic/c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lic/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Class;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/d;->A(Ljava/lang/Class;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b()Lcom/bumptech/glide/g;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lic/d;->B()Lic/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Lcom/bumptech/glide/g;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lic/d;->C()Lic/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/bumptech/glide/g;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lic/d;->D()Lic/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Lcom/bumptech/glide/g;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lic/d;->E()Lic/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Lcom/bumptech/glide/g;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lic/d;->G()Lic/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/d;->H(Landroid/graphics/drawable/Drawable;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic n(Landroid/net/Uri;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/d;->I(Landroid/net/Uri;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic p(Ljava/lang/Integer;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/d;->K(Ljava/lang/Integer;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic q(Ljava/lang/Object;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/d;->L(Ljava/lang/Object;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic r(Ljava/lang/String;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method protected w(Lcom/bumptech/glide/request/h;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lic/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->w(Lcom/bumptech/glide/request/h;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lic/b;

    invoke-direct {v0}, Lic/b;-><init>()V

    invoke-virtual {v0, p1}, Lic/b;->I0(Lcom/bumptech/glide/request/a;)Lic/b;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->w(Lcom/bumptech/glide/request/h;)V

    :goto_0
    return-void
.end method
