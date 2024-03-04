.class public final Ls0/h;
.super Ls0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ls0/c<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static final b:Landroid/os/Handler;


# instance fields
.field private final a:Lcom/bumptech/glide/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Ls0/h$a;

    invoke-direct {v2}, Ls0/h$a;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Ls0/h;->b:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/h;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Ls0/c;-><init>(II)V

    .line 2
    iput-object p1, p0, Ls0/h;->a:Lcom/bumptech/glide/h;

    return-void
.end method

.method public static b(Lcom/bumptech/glide/h;II)Ls0/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/h;",
            "II)",
            "Ls0/h<",
            "TZ;>;"
        }
    .end annotation

    new-instance v0, Ls0/h;

    invoke-direct {v0, p0, p1, p2}, Ls0/h;-><init>(Lcom/bumptech/glide/h;II)V

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Ls0/h;->a:Lcom/bumptech/glide/h;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/h;->g(Ls0/k;)V

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lt0/f;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lt0/f<",
            "-TZ;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls0/c;->getRequest()Lcom/bumptech/glide/request/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/bumptech/glide/request/e;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Ls0/h;->b:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
