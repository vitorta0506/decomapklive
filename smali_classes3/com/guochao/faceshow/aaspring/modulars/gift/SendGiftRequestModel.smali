.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0019\n\u0002\u0010!\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u00107\u001a\u00020\u0003H\u00c6\u0003J\t\u00108\u001a\u00020\u0005H\u00c6\u0003J\u001d\u00109\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\t\u0010:\u001a\u00020\u0008H\u00d6\u0001J\u0013\u0010;\u001a\u00020\u00052\u0008\u0010<\u001a\u0004\u0018\u00010=H\u00d6\u0003J\t\u0010>\u001a\u00020\u0008H\u00d6\u0001J\t\u0010?\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020\u0008H\u00d6\u0001R\u001e\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\r\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\n\"\u0004\u0008\u0014\u0010\u000cR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u001e\u0010\u0018\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\n\"\u0004\u0008\u001a\u0010\u000cR\u001e\u0010\u001b\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\n\"\u0004\u0008\u001d\u0010\u000cR\u001e\u0010\u001e\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000f\"\u0004\u0008 \u0010\u0011R$\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00030\"8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u0011\u0010\'\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\nR\u001e\u0010)\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u000f\"\u0004\u0008+\u0010\u0011R>\u0010,\u001a\"\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0003\u0018\u00010-j\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0003\u0018\u0001`.8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001a\u00103\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0017\"\u0004\u00085\u00106\u00a8\u0006E"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;",
        "Landroid/os/Parcelable;",
        "giftId",
        "",
        "lucyGift",
        "",
        "(Ljava/lang/String;Z)V",
        "breakType",
        "",
        "getBreakType",
        "()I",
        "setBreakType",
        "(I)V",
        "businessId",
        "getBusinessId",
        "()Ljava/lang/String;",
        "setBusinessId",
        "(Ljava/lang/String;)V",
        "comboId",
        "getComboId",
        "setComboId",
        "getGiftId",
        "getLucyGift",
        "()Z",
        "sendNumber",
        "getSendNumber",
        "setSendNumber",
        "sendType",
        "getSendType",
        "setSendType",
        "singlePrice",
        "getSinglePrice",
        "setSinglePrice",
        "toUserIds",
        "",
        "getToUserIds",
        "()Ljava/util/List;",
        "setToUserIds",
        "(Ljava/util/List;)V",
        "totalSendNumber",
        "getTotalSendNumber",
        "useDiamonds",
        "getUseDiamonds",
        "setUseDiamonds",
        "voiceIds",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "getVoiceIds",
        "()Ljava/util/HashMap;",
        "setVoiceIds",
        "(Ljava/util/HashMap;)V",
        "voiceRoom",
        "getVoiceRoom",
        "setVoiceRoom",
        "(Z)V",
        "component1",
        "component2",
        "copy",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
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
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private breakType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bt"
    .end annotation
.end field

.field private businessId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "it"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private comboId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cmid"
    .end annotation
.end field

.field private final giftId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gid"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transient lucyGift:Z

.field private sendNumber:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "n"
    .end annotation
.end field

.field private sendType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "m"
    .end annotation
.end field

.field private singlePrice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "up"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private toUserIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private useDiamonds:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "at"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private voiceIds:Ljava/util/HashMap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transient voiceRoom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel$Creator;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel$Creator;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "giftId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->giftId:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->lucyGift:Z

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->toUserIds:Ljava/util/List;

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->sendNumber:I

    .line 6
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->sendType:I

    const-string p1, "0"

    .line 7
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->singlePrice:Ljava/lang/String;

    const-string p1, "1"

    .line 8
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->useDiamonds:Ljava/lang/String;

    const-string p1, ""

    .line 9
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->businessId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 10
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;Ljava/lang/String;ZILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->giftId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->lucyGift:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->copy(Ljava/lang/String;Z)Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->giftId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->lucyGift:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Z)Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "giftId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    invoke-direct {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;-><init>(Ljava/lang/String;Z)V

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
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->giftId:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->giftId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->lucyGift:Z

    iget-boolean p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->lucyGift:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBreakType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->breakType:I

    return v0
.end method

.method public final getBusinessId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->businessId:Ljava/lang/String;

    return-object v0
.end method

.method public final getComboId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->comboId:I

    return v0
.end method

.method public final getGiftId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->giftId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLucyGift()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->lucyGift:Z

    return v0
.end method

.method public final getSendNumber()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->sendNumber:I

    return v0
.end method

.method public final getSendType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->sendType:I

    return v0
.end method

.method public final getSinglePrice()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->singlePrice:Ljava/lang/String;

    return-object v0
.end method

.method public final getToUserIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->toUserIds:Ljava/util/List;

    return-object v0
.end method

.method public final getTotalSendNumber()I
    .locals 3

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->sendNumber:I

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->toUserIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public final getUseDiamonds()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->useDiamonds:Ljava/lang/String;

    return-object v0
.end method

.method public final getVoiceIds()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->voiceIds:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getVoiceRoom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->voiceRoom:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->giftId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->lucyGift:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setBreakType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->breakType:I

    return-void
.end method

.method public final setBusinessId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->businessId:Ljava/lang/String;

    return-void
.end method

.method public final setComboId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->comboId:I

    return-void
.end method

.method public final setSendNumber(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->sendNumber:I

    return-void
.end method

.method public final setSendType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->sendType:I

    return-void
.end method

.method public final setSinglePrice(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->singlePrice:Ljava/lang/String;

    return-void
.end method

.method public final setToUserIds(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->toUserIds:Ljava/util/List;

    return-void
.end method

.method public final setUseDiamonds(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->useDiamonds:Ljava/lang/String;

    return-void
.end method

.method public final setVoiceIds(Ljava/util/HashMap;)V
    .locals 0
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->voiceIds:Ljava/util/HashMap;

    return-void
.end method

.method public final setVoiceRoom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->voiceRoom:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendGiftRequestModel(giftId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->giftId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lucyGift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->lucyGift:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->giftId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->lucyGift:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
