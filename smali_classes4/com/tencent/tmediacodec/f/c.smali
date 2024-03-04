.class public final Lcom/tencent/tmediacodec/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "csd-0"

    const-string v1, "csd-1"

    const-string v2, "csd-2"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmediacodec/f/c;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x10

    add-int/lit8 p0, p0, -0x1

    .line 19
    div-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static a(Lcom/tencent/tmediacodec/b/e;Lcom/tencent/tmediacodec/b/d;)I
    .locals 2
    .param p0    # Lcom/tencent/tmediacodec/b/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/tencent/tmediacodec/b/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    iget v0, p1, Lcom/tencent/tmediacodec/b/d;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p1, Lcom/tencent/tmediacodec/b/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 9
    iget-object v1, p1, Lcom/tencent/tmediacodec/b/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget p0, p1, Lcom/tencent/tmediacodec/b/d;->i:I

    add-int/2addr p0, v0

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p1, Lcom/tencent/tmediacodec/b/d;->j:Ljava/lang/String;

    iget v1, p1, Lcom/tencent/tmediacodec/b/d;->b:I

    iget p1, p1, Lcom/tencent/tmediacodec/b/d;->c:I

    iget-boolean p0, p0, Lcom/tencent/tmediacodec/b/e;->d:Z

    invoke-static {v0, v1, p1, p0}, Lcom/tencent/tmediacodec/f/c;->a(Ljava/lang/String;IIZ)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static a(Ljava/lang/String;IIZ)I
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    if-ne p2, v0, :cond_0

    goto/16 :goto_5

    .line 12
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 p0, -0x1

    goto :goto_1

    :sswitch_0
    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "video/avc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "video/mp4v-es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "video/hevc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "video/3gpp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v0

    .line 13
    :pswitch_0
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getModel()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BRAVIA 4K 2015"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 14
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getManufacturer()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Amazon"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 15
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getModel()Ljava/lang/String;

    move-result-object p0

    const-string v1, "KFSOWI"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 16
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getModel()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AFTS"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz p3, :cond_7

    goto :goto_2

    .line 17
    :cond_7
    invoke-static {p1}, Lcom/tencent/tmediacodec/f/c;->a(I)I

    move-result p0

    invoke-static {p2}, Lcom/tencent/tmediacodec/f/c;->a(I)I

    move-result p1

    mul-int p0, p0, p1

    mul-int/lit8 p0, p0, 0x10

    mul-int/lit8 p1, p0, 0x10

    goto :goto_3

    :cond_8
    :goto_2
    return v0

    :pswitch_1
    mul-int p1, p1, p2

    goto :goto_4

    :pswitch_2
    mul-int p1, p1, p2

    :goto_3
    const/4 v2, 0x2

    :goto_4
    mul-int/lit8 p1, p1, 0x3

    mul-int/lit8 v2, v2, 0x2

    .line 18
    div-int/2addr p1, v2

    return p1

    :cond_9
    :goto_5
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/media/MediaCodec;)Ljava/lang/String;
    .locals 0
    .param p0    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/Surface;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    :try_start_0
    const-class v0, Landroid/view/Surface;

    const-string v1, "mName"

    invoke-static {v0, v1}, Lcom/tencent/tmediacodec/f/b;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v0, "TUtils"

    const-string v1, "getSurfaceTextureName failed"

    .line 6
    invoke-static {v0, v1, p0}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/media/MediaFormat;)Ljava/util/ArrayList;
    .locals 4
    .param p0    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            ")",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 21
    :goto_0
    sget-object v2, Lcom/tencent/tmediacodec/f/c;->a:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 22
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a()Z
    .locals 7

    .line 24
    const-class v0, Lcom/tencent/tmediacodec/f/c;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-boolean v1, Lcom/tencent/tmediacodec/f/c;->b:Z

    if-nez v1, :cond_8

    const-string v1, "dangal"

    .line 26
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_5

    .line 27
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-gt v1, v3, :cond_0

    const-string v4, "EML-L29"

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_0
    if-ge v1, v3, :cond_6

    .line 28
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x236fe21d

    const/4 v6, 0x2

    if-eq v4, v5, :cond_3

    const v5, 0x1e9d52

    if-eq v4, v5, :cond_2

    const v5, 0x1e9d5f

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "AFTN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const-string v4, "AFTA"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const-string v4, "JSN-L21"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x2

    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    if-eq v3, v2, :cond_5

    if-eq v3, v6, :cond_5

    goto :goto_1

    .line 29
    :cond_5
    sput-boolean v2, Lcom/tencent/tmediacodec/f/c;->c:Z

    .line 30
    :cond_6
    :goto_1
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "TUtils"

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceNeedsSetOutputSurfaceWorkaround:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/tencent/tmediacodec/f/c;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_7
    sput-boolean v2, Lcom/tencent/tmediacodec/f/c;->b:Z

    .line 33
    :cond_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    sget-boolean v0, Lcom/tencent/tmediacodec/f/c;->c:Z

    return v0

    :catchall_0
    move-exception v1

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static a(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1
    .param p0    # Landroid/media/MediaCodecInfo$CodecCapabilities;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "adaptive-playback"

    .line 36
    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "video"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1
    .param p0    # Landroid/media/MediaCodecInfo$CodecCapabilities;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "secure-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
