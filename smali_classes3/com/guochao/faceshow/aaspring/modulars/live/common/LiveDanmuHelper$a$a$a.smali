.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;->onResourceReady(Ljava/io/File;Lt0/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a$a;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a$a;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/BitmapUtils;->isGif(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a$a;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-static {v1}, Lic/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/c;->f()Lg0/d;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 6
    invoke-static {v1, p1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/a0;->d(Lg0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->access$200(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$b;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->access$100(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;

    iget-object v6, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;->b:Ljava/lang/String;

    iget-object v8, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;->a:Lcom/guochao/faceshow/aaspring/danmu/b;

    const/4 v9, 0x1

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$b;-><init>(Ljava/util/HashMap;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/guochao/faceshow/aaspring/danmu/b;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0

    .line 8
    :cond_0
    new-instance p1, Lcom/waynejo/androidndkgif/GifDecoder;

    invoke-direct {p1}, Lcom/waynejo/androidndkgif/GifDecoder;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a$a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/waynejo/androidndkgif/GifDecoder;->e(Ljava/lang/String;)Z

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;->a:Lcom/guochao/faceshow/aaspring/danmu/b;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/danmu/b;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->access$300(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;Lcom/waynejo/androidndkgif/GifDecoder;)V

    return-object v0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/waynejo/androidndkgif/GifDecoder;->c()I

    move-result v1

    if-gtz v1, :cond_2

    return-object v0

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/waynejo/androidndkgif/GifDecoder;->c()I

    move-result v1

    new-array v4, v1, [Lcom/guochao/faceshow/aaspring/views/e;

    .line 14
    invoke-virtual {p1}, Lcom/waynejo/androidndkgif/GifDecoder;->c()I

    move-result v1

    new-array v5, v1, [I

    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p1}, Lcom/waynejo/androidndkgif/GifDecoder;->c()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 16
    new-instance v2, Lcom/guochao/faceshow/aaspring/views/e;

    invoke-virtual {p1, v1}, Lcom/waynejo/androidndkgif/GifDecoder;->b(I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    invoke-direct {v2, v3, v6}, Lcom/guochao/faceshow/aaspring/views/e;-><init>(Landroid/graphics/Bitmap;I)V

    aput-object v2, v4, v1

    .line 17
    invoke-virtual {p1, v1}, Lcom/waynejo/androidndkgif/GifDecoder;->a(I)I

    move-result v2

    aput v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->access$300(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;Lcom/waynejo/androidndkgif/GifDecoder;)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->access$200(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;

    iget-object v3, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    iget-object v6, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a;->a:Lcom/guochao/faceshow/aaspring/danmu/b;

    const/4 v7, 0x2

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;[Lcom/guochao/faceshow/aaspring/views/e;[ILcom/guochao/faceshow/aaspring/danmu/b;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$a$a;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
