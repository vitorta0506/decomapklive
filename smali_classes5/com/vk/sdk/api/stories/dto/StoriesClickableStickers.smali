.class public final Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\u000f\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0006H\u00c6\u0003J-\u0010\u0011\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u001c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;",
        "",
        "clickableStickers",
        "",
        "Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker;",
        "originalHeight",
        "",
        "originalWidth",
        "(Ljava/util/List;II)V",
        "getClickableStickers",
        "()Ljava/util/List;",
        "getOriginalHeight",
        "()I",
        "getOriginalWidth",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final clickableStickers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clickable_stickers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final originalHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "original_height"
    .end annotation
.end field

.field private final originalWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "original_width"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;II)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "clickableStickers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->clickableStickers:Ljava/util/List;

    .line 3
    iput p2, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->originalHeight:I

    .line 4
    iput p3, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->originalWidth:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;Ljava/util/List;IIILjava/lang/Object;)Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->clickableStickers:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->originalHeight:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->originalWidth:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->copy(Ljava/util/List;II)Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->clickableStickers:Ljava/util/List;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->originalHeight:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->originalWidth:I

    return v0
.end method

.method public final copy(Ljava/util/List;II)Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker;",
            ">;II)",
            "Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clickableStickers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;

    invoke-direct {v0, p1, p2, p3}, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;

    iget-object v1, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->clickableStickers:Ljava/util/List;

    iget-object v3, p1, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->clickableStickers:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->originalHeight:I

    iget v3, p1, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->originalHeight:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->originalWidth:I

    iget p1, p1, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->originalWidth:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getClickableStickers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/stories/dto/StoriesClickableSticker;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->clickableStickers:Ljava/util/List;

    return-object v0
.end method

.method public final getOriginalHeight()I
    .locals 1

    iget v0, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->originalHeight:I

    return v0
.end method

.method public final getOriginalWidth()I
    .locals 1

    iget v0, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->originalWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->clickableStickers:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->originalHeight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->originalWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->clickableStickers:Ljava/util/List;

    iget v1, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->originalHeight:I

    iget v2, p0, Lcom/vk/sdk/api/stories/dto/StoriesClickableStickers;->originalWidth:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StoriesClickableStickers(clickableStickers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", originalHeight="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", originalWidth="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
