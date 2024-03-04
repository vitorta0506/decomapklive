.class public Lcom/guochao/faceshow/aaspring/utils/LutTransformation;
.super Lcom/bumptech/glide/load/resource/bitmap/f;
.source "SourceFile"


# static fields
.field private static lutTransformation:Lcom/guochao/faceshow/aaspring/utils/LutTransformation;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/f;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/LutTransformation;->context:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/utils/LutTransformation;
    .locals 2

    .line 1
    const-class v0, Ljc/g;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/LutTransformation;->lutTransformation:Lcom/guochao/faceshow/aaspring/utils/LutTransformation;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/LutTransformation;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/utils/LutTransformation;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/guochao/faceshow/aaspring/utils/LutTransformation;->lutTransformation:Lcom/guochao/faceshow/aaspring/utils/LutTransformation;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/LutTransformation;->lutTransformation:Lcom/guochao/faceshow/aaspring/utils/LutTransformation;

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method protected transform(Lg0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0
    .param p1    # Lg0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/LutTransformation;->context:Landroid/content/Context;

    const/4 p3, 0x2

    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/LutUtils;->applyLutToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method
