.class Lcom/bumptech/glide/load/resource/gif/f$a;
.super Ls0/c;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls0/c<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field final b:I

.field private final c:J

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls0/c;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/f$a;->a:Landroid/os/Handler;

    .line 3
    iput p2, p0, Lcom/bumptech/glide/load/resource/gif/f$a;->b:I

    .line 4
    iput-wide p3, p0, Lcom/bumptech/glide/load/resource/gif/f$a;->c:J

    return-void
.end method


# virtual methods
.method a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/f$a;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/f$a;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lt0/f;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lt0/f<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/f$a;->d:Landroid/graphics/Bitmap;

    .line 3
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/f$a;->a:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/bumptech/glide/load/resource/gif/f$a;->a:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/bumptech/glide/load/resource/gif/f$a;->c:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lt0/f;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/f$a;->onResourceReady(Landroid/graphics/Bitmap;Lt0/f;)V

    return-void
.end method
