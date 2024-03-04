.class public final Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;
.super Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "F2fMatchRoomAgreeModel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0004H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u00c6\u0001J\t\u0010\n\u001a\u00020\u000bH\u00d6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u000bH\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\u0019\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000bH\u00d6\u0001R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;",
        "Landroid/os/Parcelable;",
        "f2fMatchRoomInfo",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;",
        "(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V",
        "getF2fMatchRoomInfo",
        "()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;",
        "component1",
        "copy",
        "describeContents",
        "",
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
        "component_f2f_match_release"
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
            "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel$Creator;

    invoke-direct {v0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel$Creator;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f2fMatchRoomInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;->f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;ILjava/lang/Object;)Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;->f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;->copy(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;->f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    return-object v0
.end method

.method public final copy(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;
    .locals 1
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "f2fMatchRoomInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;-><init>(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V

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
    instance-of v1, p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;->f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    iget-object p1, p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;->f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getF2fMatchRoomInfo()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;->f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;->f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "F2fMatchRoomAgreeModel(f2fMatchRoomInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;->f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomAgreeModel;->f2fMatchRoomInfo:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
