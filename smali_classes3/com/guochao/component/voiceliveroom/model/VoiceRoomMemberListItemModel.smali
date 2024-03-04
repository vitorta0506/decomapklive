.class public final Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0004H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0008H\u00c6\u0003J)\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\t\u0010\u0015\u001a\u00020\u0004H\u00d6\u0001J\u0013\u0010\u0016\u001a\u00020\u00082\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\u0019\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0004H\u00d6\u0001R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006!"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
        "Landroid/os/Parcelable;",
        "itemType",
        "",
        "model",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
        "isSelected",
        "",
        "(ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Z)V",
        "()Z",
        "setSelected",
        "(Z)V",
        "getItemType",
        "()I",
        "getModel",
        "()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
        "component1",
        "component2",
        "component3",
        "copy",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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

.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private isSelected:Z

.field private final itemType:I

.field private final model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel$Creator;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel$Creator;-><init>()V

    sput-object v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Z)V
    .locals 0
    .param p2    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->itemType:I

    .line 3
    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    .line 4
    iput-boolean p3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->isSelected:Z

    return-void
.end method

.method public synthetic constructor <init>(ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;-><init>(ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;ZILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->getItemType()I

    move-result p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->isSelected:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->copy(ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Z)Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->getItemType()I

    move-result v0

    return v0
.end method

.method public final component2()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->isSelected:Z

    return v0
.end method

.method public final copy(ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Z)Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;
    .locals 1
    .param p2    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;

    invoke-direct {v0, p1, p2, p3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;-><init>(ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Z)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
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
    instance-of v1, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->getItemType()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->getItemType()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->isSelected:Z

    iget-boolean p1, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->isSelected:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getItemType()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->itemType:I

    return v0
.end method

.method public final getModel()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->getItemType()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->isSelected:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->isSelected:Z

    return v0
.end method

.method public final setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->isSelected:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceRoomMemberListItemModel(itemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->getItemType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->isSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->itemType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-boolean p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->isSelected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
