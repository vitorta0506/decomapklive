.class public final Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J)\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u0005H\u00d6\u0001J\u0019\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\""
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;",
        "Landroid/os/Parcelable;",
        "signatureExpireSeconds",
        "",
        "userSig",
        "",
        "sdkAppId",
        "(ILjava/lang/String;I)V",
        "getSdkAppId",
        "()I",
        "setSdkAppId",
        "(I)V",
        "getSignatureExpireSeconds",
        "setSignatureExpireSeconds",
        "getUserSig",
        "()Ljava/lang/String;",
        "setUserSig",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
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
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private sdkAppId:I

.field private signatureExpireSeconds:I

.field private userSig:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel$Creator;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel$Creator;-><init>()V

    sput-object v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->signatureExpireSeconds:I

    .line 3
    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->userSig:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->sdkAppId:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;ILjava/lang/String;IILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->signatureExpireSeconds:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->userSig:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->sdkAppId:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->copy(ILjava/lang/String;I)Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->signatureExpireSeconds:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->userSig:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->sdkAppId:I

    return v0
.end method

.method public final copy(ILjava/lang/String;I)Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;

    invoke-direct {v0, p1, p2, p3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;-><init>(ILjava/lang/String;I)V

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
    instance-of v1, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->signatureExpireSeconds:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->signatureExpireSeconds:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->userSig:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->userSig:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->sdkAppId:I

    iget p1, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->sdkAppId:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getSdkAppId()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->sdkAppId:I

    return v0
.end method

.method public final getSignatureExpireSeconds()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->signatureExpireSeconds:I

    return v0
.end method

.method public final getUserSig()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->userSig:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->signatureExpireSeconds:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->userSig:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->sdkAppId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setSdkAppId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->sdkAppId:I

    return-void
.end method

.method public final setSignatureExpireSeconds(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->signatureExpireSeconds:I

    return-void
.end method

.method public final setUserSig(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->userSig:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceRoomSeatTokenModel(signatureExpireSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->signatureExpireSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userSig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->userSig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sdkAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->sdkAppId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->signatureExpireSeconds:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->userSig:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->sdkAppId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
