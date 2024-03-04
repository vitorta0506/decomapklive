.class public final Lcom/tencent/tmediacodec/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final j:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private k:Z

.field private l:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmediacodec/b/d;->a:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/tencent/tmediacodec/b/d;->b:I

    .line 4
    iput v0, p0, Lcom/tencent/tmediacodec/b/d;->c:I

    .line 5
    iput v0, p0, Lcom/tencent/tmediacodec/b/d;->g:I

    .line 6
    iput v0, p0, Lcom/tencent/tmediacodec/b/d;->h:I

    .line 7
    iput v0, p0, Lcom/tencent/tmediacodec/b/d;->i:I

    .line 8
    iput-object p1, p0, Lcom/tencent/tmediacodec/b/d;->j:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .locals 1
    .param p0    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static a(Landroid/media/MediaFormat;)Lcom/tencent/tmediacodec/b/d;
    .locals 4
    .param p0    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "mime"

    .line 5
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/tencent/tmediacodec/b/d;

    invoke-direct {v1, v0}, Lcom/tencent/tmediacodec/b/d;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "sample-rate"

    const/4 v2, -0x1

    .line 7
    invoke-static {p0, v0, v2}, Lcom/tencent/tmediacodec/b/d;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    .line 8
    iput v0, v1, Lcom/tencent/tmediacodec/b/d;->f:I

    const-string v0, "max-input-size"

    .line 9
    invoke-static {p0, v0, v2}, Lcom/tencent/tmediacodec/b/d;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    .line 10
    iput v0, v1, Lcom/tencent/tmediacodec/b/d;->i:I

    .line 11
    invoke-static {p0}, Lcom/tencent/tmediacodec/f/c;->a(Landroid/media/MediaFormat;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmediacodec/b/d;->a:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Lcom/tencent/tmediacodec/b/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rotation-degrees"

    const/4 v3, 0x0

    .line 13
    invoke-static {p0, v0, v3}, Lcom/tencent/tmediacodec/b/d;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/tencent/tmediacodec/b/d;->d:I

    const-string/jumbo v0, "width"

    .line 14
    invoke-static {p0, v0, v2}, Lcom/tencent/tmediacodec/b/d;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    .line 15
    iput v0, v1, Lcom/tencent/tmediacodec/b/d;->b:I

    const-string v0, "height"

    .line 16
    invoke-static {p0, v0, v2}, Lcom/tencent/tmediacodec/b/d;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    .line 17
    iput v0, v1, Lcom/tencent/tmediacodec/b/d;->c:I

    const-string v0, "max-width"

    .line 18
    invoke-static {p0, v0, v2}, Lcom/tencent/tmediacodec/b/d;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    .line 19
    iput v0, v1, Lcom/tencent/tmediacodec/b/d;->g:I

    const-string v0, "max-height"

    .line 20
    invoke-static {p0, v0, v2}, Lcom/tencent/tmediacodec/b/d;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result p0

    .line 21
    iput p0, v1, Lcom/tencent/tmediacodec/b/d;->h:I

    goto :goto_0

    :cond_0
    const-string v0, "channel-count"

    .line 22
    invoke-static {p0, v0, v2}, Lcom/tencent/tmediacodec/b/d;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result p0

    .line 23
    iput p0, v1, Lcom/tencent/tmediacodec/b/d;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "FormatWrapper"

    const-string v2, "create format error"

    .line 24
    invoke-static {v0, v2, p0}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method private static a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ", length:"

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    array-length p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "  ["

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 35
    :goto_0
    array-length v1, p1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge p0, v1, :cond_1

    if-eqz p0, :cond_0

    const-string v1, " ,"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_0
    aget-byte v1, p1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/tencent/tmediacodec/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 28
    sget-object v2, Lcom/tencent/tmediacodec/f/c;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v2, v3}, Lcom/tencent/tmediacodec/b/d;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "csdData size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "    "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FormatWrapper"

    invoke-static {v0, p0}, Lcom/tencent/tmediacodec/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/tmediacodec/b/d;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/tmediacodec/b/d;->k:Z

    .line 3
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/d;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmediacodec/f/c;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/tmediacodec/b/d;->l:Z

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/tmediacodec/b/d;->l:Z

    return v0
.end method
