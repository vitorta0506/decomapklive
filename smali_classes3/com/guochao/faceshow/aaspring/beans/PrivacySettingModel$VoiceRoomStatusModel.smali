.class public final Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceRoomStatusModel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\t\u0010\n\u001a\u00020\u0003H\u00d6\u0001J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\u0019\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;",
        "Landroid/os/Parcelable;",
        "voiceRoomStatus",
        "",
        "(I)V",
        "getVoiceRoomStatus",
        "()I",
        "setVoiceRoomStatus",
        "component1",
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

.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private voiceRoomStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voiceRoomStatus"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel$Creator;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel$Creator;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;->voiceRoomStatus:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;IILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;->voiceRoomStatus:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;->copy(I)Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;->voiceRoomStatus:I

    return v0
.end method

.method public final copy(I)Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;-><init>(I)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;->voiceRoomStatus:I

    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;->voiceRoomStatus:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getVoiceRoomStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;->voiceRoomStatus:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;->voiceRoomStatus:I

    return v0
.end method

.method public final setVoiceRoomStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;->voiceRoomStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceRoomStatusModel(voiceRoomStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;->voiceRoomStatus:I

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

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;->voiceRoomStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method