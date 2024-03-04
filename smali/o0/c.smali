.class public final Lo0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo0/e<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final a:Lg0/d;

.field private final b:Lo0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo0/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field

.field private final c:Lo0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo0/e<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg0/d;Lo0/e;Lo0/e;)V
    .locals 0
    .param p1    # Lg0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lo0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lo0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg0/d;",
            "Lo0/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;",
            "Lo0/e<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo0/c;->a:Lg0/d;

    .line 3
    iput-object p2, p0, Lo0/c;->b:Lo0/e;

    .line 4
    iput-object p3, p0, Lo0/c;->c:Lo0/e;

    return-void
.end method

.method private static b(Lcom/bumptech/glide/load/engine/u;)Lcom/bumptech/glide/load/engine/u;
    .locals 0
    .param p0    # Lcom/bumptech/glide/load/engine/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/u<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/u<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/u;Le0/e;)Lcom/bumptech/glide/load/engine/u;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/engine/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/u<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Le0/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/u<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/u;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lo0/c;->b:Lo0/e;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lo0/c;->a:Lg0/d;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/e;->c(Landroid/graphics/Bitmap;Lg0/d;)Lcom/bumptech/glide/load/resource/bitmap/e;

    move-result-object v0

    .line 5
    invoke-interface {p1, v0, p2}, Lo0/e;->a(Lcom/bumptech/glide/load/engine/u;Le0/e;)Lcom/bumptech/glide/load/engine/u;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    instance-of v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lo0/c;->c:Lo0/e;

    invoke-static {p1}, Lo0/c;->b(Lcom/bumptech/glide/load/engine/u;)Lcom/bumptech/glide/load/engine/u;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lo0/e;->a(Lcom/bumptech/glide/load/engine/u;Le0/e;)Lcom/bumptech/glide/load/engine/u;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
