.class public final Lcom/tencent/tmediacodec/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Lcom/tencent/tmediacodec/a;

.field private static g:Z

.field private static h:Z


# instance fields
.field public a:Lcom/tencent/tmediacodec/d/b;

.field public b:Z

.field public c:Z

.field public final d:Lcom/tencent/tmediacodec/c/a;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/tmediacodec/a;

    invoke-direct {v0}, Lcom/tencent/tmediacodec/a;-><init>()V

    sput-object v0, Lcom/tencent/tmediacodec/a;->f:Lcom/tencent/tmediacodec/a;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/tencent/tmediacodec/a;->g:Z

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/tencent/tmediacodec/a;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/tencent/tmediacodec/d/b;->e:Lcom/tencent/tmediacodec/d/b;

    iput-object v0, p0, Lcom/tencent/tmediacodec/a;->a:Lcom/tencent/tmediacodec/d/b;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/tencent/tmediacodec/a;->b:Z

    .line 4
    new-instance v1, Lcom/tencent/tmediacodec/c/a;

    invoke-direct {v1}, Lcom/tencent/tmediacodec/c/a;-><init>()V

    iput-object v1, p0, Lcom/tencent/tmediacodec/a;->d:Lcom/tencent/tmediacodec/c/a;

    .line 5
    iput-boolean v0, p0, Lcom/tencent/tmediacodec/a;->e:Z

    return-void
.end method

.method public static a()Lcom/tencent/tmediacodec/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/tmediacodec/a;->f:Lcom/tencent/tmediacodec/a;

    return-object v0
.end method

.method public static a(Landroid/media/MediaFormat;Lcom/tencent/tmediacodec/b;)Lcom/tencent/tmediacodec/b/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createDirectCodecWrapper mediaFormat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " createBy:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object p0, p1, Lcom/tencent/tmediacodec/b;->i:Lcom/tencent/tmediacodec/b$a;

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " nameOrType:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p0, p1, Lcom/tencent/tmediacodec/b;->h:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TCodecManager"

    .line 8
    invoke-static {v0, p0}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object p0, p1, Lcom/tencent/tmediacodec/b;->i:Lcom/tencent/tmediacodec/b$a;

    .line 10
    sget-object v0, Lcom/tencent/tmediacodec/b$a;->a:Lcom/tencent/tmediacodec/b$a;

    if-ne p0, v0, :cond_1

    .line 11
    new-instance p0, Lcom/tencent/tmediacodec/b/c;

    .line 12
    iget-object p1, p1, Lcom/tencent/tmediacodec/b;->h:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/tmediacodec/b/c;-><init>(Landroid/media/MediaCodec;)V

    return-object p0

    .line 14
    :cond_1
    new-instance p0, Lcom/tencent/tmediacodec/b/c;

    .line 15
    iget-object p1, p1, Lcom/tencent/tmediacodec/b;->h:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/tmediacodec/b/c;-><init>(Landroid/media/MediaCodec;)V

    return-object p0
.end method

