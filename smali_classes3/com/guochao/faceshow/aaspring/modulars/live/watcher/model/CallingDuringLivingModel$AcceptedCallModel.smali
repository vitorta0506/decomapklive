.class public final Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;
.super Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AcceptedCallModel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J)\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;",
        "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel;",
        "roomItemData",
        "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
        "type",
        "",
        "messageModel",
        "Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;",
        "(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;ILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V",
        "getMessageModel",
        "()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;",
        "getRoomItemData",
        "()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
        "getType",
        "()I",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "app_GooglePlayRelease"
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
.field private final messageModel:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final roomItemData:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final type:I


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;ILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "roomItemData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->roomItemData:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 3
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->type:I

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->messageModel:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;ILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->roomItemData:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->type:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->messageModel:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->copy(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;ILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->roomItemData:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->type:I

    return v0
.end method

.method public final component3()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->messageModel:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    return-object v0
.end method

.method public final copy(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;ILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "roomItemData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;

    invoke-direct {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;-><init>(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;ILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

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
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->roomItemData:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->roomItemData:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->type:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->type:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->messageModel:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->messageModel:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getMessageModel()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->messageModel:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    return-object v0
.end method

.method public final getRoomItemData()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->roomItemData:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->roomItemData:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->type:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->messageModel:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

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

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AcceptedCallModel(roomItemData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->roomItemData:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;->messageModel:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
