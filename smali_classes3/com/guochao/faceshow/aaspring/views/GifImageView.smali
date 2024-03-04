.class public Lcom/guochao/faceshow/aaspring/views/GifImageView;
.super Lcom/github/chrisbanes/photoview/PhotoView;
.source "SourceFile"


# instance fields
.field c:Landroid/graphics/Movie;

.field d:J

.field private e:Z

.field private f:Z

.field g:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->e:Z

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->e:Z

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->e:Z

    .line 9
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->f:Z

    return-void
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/views/GifImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->f:Z

    return p0
.end method

.method private g()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/GifImageView$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/GifImageView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/GifImageView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->c:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->f:Z

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/GifImageView;->g()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->f:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->e:Z

    return-void
.end method

.method public setGifDrawable(Landroid/net/Uri;)V
    .locals 2

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/GifImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/UriUtils;->uriToFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 16
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->c:Landroid/graphics/Movie;

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->c:Landroid/graphics/Movie;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->f:Z

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/GifImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->f:Z

    .line 23
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/GifImageView;->g()V

    :catch_0
    :goto_0
    return-void
.end method

.method public setGifDrawable(Ljava/io/File;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/GifImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->c:Landroid/graphics/Movie;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->f:Z

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/GifImageView;->g()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->c:Landroid/graphics/Movie;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/GifImageView;->f:Z

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/GifImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :catch_0
    :goto_1
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/github/chrisbanes/photoview/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    instance-of v0, p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    :cond_0
    return-void
.end method