.method public static b(Landroid/media/MediaFormat;Lcom/tencent/tmediacodec/b;)Lcom/tencent/tmediacodec/b/b;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createNewReuseCodecWrapper mediaFormat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " createBy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p1, Lcom/tencent/tmediacodec/b;->i:Lcom/tencent/tmediacodec/b$a;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nameOrType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p1, Lcom/tencent/tmediacodec/b;->h:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TCodecManager"

    .line 8
    invoke-static {v1, v0}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "mime"

    .line 9
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {p0}, Lcom/tencent/tmediacodec/b/d;->a(Landroid/media/MediaFormat;)Lcom/tencent/tmediacodec/b/d;

    move-result-object v1

    .line 11
    sget-object v2, Lcom/tencent/tmediacodec/a;->f:Lcom/tencent/tmediacodec/a;

    .line 12
    iget-object v2, v2, Lcom/tencent/tmediacodec/a;->a:Lcom/tencent/tmediacodec/d/b;

    .line 13
    iget v3, v2, Lcom/tencent/tmediacodec/d/b;->b:I

    .line 14
    iget v4, v1, Lcom/tencent/tmediacodec/b/d;->b:I

    .line 15
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 16
    iget v4, v2, Lcom/tencent/tmediacodec/d/b;->c:I

    .line 17
    iget v5, v1, Lcom/tencent/tmediacodec/b/d;->c:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 18
    iget-boolean v5, v2, Lcom/tencent/tmediacodec/d/b;->a:Z

    if-eqz v5, :cond_1

    .line 19
    iput v3, v2, Lcom/tencent/tmediacodec/d/b;->b:I

    .line 20
    iput v4, v2, Lcom/tencent/tmediacodec/d/b;->c:I

    .line 21
    :cond_1
    iget-object v5, v1, Lcom/tencent/tmediacodec/b/d;->j:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v3, v4, v6}, Lcom/tencent/tmediacodec/f/c;->a(Ljava/lang/String;IIZ)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 22
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 23
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "initFormatWrapper initWidth:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " initHeight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " initMaxInputSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v8, "reusePolicy:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "ReuseHelper"

    invoke-static {v7, v2}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_2
    iput v3, v1, Lcom/tencent/tmediacodec/b/d;->g:I

    .line 25
    iput v4, v1, Lcom/tencent/tmediacodec/b/d;->h:I

    .line 26
    iput v5, v1, Lcom/tencent/tmediacodec/b/d;->i:I

    .line 27
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-string v5, "max-input-size"

    invoke-virtual {p0, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 28
    invoke-virtual {v1}, Lcom/tencent/tmediacodec/b/d;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "max-width"

    .line 29
    invoke-virtual {p0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "max-height"

    .line 30
    invoke-virtual {p0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 31
    :cond_3
    iget-object p0, p1, Lcom/tencent/tmediacodec/b;->i:Lcom/tencent/tmediacodec/b$a;

    .line 32
    sget-object v2, Lcom/tencent/tmediacodec/b$a;->a:Lcom/tencent/tmediacodec/b$a;

    if-ne p0, v2, :cond_4

    .line 33
    iget-object p0, p1, Lcom/tencent/tmediacodec/b;->h:Ljava/lang/String;

    .line 34
    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/tencent/tmediacodec/b/e;->a(Landroid/media/MediaCodec;Ljava/lang/String;Lcom/tencent/tmediacodec/b/d;)Lcom/tencent/tmediacodec/b/b;

    move-result-object p0

    return-object p0

    .line 35
    :cond_4
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/tencent/tmediacodec/b/e;->a(Landroid/media/MediaCodec;Ljava/lang/String;Lcom/tencent/tmediacodec/b/d;)Lcom/tencent/tmediacodec/b/b;

    move-result-object p0

    return-object p0
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/tmediacodec/a;->h:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/tencent/tmediacodec/b/b;)V
    .locals 3
    .param p1    # Lcom/tencent/tmediacodec/b/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    iget-boolean v0, p0, Lcom/tencent/tmediacodec/a;->b:Z

    if-eqz v0, :cond_1

    .line 18
    instance-of v0, p1, Lcom/tencent/tmediacodec/b/f;

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/tencent/tmediacodec/a;->d:Lcom/tencent/tmediacodec/c/a;

    check-cast p1, Lcom/tencent/tmediacodec/b/e;

    .line 20
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "removeFromRunning codecWrapper:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CodecWrapperManager"

    invoke-static {v2, v1}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    iget-object v0, v0, Lcom/tencent/tmediacodec/c/a;->b:Lcom/tencent/tmediacodec/c/b;

    invoke-virtual {v0, p1}, Lcom/tencent/tmediacodec/c/b;->b(Lcom/tencent/tmediacodec/b/e;)V

    :cond_1
    return-void
.end method

.method public final b(Lcom/tencent/tmediacodec/b/b;)V
    .locals 3
    .param p1    # Lcom/tencent/tmediacodec/b/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    iget-boolean v0, p0, Lcom/tencent/tmediacodec/a;->b:Z

    if-eqz v0, :cond_1

    .line 37
    instance-of v0, p1, Lcom/tencent/tmediacodec/b/f;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/tencent/tmediacodec/a;->d:Lcom/tencent/tmediacodec/c/a;

    check-cast p1, Lcom/tencent/tmediacodec/b/e;

    .line 39
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "transTokeep codecWrapper:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CodecWrapperManager"

    invoke-static {v2, v1}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    iget-object v1, v0, Lcom/tencent/tmediacodec/c/a;->b:Lcom/tencent/tmediacodec/c/b;

    invoke-virtual {v1, p1}, Lcom/tencent/tmediacodec/c/b;->b(Lcom/tencent/tmediacodec/b/e;)V

    .line 42
    iget-object v0, v0, Lcom/tencent/tmediacodec/c/a;->a:Lcom/tencent/tmediacodec/c/b;

    invoke-virtual {v0, p1}, Lcom/tencent/tmediacodec/c/b;->a(Lcom/tencent/tmediacodec/b/e;)V

    :cond_1
    return-void
.end method
