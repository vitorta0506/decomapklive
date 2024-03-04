.class public final Lcom/bumptech/glide/load/resource/gif/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/a$a;


# instance fields
.field private final a:Lg0/d;

.field private final b:Lg0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg0/d;Lg0/b;)V
    .locals 0
    .param p2    # Lg0/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Lg0/d;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/b;->b:Lg0/b;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Lg0/d;

    invoke-interface {v0, p1}, Lg0/d;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public b(I)[B
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->b:Lg0/b;

    if-nez v0, :cond_0

    .line 2
    new-array p1, p1, [B

    return-object p1

    .line 3
    :cond_0
    const-class v1, [B

    invoke-interface {v0, p1, v1}, Lg0/b;->c(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p3    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Lg0/d;

    invoke-interface {v0, p1, p2, p3}, Lg0/d;->e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public d(I)[I
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->b:Lg0/b;

    if-nez v0, :cond_0

    .line 2
    new-array p1, p1, [I

    return-object p1

    .line 3
    :cond_0
    const-class v1, [I

    invoke-interface {v0, p1, v1}, Lg0/b;->c(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method

.method public e([B)V
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->b:Lg0/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lg0/b;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public f([I)V
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->b:Lg0/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lg0/b;->put(Ljava/lang/Object;)V

    return-void
.end method
