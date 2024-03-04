.class public final Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J3\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\u0019\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "url",
        "Landroid/net/Uri;",
        "selected",
        "free",
        "(ILandroid/net/Uri;II)V",
        "getFree",
        "()I",
        "getId",
        "getSelected",
        "getUrl",
        "()Landroid/net/Uri;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
        "equals",
        "",
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
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final free:I

.field private final id:I

.field private final selected:I

.field private final url:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel$Creator;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel$Creator;-><init>()V

    sput-object v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/net/Uri;II)V
    .locals 0
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->id:I

    .line 3
    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->url:Landroid/net/Uri;

    .line 4
    iput p3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->selected:I

    .line 5
    iput p4, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->free:I

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/net/Uri;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;-><init>(ILandroid/net/Uri;II)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;ILandroid/net/Uri;IIILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->id:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->url:Landroid/net/Uri;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->selected:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->free:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->copy(ILandroid/net/Uri;II)Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->id:I

    return v0
.end method

.method public final component2()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->url:Landroid/net/Uri;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->selected:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->free:I

    return v0
.end method

.method public final copy(ILandroid/net/Uri;II)Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;
    .locals 1
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;-><init>(ILandroid/net/Uri;II)V

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
    instance-of v1, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->id:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->url:Landroid/net/Uri;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->url:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->selected:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->selected:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->free:I

    iget p1, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->free:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFree()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->free:I

    return v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->id:I

    return v0
.end method

.method public final getSelected()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->selected:I

    return v0
.end method

.method public final getUrl()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->url:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->url:Landroid/net/Uri;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->selected:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->free:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceRoomBackgroundModel(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->url:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->selected:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", free="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->free:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->url:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->selected:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;->free:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
