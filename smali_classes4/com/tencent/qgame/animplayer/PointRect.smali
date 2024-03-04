.class public final Lcom/tencent/qgame/animplayer/PointRect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/PointRect;",
        "",
        "x",
        "",
        "y",
        "w",
        "h",
        "(IIII)V",
        "getH",
        "()I",
        "getW",
        "getX",
        "getY",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final h:I

.field private final w:I

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/qgame/animplayer/PointRect;->x:I

    iput p2, p0, Lcom/tencent/qgame/animplayer/PointRect;->y:I

    iput p3, p0, Lcom/tencent/qgame/animplayer/PointRect;->w:I

    iput p4, p0, Lcom/tencent/qgame/animplayer/PointRect;->h:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/tencent/qgame/animplayer/PointRect;IIIIILjava/lang/Object;)Lcom/tencent/qgame/animplayer/PointRect;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/tencent/qgame/animplayer/PointRect;->x:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/tencent/qgame/animplayer/PointRect;->y:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/tencent/qgame/animplayer/PointRect;->w:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/tencent/qgame/animplayer/PointRect;->h:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/qgame/animplayer/PointRect;->copy(IIII)Lcom/tencent/qgame/animplayer/PointRect;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/PointRect;->x:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/PointRect;->y:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/PointRect;->w:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/PointRect;->h:I

    return v0
.end method

.method public final copy(IIII)Lcom/tencent/qgame/animplayer/PointRect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/tencent/qgame/animplayer/PointRect;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/tencent/qgame/animplayer/PointRect;-><init>(IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lcom/tencent/qgame/animplayer/PointRect;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/tencent/qgame/animplayer/PointRect;

    iget v1, p0, Lcom/tencent/qgame/animplayer/PointRect;->x:I

    iget v3, p1, Lcom/tencent/qgame/animplayer/PointRect;->x:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/tencent/qgame/animplayer/PointRect;->y:I

    iget v3, p1, Lcom/tencent/qgame/animplayer/PointRect;->y:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/tencent/qgame/animplayer/PointRect;->w:I

    iget v3, p1, Lcom/tencent/qgame/animplayer/PointRect;->w:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/tencent/qgame/animplayer/PointRect;->h:I

    iget p1, p1, Lcom/tencent/qgame/animplayer/PointRect;->h:I

    if-ne v1, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v0
.end method

.method public final getH()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/PointRect;->h:I

    return v0
.end method

.method public final getW()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/PointRect;->w:I

    return v0
.end method

.method public final getX()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/PointRect;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/PointRect;->y:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/tencent/qgame/animplayer/PointRect;->x:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tencent/qgame/animplayer/PointRect;->y:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tencent/qgame/animplayer/PointRect;->w:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tencent/qgame/animplayer/PointRect;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PointRect(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/PointRect;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/PointRect;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/PointRect;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/PointRect;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
