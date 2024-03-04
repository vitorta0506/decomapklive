.class public final Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
.super Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/guochao/faceshow/aaspring/base/model/GCUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "F2fMatchRoomInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u00086\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u00a5\u0001\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\n\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0013\u001a\u00020\n\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0016J\u0008\u0010-\u001a\u00020\u0005H\u0002J\u000b\u0010.\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010/\u001a\u00020\nH\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u00103\u001a\u00020\nH\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u00109\u001a\u00020\nH\u00c6\u0003J\t\u0010:\u001a\u00020\nH\u00c6\u0003J\t\u0010;\u001a\u00020\nH\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u00bf\u0001\u0010>\u001a\u00020\u00002\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u000f\u001a\u00020\n2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0013\u001a\u00020\n2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\t\u0010?\u001a\u00020\nH\u00d6\u0001J\u0013\u0010@\u001a\u00020A2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u00d6\u0003J\u0006\u0010D\u001a\u00020\u0005J\t\u0010E\u001a\u00020\nH\u00d6\u0001J\t\u0010F\u001a\u00020\u0005H\u00d6\u0001J\u0019\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020\nH\u00d6\u0001R\u0014\u0010\u000c\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0013\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018\"\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001dR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001dR\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001dR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001dR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001dR\u0016\u0010\t\u001a\u00020\n8\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0018R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001dR\u0016\u0010\u000b\u001a\u00020\n8\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0018R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u001d\"\u0004\u0008\'\u0010(R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u001dR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u001dR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u001dR\u0016\u0010\u000f\u001a\u00020\n8\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u0018\u00a8\u0006L"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;",
        "Landroid/os/Parcelable;",
        "Lcom/guochao/faceshow/aaspring/base/model/GCUser;",
        "userId",
        "",
        "nickName",
        "city",
        "country",
        "gender",
        "",
        "level",
        "age",
        "avatarUrl",
        "smallAvatarUrl",
        "vipLevel",
        "dist",
        "language",
        "countryLogo",
        "attentionStatus",
        "dressHead",
        "mvpUrl",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "getAge",
        "()I",
        "getAttentionStatus",
        "setAttentionStatus",
        "(I)V",
        "getAvatarUrl",
        "()Ljava/lang/String;",
        "getCity",
        "getCountry",
        "getCountryLogo",
        "getDist",
        "getDressHead",
        "getGender",
        "getLanguage",
        "getLevel",
        "getMvpUrl",
        "setMvpUrl",
        "(Ljava/lang/String;)V",
        "getNickName",
        "getSmallAvatarUrl",
        "getUserId",
        "getVipLevel",
        "address",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
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
        "getAddressStr",
        "hashCode",
        "toString",
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
            "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final age:I

.field private attentionStatus:I

.field private final avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "img"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final city:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final country:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final countryLogo:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dist:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dressHead:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "headImgUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final gender:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sex"
    .end annotation
.end field

.field private final language:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final level:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "levelId"
    .end annotation
.end field

.field private mvpUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final nickName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final smallAvatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "smallImg"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final userId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final vipLevel:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vip"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo$Creator;

    invoke-direct {v0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo$Creator;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
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
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->userId:Ljava/lang/String;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->nickName:Ljava/lang/String;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->city:Ljava/lang/String;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->country:Ljava/lang/String;

    move v1, p5

    .line 7
    iput v1, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->gender:I

    move v1, p6

    .line 8
    iput v1, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->level:I

    move v1, p7

    .line 9
    iput v1, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->age:I

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->avatarUrl:Ljava/lang/String;

    move-object v1, p9

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->smallAvatarUrl:Ljava/lang/String;

    move v1, p10

    .line 12
    iput v1, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->vipLevel:I

    move-object v1, p11

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->dist:Ljava/lang/String;

    move-object v1, p12

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->language:Ljava/lang/String;

    move-object v1, p13

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->countryLogo:Ljava/lang/String;

    move/from16 v1, p14

    .line 16
    iput v1, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->attentionStatus:I

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->dressHead:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->mvpUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    move/from16 v7, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    move/from16 v9, p7

    :goto_2
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    const/4 v12, 0x2

    goto :goto_3

    :cond_3
    move/from16 v12, p10

    :goto_3
    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move-object/from16 v18, v0

    goto :goto_4

    :cond_4
    move-object/from16 v18, p16

    :goto_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    move-object/from16 v17, p15

    .line 1
    invoke-direct/range {v2 .. v18}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final address()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->city:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->country:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->city:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->country:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s , %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->city:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->city:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->country:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->country:Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getNickName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->city:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->country:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getGender()I

    move-result v6

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getLevel()I

    move-result v7

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAge()I

    move-result v8

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getVipLevel()I

    move-result v11

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->dist:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->language:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getCountryLogo()Ljava/lang/String;

    move-result-object v14

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->attentionStatus:I

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    and-int/lit16 v0, v1, 0x4000

    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getDressHead()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_e
    move-object/from16 v0, p15

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getMvpUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move/from16 p14, v15

    move-object/from16 p15, v0

    move-object/from16 p16, v1

    invoke-virtual/range {p0 .. p16}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component10()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getVipLevel()I

    move-result v0

    return v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->dist:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getCountryLogo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component14()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->attentionStatus:I

    return v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getDressHead()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getMvpUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getGender()I

    move-result v0

    return v0
.end method

.method public final component6()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getLevel()I

    move-result v0

    return v0
.end method

.method public final component7()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAge()I

    move-result v0

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
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
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    new-instance v17, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v17
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
    instance-of v1, p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->city:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->city:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->country:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getGender()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getGender()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getLevel()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getLevel()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAge()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAge()I

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getVipLevel()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getVipLevel()I

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->dist:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->dist:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->language:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getCountryLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getCountryLogo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->attentionStatus:I

    iget v3, p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->attentionStatus:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getDressHead()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getDressHead()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getMvpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getMvpUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public final getAddressStr()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->dist:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->city:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->country:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->dist:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->address()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->address()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->dist:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s (%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->dist:Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->age:I

    return v0
.end method

.method public final getAttentionStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->attentionStatus:I

    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryLogo()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->countryLogo:Ljava/lang/String;

    return-object v0
.end method

.method public final getDist()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->dist:Ljava/lang/String;

    return-object v0
.end method

.method public getDressHead()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->dressHead:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->gender:I

    return v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->level:I

    return v0
.end method

.method public getMvpUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->mvpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallAvatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->smallAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVipLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->vipLevel:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getNickName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->city:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->country:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getGender()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getLevel()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAge()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getVipLevel()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->dist:Ljava/lang/String;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->language:Ljava/lang/String;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getCountryLogo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getCountryLogo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->attentionStatus:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getDressHead()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getDressHead()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getMvpUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getMvpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAttentionStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->attentionStatus:I

    return-void
.end method

.method public setMvpUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->mvpUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "F2fMatchRoomInfo(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nickName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getGender()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAge()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", smallAvatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vipLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getVipLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->dist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", countryLogo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getCountryLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attentionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->attentionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dressHead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getDressHead()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mvpUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getMvpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->nickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->city:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->country:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->gender:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->level:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->age:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->smallAvatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->vipLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->dist:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->countryLogo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->attentionStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->dressHead:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->mvpUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
