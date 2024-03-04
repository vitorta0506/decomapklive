.class public final Lcom/google/android/renderscript/Rgba3dArray;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J!\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005H\u0086\u0002J \u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J)\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0003H\u0086\u0002R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/google/android/renderscript/Rgba3dArray;",
        "",
        "values",
        "",
        "sizeX",
        "",
        "sizeY",
        "sizeZ",
        "([BIII)V",
        "getSizeX",
        "()I",
        "getSizeY",
        "getSizeZ",
        "getValues",
        "()[B",
        "get",
        "x",
        "y",
        "z",
        "indexOfVector",
        "set",
        "",
        "value",
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
.field private final sizeX:I

.field private final sizeY:I

.field private final sizeZ:I

.field private final values:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([BIII)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/renderscript/Rgba3dArray;->values:[B

    iput p2, p0, Lcom/google/android/renderscript/Rgba3dArray;->sizeX:I

    iput p3, p0, Lcom/google/android/renderscript/Rgba3dArray;->sizeY:I

    iput p4, p0, Lcom/google/android/renderscript/Rgba3dArray;->sizeZ:I

    .line 2
    array-length p1, p1

    mul-int p2, p2, p3

    mul-int p2, p2, p4

    mul-int/lit8 p2, p2, 0x4

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final indexOfVector(III)I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/renderscript/Rgba3dArray;->sizeX:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, p1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :goto_1
    const-string v4, "Failed requirement."

    if-eqz v3, :cond_8

    .line 2
    iget v3, p0, Lcom/google/android/renderscript/Rgba3dArray;->sizeY:I

    if-gez p2, :cond_2

    goto :goto_2

    :cond_2
    if-le v3, p2, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_7

    .line 3
    iget v5, p0, Lcom/google/android/renderscript/Rgba3dArray;->sizeZ:I

    if-gez p3, :cond_4

    goto :goto_4

    :cond_4
    if-le v5, p3, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_6

    mul-int p3, p3, v3

    add-int/2addr p3, p2

    mul-int p3, p3, v0

    add-int/2addr p3, p1

    mul-int/lit8 p3, p3, 0x4

    return p3

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final get(III)[B
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/renderscript/Rgba3dArray;->indexOfVector(III)I

    move-result p1

    const/4 p2, 0x4

    new-array p3, p2, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/renderscript/Rgba3dArray;->values:[B

    add-int v2, p1, v0

    aget-byte v1, v1, v2

    aput-byte v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public final getSizeX()I
    .locals 1

    iget v0, p0, Lcom/google/android/renderscript/Rgba3dArray;->sizeX:I

    return v0
.end method

.method public final getSizeY()I
    .locals 1

    iget v0, p0, Lcom/google/android/renderscript/Rgba3dArray;->sizeY:I

    return v0
.end method

.method public final getSizeZ()I
    .locals 1

    iget v0, p0, Lcom/google/android/renderscript/Rgba3dArray;->sizeZ:I

    return v0
.end method

.method public final getValues()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/renderscript/Rgba3dArray;->values:[B

    return-object v0
.end method

.method public final set(III[B)V
    .locals 3
    .param p4    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/renderscript/Rgba3dArray;->indexOfVector(III)I

    move-result p1

    const/4 p2, 0x3

    :goto_1
    if-gt v1, p2, :cond_1

    .line 3
    iget-object p3, p0, Lcom/google/android/renderscript/Rgba3dArray;->values:[B

    add-int v0, p1, v1

    aget-byte v2, p4, v1

    aput-byte v2, p3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
