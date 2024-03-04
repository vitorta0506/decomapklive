.class public final Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0014\u0008\u0086\u0008\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0008H\u00c6\u0003J3\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00082\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0006H\u00d6\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\r\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;",
        "",
        "iconId",
        "",
        "strId",
        "extraText",
        "",
        "selectState",
        "",
        "(IILjava/lang/String;Z)V",
        "getExtraText",
        "()Ljava/lang/String;",
        "getIconId",
        "()I",
        "getSelectState",
        "()Z",
        "setSelectState",
        "(Z)V",
        "getStrId",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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
.field private final extraText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final iconId:I

.field private selectState:Z

.field private final strId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Z)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->iconId:I

    .line 3
    iput p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->strId:I

    .line 4
    iput-object p3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->extraText:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->selectState:Z

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;-><init>(IILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;IILjava/lang/String;ZILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->iconId:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->strId:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->extraText:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->selectState:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->copy(IILjava/lang/String;Z)Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->iconId:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->strId:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->extraText:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->selectState:Z

    return v0
.end method

.method public final copy(IILjava/lang/String;Z)Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;-><init>(IILjava/lang/String;Z)V

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
    instance-of v1, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->iconId:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->iconId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->strId:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->strId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->extraText:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->extraText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->selectState:Z

    iget-boolean p1, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->selectState:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getExtraText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->extraText:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconId()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->iconId:I

    return v0
.end method

.method public final getSelectState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->selectState:Z

    return v0
.end method

.method public final getStrId()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->strId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->iconId:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->strId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->extraText:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->selectState:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setSelectState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->selectState:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceRoomMoreModel(iconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->iconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", strId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->strId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extraText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->extraText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selectState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->selectState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
