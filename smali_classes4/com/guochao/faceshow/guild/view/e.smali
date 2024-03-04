.class public Lcom/guochao/faceshow/guild/view/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbd/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/c;->b()V

    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/bumptech/glide/c;->w(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/h;->onStop()V

    return-void
.end method

.method public c(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/widget/ImageView;Lbd/b;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->w(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/guild/view/e$a;

    invoke-direct {p2, p0, p4}, Lcom/guochao/faceshow/guild/view/e$a;-><init>(Lcom/guochao/faceshow/guild/view/e;Lbd/b;)V

    .line 2
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/g;->T0(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    return-void
.end method

.method public d(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/widget/ImageView;Lbd/b;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lbd/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->w(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    sget p2, Lcom/guochao/faceshow/guild/R$mipmap;->default_short_bg:I

    .line 2
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    .line 3
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/a;->l(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    .line 4
    invoke-virtual {p1}, Lcom/bumptech/glide/request/a;->i()Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    new-instance p2, Lcom/guochao/faceshow/guild/view/e$b;

    invoke-direct {p2, p0, p4}, Lcom/guochao/faceshow/guild/view/e$b;-><init>(Lcom/guochao/faceshow/guild/view/e;Lbd/b;)V

    .line 5
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/g;->T0(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    return-void
.end method
