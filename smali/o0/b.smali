.class public Lo0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo0/e<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lv0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lo0/b;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/u;Le0/e;)Lcom/bumptech/glide/load/engine/u;
    .locals 0
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
            "Landroid/graphics/Bitmap;",
            ">;",
            "Le0/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/u<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    iget-object p2, p0, Lo0/b;->a:Landroid/content/res/Resources;

    invoke-static {p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/u;->c(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/u;)Lcom/bumptech/glide/load/engine/u;

    move-result-object p1

    return-object p1
.end method
