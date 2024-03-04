.class public final Lcom/google/android/renderscript/LookupTable;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/google/android/renderscript/LookupTable;",
        "",
        "()V",
        "alpha",
        "",
        "getAlpha",
        "()[B",
        "setAlpha",
        "([B)V",
        "blue",
        "getBlue",
        "setBlue",
        "green",
        "getGreen",
        "setGreen",
        "red",
        "getRed",
        "setRed",
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
.field private alpha:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private blue:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private green:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private red:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    int-to-byte v4, v3

    .line 2
    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/google/android/renderscript/LookupTable;->red:[B

    new-array v1, v0, [B

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    int-to-byte v4, v3

    .line 3
    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/google/android/renderscript/LookupTable;->green:[B

    new-array v1, v0, [B

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_2

    int-to-byte v4, v3

    .line 4
    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iput-object v1, p0, Lcom/google/android/renderscript/LookupTable;->blue:[B

    new-array v1, v0, [B

    :goto_3
    if-ge v2, v0, :cond_3

    int-to-byte v3, v2

    .line 5
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iput-object v1, p0, Lcom/google/android/renderscript/LookupTable;->alpha:[B

    return-void
.end method


# virtual methods
.method public final getAlpha()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/renderscript/LookupTable;->alpha:[B

    return-object v0
.end method

.method public final getBlue()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/renderscript/LookupTable;->blue:[B

    return-object v0
.end method

.method public final getGreen()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/renderscript/LookupTable;->green:[B

    return-object v0
.end method

.method public final getRed()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/renderscript/LookupTable;->red:[B

    return-object v0
.end method

.method public final setAlpha([B)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/renderscript/LookupTable;->alpha:[B

    return-void
.end method

.method public final setBlue([B)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/renderscript/LookupTable;->blue:[B

    return-void
.end method

.method public final setGreen([B)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/renderscript/LookupTable;->green:[B

    return-void
.end method

.method public final setRed([B)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/renderscript/LookupTable;->red:[B

    return-void
.end method
