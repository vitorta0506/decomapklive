.class public final Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/model/GCUser;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u00080\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00b5\u0001\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u0005\u0012\u0006\u0010\u0012\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0018J\u000b\u00101\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\u0005H\u00c6\u0003J\t\u00106\u001a\u00020\u0005H\u00c6\u0003J\t\u00107\u001a\u00020\u0005H\u00c6\u0003J\t\u00108\u001a\u00020\u0005H\u00c6\u0003J\t\u00109\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010<\u001a\u00020\u0005H\u00c6\u0003J\t\u0010=\u001a\u00020\u0005H\u00c6\u0003J\t\u0010>\u001a\u00020\u0005H\u00c6\u0003J\t\u0010?\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010A\u001a\u00020\u0005H\u00c6\u0003J\t\u0010B\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u00d7\u0001\u0010D\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00052\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\t\u0010E\u001a\u00020\u0005H\u00d6\u0001J\u0013\u0010F\u001a\u00020G2\u0008\u0010H\u001a\u0004\u0018\u00010IH\u00d6\u0003J\t\u0010J\u001a\u00020\u0005H\u00d6\u0001J\t\u0010K\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020\u0005H\u00d6\u0001R\u0014\u0010\u000b\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0012\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001aR\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u00038\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001aR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001dR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001aR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001dR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001aR\u0016\u0010\n\u001a\u00020\u00058\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001aR\u0011\u0010\u0013\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u001aR\u0011\u0010\u0014\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u001aR\u0016\u0010\u0008\u001a\u00020\u00058\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001aR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u001d\"\u0004\u0008&\u0010\'R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u0016\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u001dR\u0016\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u001dR\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u001dR\u0011\u0010\u0011\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\u001aR\u0016\u0010\u0010\u001a\u00020\u00058\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010\u001a\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;",
        "Lcom/guochao/faceshow/aaspring/base/model/GCUser;",
        "userId",
        "",
        "diamondCount",
        "",
        "bCount",
        "fansNum",
        "level",
        "nickName",
        "gender",
        "age",
        "avatarUrl",
        "smallAvatarUrl",
        "countryLogo",
        "dressHead",
        "vipLevel",
        "userRoles",
        "attentionStatus",
        "isBan",
        "isKick",
        "mvpUserInfoResult",
        "Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;",
        "mvpUrl",
        "(Ljava/lang/String;IIIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/guochao/faceshow/bean/UserBean$UserMvpInfo;Ljava/lang/String;)V",
        "getAge",
        "()I",
        "getAttentionStatus",
        "getAvatarUrl",
        "()Ljava/lang/String;",
        "getBCount",
        "getCountryLogo",
        "getDiamondCount",
        "getDressHead",
        "getFansNum",
        "getGender",
        "getLevel",
        "getMvpUrl",
        "setMvpUrl",
        "(Ljava/lang/String;)V",
        "getMvpUserInfoResult",
        "()Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;",
        "setMvpUserInfoResult",
        "(Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;)V",
        "getNickName",
        "getSmallAvatarUrl",
        "getUserId",
        "getUserRoles",
        "getVipLevel",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
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
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final age:I

.field private final attentionStatus:I

.field private final avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "img"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final bCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bcount"
    .end annotation
.end field

.field private final countryLogo:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final diamondCount:I

.field private final dressHead:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fansNum:I

.field private final gender:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sex"
    .end annotation
.end field

.field private final isBan:I

.field private final isKick:I

.field private final level:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "levelId"
    .end annotation
.end field

.field private mvpUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final nickName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final smallAvatarUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final userId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final userRoles:I

