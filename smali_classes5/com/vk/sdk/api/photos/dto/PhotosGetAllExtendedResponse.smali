.class public final Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J8\u0010\u0014\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;",
        "",
        "count",
        "",
        "items",
        "",
        "Lcom/vk/sdk/api/photos/dto/PhotosPhotoFullXtrRealOffset;",
        "more",
        "Lcom/vk/sdk/api/base/dto/BaseBoolInt;",
        "(Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)V",
        "getCount",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getItems",
        "()Ljava/util/List;",
        "getMore",
        "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;",
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
.field private final count:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final items:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/photos/dto/PhotosPhotoFullXtrRealOffset;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final more:Lcom/vk/sdk/api/base/dto/BaseBoolInt;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "more"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;-><init>(Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/vk/sdk/api/base/dto/BaseBoolInt;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/photos/dto/PhotosPhotoFullXtrRealOffset;",
            ">;",
            "Lcom/vk/sdk/api/base/dto/BaseBoolInt;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->count:Ljava/lang/Integer;

    .line 3
    iput-object p2, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->items:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->more:Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;-><init>(Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;ILjava/lang/Object;)Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->count:Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->items:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->more:Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->copy(Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/photos/dto/PhotosPhotoFullXtrRealOffset;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Lcom/vk/sdk/api/base/dto/BaseBoolInt;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->more:Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/vk/sdk/api/base/dto/BaseBoolInt;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/photos/dto/PhotosPhotoFullXtrRealOffset;",
            ">;",
            "Lcom/vk/sdk/api/base/dto/BaseBoolInt;",
            ")",
            "Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;-><init>(Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)V

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
    instance-of v1, p1, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;

    iget-object v1, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->count:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->items:Ljava/util/List;

    iget-object v3, p1, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->items:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->more:Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    iget-object p1, p1, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->more:Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCount()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/photos/dto/PhotosPhotoFullXtrRealOffset;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getMore()Lcom/vk/sdk/api/base/dto/BaseBoolInt;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->more:Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->count:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->items:Ljava/util/List;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->more:Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->count:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->items:Ljava/util/List;

    iget-object v2, p0, Lcom/vk/sdk/api/photos/dto/PhotosGetAllExtendedResponse;->more:Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhotosGetAllExtendedResponse(count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", items="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", more="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
