.class public final Lcom/google/android/renderscript/Range2d;
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0004H\u00c6\u0003J1\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/google/android/renderscript/Range2d;",
        "",
        "()V",
        "startX",
        "",
        "endX",
        "startY",
        "endY",
        "(IIII)V",
        "getEndX",
        "()I",
        "getEndY",
        "getStartX",
        "getStartY",
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
        "renderscript-toolkit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final endX:I

.field private final endY:I

.field private final startX:I

.field private final startY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/google/android/renderscript/Range2d;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/renderscript/Range2d;->startX:I

    iput p2, p0, Lcom/google/android/renderscript/Range2d;->endX:I

    iput p3, p0, Lcom/google/android/renderscript/Range2d;->startY:I

    iput p4, p0, Lcom/google/android/renderscript/Range2d;->endY:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/google/android/renderscript/Range2d;IIIIILjava/lang/Object;)Lcom/google/android/renderscript/Range2d;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/google/android/renderscript/Range2d;->startX:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/google/android/renderscript/Range2d;->endX:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/google/android/renderscript/Range2d;->startY:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/google/android/renderscript/Range2d;->endY:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/renderscript/Range2d;->copy(IIII)Lcom/google/android/renderscript/Range2d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/google/android/renderscript/Range2d;->startX:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/google/android/renderscript/Range2d;->endX:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/google/android/renderscript/Range2d;->startY:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/google/android/renderscript/Range2d;->endY:I

    return v0
.end method

.method public final copy(IIII)Lcom/google/android/renderscript/Range2d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/google/android/renderscript/Range2d;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/renderscript/Range2d;-><init>(IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/google/android/renderscript/Range2d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/renderscript/Range2d;

    iget v0, p0, Lcom/google/android/renderscript/Range2d;->startX:I

    iget v1, p1, Lcom/google/android/renderscript/Range2d;->startX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/renderscript/Range2d;->endX:I

    iget v1, p1, Lcom/google/android/renderscript/Range2d;->endX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/renderscript/Range2d;->startY:I

    iget v1, p1, Lcom/google/android/renderscript/Range2d;->startY:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/renderscript/Range2d;->endY:I

    iget p1, p1, Lcom/google/android/renderscript/Range2d;->endY:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getEndX()I
    .locals 1

    iget v0, p0, Lcom/google/android/renderscript/Range2d;->endX:I

    return v0
.end method

.method public final getEndY()I
    .locals 1

    iget v0, p0, Lcom/google/android/renderscript/Range2d;->endY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    iget v0, p0, Lcom/google/android/renderscript/Range2d;->startX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    iget v0, p0, Lcom/google/android/renderscript/Range2d;->startY:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/renderscript/Range2d;->startX:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/renderscript/Range2d;->endX:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/renderscript/Range2d;->startY:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/renderscript/Range2d;->endY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Range2d(startX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/renderscript/Range2d;->startX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/renderscript/Range2d;->endX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/renderscript/Range2d;->startY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/renderscript/Range2d;->endY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