.field private final vipLevel:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isVip"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel$Creator;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel$Creator;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/guochao/faceshow/bean/UserBean$UserMvpInfo;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->userId:Ljava/lang/String;

    move v1, p2

    .line 3
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->diamondCount:I

    move v1, p3

    .line 4
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->bCount:I

    move v1, p4

    .line 5
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->fansNum:I

    move v1, p5

    .line 6
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->level:I

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->nickName:Ljava/lang/String;

    move v1, p7

    .line 8
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->gender:I

    move v1, p8

    .line 9
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->age:I

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->avatarUrl:Ljava/lang/String;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->smallAvatarUrl:Ljava/lang/String;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->countryLogo:Ljava/lang/String;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->dressHead:Ljava/lang/String;

    move v1, p13

    .line 14
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->vipLevel:I

    move/from16 v1, p14

    .line 15
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->userRoles:I

    move/from16 v1, p15

    .line 16
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->attentionStatus:I

    move/from16 v1, p16

    .line 17
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isBan:I

    move/from16 v1, p17

    .line 18
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isKick:I

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->mvpUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/guochao/faceshow/bean/UserBean$UserMvpInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 22

    const v0, 0x8000

    and-int v0, p20, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v18, 0x0

    goto :goto_0

    :cond_0
    move/from16 v18, p16

    :goto_0
    const/high16 v0, 0x10000

    and-int v0, p20, v0

    if-eqz v0, :cond_1

    const/16 v19, 0x0

    goto :goto_1

    :cond_1
    move/from16 v19, p17

    :goto_1
    const/high16 v0, 0x20000

    and-int v0, p20, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p18

    :goto_2
    const/high16 v2, 0x40000

    and-int v2, p20, v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    .line 21
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvpUrl:Ljava/lang/String;

    :cond_3
    move-object/from16 v21, v1

    goto :goto_3

    :cond_4
    move-object/from16 v21, p19

    :goto_3
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move-object/from16 v20, v0

    .line 22
    invoke-direct/range {v2 .. v21}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;-><init>(Ljava/lang/String;IIIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/guochao/faceshow/bean/UserBean$UserMvpInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;Ljava/lang/String;IIIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/guochao/faceshow/bean/UserBean$UserMvpInfo;Ljava/lang/String;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p20

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->diamondCount:I

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->bCount:I

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->fansNum:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getLevel()I

    move-result v6

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getNickName()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getGender()I

    move-result v8

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getAge()I

    move-result v9

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getDressHead()Ljava/lang/String;

    move-result-object v13

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getVipLevel()I

    move-result v14

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->userRoles:I

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->attentionStatus:I

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p15, v15

    if-eqz v16, :cond_f

    iget v15, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isBan:I

    goto :goto_f

    :cond_f
    move/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p16, v15

    if-eqz v16, :cond_10

    iget v15, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isKick:I

    goto :goto_10

    :cond_10
    move/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v1, v1, v16

    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getMvpUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    move-object/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p18, v15

    move-object/from16 p19, v1

    invoke-virtual/range {p0 .. p19}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->copy(Ljava/lang/String;IIIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/guochao/faceshow/bean/UserBean$UserMvpInfo;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getDressHead()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component13()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getVipLevel()I

    move-result v0

    return v0
.end method

.method public final component14()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->userRoles:I

    return v0
.end method

.method public final component15()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->attentionStatus:I

    return v0
.end method

.method public final component16()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isBan:I

    return v0
.end method

.method public final component17()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isKick:I

    return v0
.end method

.method public final component18()Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getMvpUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->diamondCount:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->bCount:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->fansNum:I

    return v0
.end method

.method public final component5()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getLevel()I

    move-result v0

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getNickName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component7()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getGender()I

    move-result v0

    return v0
.end method

.method public final component8()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getAge()I

    move-result v0

    return v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Ljava/lang/String;IIIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/guochao/faceshow/bean/UserBean$UserMvpInfo;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;
    .locals 21
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    new-instance v20, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;

    move-object/from16 v0, v20

    invoke-direct/range {v0 .. v19}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;-><init>(Ljava/lang/String;IIIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/guochao/faceshow/bean/UserBean$UserMvpInfo;Ljava/lang/String;)V

    return-object v20
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
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->diamondCount:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->diamondCount:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->bCount:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->bCount:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->fansNum:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->fansNum:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getLevel()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getLevel()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getGender()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getGender()I

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getAge()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getAge()I

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getDressHead()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getDressHead()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getVipLevel()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getVipLevel()I

    move-result v3

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->userRoles:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->userRoles:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->attentionStatus:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->attentionStatus:I

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isBan:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isBan:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isKick:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isKick:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getMvpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getMvpUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->age:I

    return v0
.end method

.method public final getAttentionStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->attentionStatus:I

    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getBCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->bCount:I

    return v0
.end method

.method public getCountryLogo()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->countryLogo:Ljava/lang/String;

    return-object v0
.end method

.method public final getDiamondCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->diamondCount:I

    return v0
.end method

.method public getDressHead()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->dressHead:Ljava/lang/String;

    return-object v0
.end method

.method public final getFansNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->fansNum:I

    return v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->gender:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->level:I

    return v0
.end method

.method public getMvpUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->mvpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getMvpUserInfoResult()Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallAvatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->smallAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserRoles()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->userRoles:I

    return v0
.end method

.method public getVipLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->vipLevel:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->diamondCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->bCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->fansNum:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getLevel()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getNickName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getGender()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getAge()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getDressHead()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getDressHead()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getVipLevel()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->userRoles:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->attentionStatus:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isBan:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isKick:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getMvpUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getMvpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public final isBan()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isBan:I

    return v0
.end method

.method public final isKick()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isKick:I

    return v0
.end method

.method public setMvpUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->mvpUrl:Ljava/lang/String;

    return-void
.end method

.method public final setMvpUserInfoResult(Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceRoomPeopleInfoModel(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", diamondCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->diamondCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->bCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fansNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->fansNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nickName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getGender()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getAge()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", smallAvatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", countryLogo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dressHead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getDressHead()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vipLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getVipLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userRoles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->userRoles:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", attentionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->attentionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isBan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isBan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isKick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isKick:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mvpUserInfoResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mvpUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getMvpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->diamondCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->bCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->fansNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->nickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->gender:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->age:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->smallAvatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->countryLogo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->dressHead:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->vipLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->userRoles:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->attentionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isBan:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isKick:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->mvpUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
