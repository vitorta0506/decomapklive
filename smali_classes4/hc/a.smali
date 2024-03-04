.class public Lhc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lhc/a;->c(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lhc/a;->x(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0, v0, p2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/h;->d()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->Z0(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    new-instance v1, Lhc/a$a;

    invoke-direct {v1, p0, p2, p1}, Lhc/a$a;-><init>(Landroid/widget/ImageView;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    return-void
.end method

.method private static c(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lhc/a;->x(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-static {p0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p0

    new-instance v0, Lhc/a$c;

    invoke-direct {v0, p1}, Lhc/a$c;-><init>(Ljava/io/File;)V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p0

    new-instance p1, Lhc/a$b;

    invoke-direct {p1}, Lhc/a$b;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method public static d(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/guochao/lib_core/R$mipmap;->icon_head_default:I

    invoke-static {p0, p1, v0}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    return-void
.end method

.method public static e(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 0

    sget p2, Lcom/guochao/lib_core/R$mipmap;->icon_head_default:I

    invoke-static {p0, p1, p2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    return-void
.end method

.method public static f(Landroid/widget/ImageView;Ljava/lang/String;IZ)V
    .locals 0

    sget p2, Lcom/guochao/lib_core/R$mipmap;->ic_default_mvp:I

    invoke-static {p0, p1, p2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    return-void
.end method

.method public static g(Landroid/widget/ImageView;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lhc/a;->m(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    return-void
.end method

.method public static h(Landroid/widget/ImageView;Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lhc/a;->m(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    return-void
.end method

.method public static i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lhc/a;->m(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    return-void
.end method

.method public static j(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lhc/a;->m(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    return-void
.end method

.method public static k(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lhc/a;->n(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;Z)V

    return-void
.end method

.method public static l(Ljava/lang/String;Landroid/widget/ImageView;ILandroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p0, p2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    return-void
.end method

.method private static m(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lhc/a;->n(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;Z)V

    return-void
.end method

.method public static n(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;Z)V
    .locals 7

    if-eqz p0, :cond_9

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    instance-of v0, v0, Landroid/app/Application;

    if-nez v0, :cond_2

    .line 4
    invoke-static {p0}, Lhc/a;->w(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance v0, Lcom/bumptech/glide/request/h;

    invoke-direct {v0}, Lcom/bumptech/glide/request/h;-><init>()V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v1

    .line 8
    instance-of v2, p0, Lcom/guochao/faceshow/views/NormalCircleImageView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v1}, Lcom/bumptech/glide/h;->b()Lcom/bumptech/glide/g;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/g;->Y0(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p3

    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/g;->i()Lcom/bumptech/glide/load/resource/bitmap/g;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/bumptech/glide/g;->h1(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/g;

    move-result-object p3

    .line 10
    move-object v1, p0

    check-cast v1, Lcom/guochao/faceshow/views/NormalCircleImageView;

    .line 11
    invoke-virtual {v1, p1, p2}, Lcom/guochao/faceshow/views/NormalCircleImageView;->b(Ljava/lang/Object;I)V

    .line 12
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->e()Lcom/bumptech/glide/request/a;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/request/h;

    .line 13
    invoke-virtual {v1}, Lcom/guochao/faceshow/views/NormalCircleImageView;->getBorderWidth()I

    move-result p1

    .line 14
    invoke-virtual {v1}, Lcom/guochao/faceshow/views/NormalCircleImageView;->getBorderColor()I

    move-result v2

    if-nez p1, :cond_3

    .line 15
    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {p1}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>()V

    goto :goto_0

    .line 16
    :cond_3
    new-instance v5, Ljc/d;

    int-to-float p1, p1

    invoke-virtual {v1}, Lcom/guochao/faceshow/views/NormalCircleImageView;->a()Z

    move-result v1

    invoke-direct {v5, p1, v2, v1}, Ljc/d;-><init>(FIZ)V

    move-object p1, v5

    :goto_0
    const/4 v1, 0x1

    move-object v6, p3

    move-object p3, p1

    move-object p1, v6

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/h;->q(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 18
    invoke-static {}, Lm0/d;->i()Lm0/d;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/g;->h1(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/g;

    const/4 v1, 0x0

    :goto_1
    const/4 v2, -0x1

    if-eq p2, v2, :cond_5

    .line 19
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/request/a;->l(I)Lcom/bumptech/glide/request/a;

    .line 20
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    :cond_5
    if-nez p3, :cond_6

    .line 21
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->j()Lcom/bumptech/glide/request/a;

    if-eqz p4, :cond_8

    .line 22
    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->d()Lcom/bumptech/glide/request/a;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/bumptech/glide/request/h;

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 23
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/request/a;->q0(Le0/h;)Lcom/bumptech/glide/request/a;

    goto :goto_2

    :cond_7
    const/4 p2, 0x2

    new-array p2, p2, [Le0/h;

    aput-object p3, p2, v4

    .line 24
    new-instance p3, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {p3}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>()V

    aput-object p3, p2, v3

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/request/a;->t0([Le0/h;)Lcom/bumptech/glide/request/a;

    .line 25
    :cond_8
    :goto_2
    sget-object p2, Lcom/bumptech/glide/load/engine/j;->a:Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/request/a;->h(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/request/a;

    .line 26
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->y0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    :cond_9
    :goto_3
    return-void
.end method

.method public static o(Landroid/widget/ImageView;Ljava/lang/String;II)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 2
    new-instance v1, Ljc/a;

    invoke-direct {v1, p2, p3}, Ljc/a;-><init>(II)V

    invoke-static {p0, p1, v0, v1}, Lhc/a;->m(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static p(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lgi/b;

    invoke-direct {v0}, Lgi/b;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lhc/a;->m(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static q(Ljava/lang/String;Landroid/widget/ImageView;ILandroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p0, p2}, Lhc/a;->p(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method

.method public static r(Landroid/widget/ImageView;Ljava/lang/Object;II)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljc/e;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljc/e;-><init>(Landroid/content/Context;I)V

    invoke-static {p0, p1, p2, v0}, Lhc/a;->m(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static s(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    return-void
.end method

.method public static t(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x19

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Ljc/a;

    invoke-direct {v0, v2, v1}, Ljc/a;-><init>(II)V

    invoke-static {p0, p1, p2, v0}, Lhc/a;->i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 3
    new-instance v0, Ljc/a;

    invoke-direct {v0, v2, v1}, Ljc/a;-><init>(II)V

    invoke-static {p0, p1, p2, v0}, Lhc/a;->i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    :goto_0
    return-void
.end method

.method public static u(Landroid/widget/ImageView;Ljava/lang/String;ZI)V
    .locals 2
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    const/4 v0, 0x3

    const/16 v1, 0x19

    if-eqz p2, :cond_0

    .line 1
    new-instance p2, Ljc/f;

    invoke-direct {p2, v1, v0}, Ljc/f;-><init>(II)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Ljc/a;

    invoke-direct {p2, v1, v0}, Ljc/a;-><init>(II)V

    .line 3
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1, p3, p2}, Lhc/a;->i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    goto :goto_1

    :cond_1
    const/4 p3, -0x1

    .line 5
    invoke-static {p0, p1, p3, p2}, Lhc/a;->i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    :goto_1
    return-void
.end method

.method public static v(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    new-instance v0, Ljc/f;

    const-string v1, "#1A000000"

    .line 2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xf

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Ljc/f;-><init>(III)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/a;->q0(Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    sget v0, Lcom/guochao/lib_core/R$mipmap;->live_loading_bj:I

    .line 3
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    const/high16 v0, -0x80000000

    .line 4
    invoke-virtual {p1, v0, v0}, Lcom/bumptech/glide/request/a;->a0(II)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    .line 5
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    return-void
.end method

.method private static w(Landroid/view/View;)Landroid/app/Activity;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 3
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 5
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static x(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/guochao/faceshow/utils/Md5;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/io/File;

    const-string v1, "/banner_image/"

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
