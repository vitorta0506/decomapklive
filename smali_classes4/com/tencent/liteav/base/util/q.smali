.class public final Lcom/tencent/liteav/base/util/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/tencent/liteav/base/util/q;->a:I

    .line 4
    iput p2, p0, Lcom/tencent/liteav/base/util/q;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/base/util/q;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/base/util/q;->a(Lcom/tencent/liteav/base/util/q;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/liteav/base/util/q;->a:I

    .line 2
    iget v1, p0, Lcom/tencent/liteav/base/util/q;->b:I

    iput v1, p0, Lcom/tencent/liteav/base/util/q;->a:I

    .line 3
    iput v0, p0, Lcom/tencent/liteav/base/util/q;->b:I

    return-void
.end method

.method public final a(II)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/tencent/liteav/base/util/q;->a:I

    .line 9
    iput p2, p0, Lcom/tencent/liteav/base/util/q;->b:I

    return-void
.end method

.method public final a(Lcom/tencent/liteav/base/util/q;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    iget v0, p1, Lcom/tencent/liteav/base/util/q;->a:I

    iput v0, p0, Lcom/tencent/liteav/base/util/q;->a:I

    .line 5
    iget p1, p1, Lcom/tencent/liteav/base/util/q;->b:I

    iput p1, p0, Lcom/tencent/liteav/base/util/q;->b:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/tencent/liteav/base/util/q;->a:I

    .line 7
    iput p1, p0, Lcom/tencent/liteav/base/util/q;->b:I

    return-void
.end method

.method public final b()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/liteav/base/util/q;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/base/util/q;->a:I

    iget v1, p0, Lcom/tencent/liteav/base/util/q;->b:I

    mul-int v0, v0, v1

    return v0
.end method

.method public final c()D
    .locals 4

    iget v0, p0, Lcom/tencent/liteav/base/util/q;->a:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v2

    iget v2, p0, Lcom/tencent/liteav/base/util/q;->b:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final d()Z
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/base/util/q;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/base/util/q;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/tencent/liteav/base/util/q;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/tencent/liteav/base/util/q;

    .line 3
    iget v1, p1, Lcom/tencent/liteav/base/util/q;->a:I

    iget v3, p0, Lcom/tencent/liteav/base/util/q;->a:I

    if-ne v1, v3, :cond_2

    iget p1, p1, Lcom/tencent/liteav/base/util/q;->b:I

    iget v1, p0, Lcom/tencent/liteav/base/util/q;->b:I

    if-ne p1, v1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/tencent/liteav/base/util/q;->a:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/tencent/liteav/base/util/q;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/liteav/base/util/q;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
