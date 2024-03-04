.class Lcom/bumptech/glide/load/resource/bitmap/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/m$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/bitmap/w;

.field private final b:Lv0/c;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/w;Lv0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/z$a;->a:Lcom/bumptech/glide/load/resource/bitmap/w;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/z$a;->b:Lv0/c;

    return-void
.end method


# virtual methods
.method public a(Lg0/d;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/z$a;->b:Lv0/c;

    invoke-virtual {v0}, Lv0/c;->a()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lg0/d;->c(Landroid/graphics/Bitmap;)V

    .line 3
    :cond_0
    throw v0

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/z$a;->a:Lcom/bumptech/glide/load/resource/bitmap/w;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/w;->c()V

    return-void
.end method
