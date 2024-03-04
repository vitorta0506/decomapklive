.class public final Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\u0011\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u00c6\u0003JC\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\"\u001a\u00020\u0003H\u00d6\u0001J\t\u0010#\u001a\u00020$H\u00d6\u0001R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000c\"\u0004\u0008\u0016\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u000c\"\u0004\u0008\u0018\u0010\u000e\u00a8\u0006%"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;",
        "",
        "page",
        "",
        "size",
        "count",
        "total",
        "list",
        "",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
        "(IIIILjava/util/List;)V",
        "getCount",
        "()I",
        "setCount",
        "(I)V",
        "getList",
        "()Ljava/util/List;",
        "setList",
        "(Ljava/util/List;)V",
        "getPage",
        "setPage",
        "getSize",
        "setSize",
        "getTotal",
        "setTotal",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "component_liveroom_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private count:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private page:I

.field private size:I

.field private total:I


# direct methods
.method public constructor <init>(IIIILjava/util/List;)V
    .locals 0
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->page:I

    iput p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->size:I

    iput p3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->count:I

    iput p4, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->total:I

    .line 3
    iput-object p5, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->list:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;IIIILjava/util/List;ILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->page:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->size:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->count:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->total:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->list:Ljava/util/List;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->copy(IIIILjava/util/List;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->page:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->size:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->count:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->total:I

    return v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->list:Ljava/util/List;

    return-object v0
.end method

.method public final copy(IIIILjava/util/List;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;
    .locals 7
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
            ">;)",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;-><init>(IIIILjava/util/List;)V

    return-object v6
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
    instance-of v1, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->page:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->page:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->size:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->size:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->count:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->count:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->total:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->total:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->list:Ljava/util/List;

    iget-object p1, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->list:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->count:I

    return v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->list:Ljava/util/List;

    return-object v0
.end method

.method public final getPage()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->page:I

    return v0
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->size:I

    return v0
.end method

.method public final getTotal()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->total:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->page:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->size:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->count:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->total:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->list:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->count:I

    return-void
.end method

.method public final setList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->list:Ljava/util/List;

    return-void
.end method

.method public final setPage(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->page:I

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->size:I

    return-void
.end method

.method public final setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->total:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceRoomMyRoomListModel(page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
