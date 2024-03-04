.class public final Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/component/liveroom/model/GCVoiceRoomSeatModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008 \n\u0002\u0010\u000b\n\u0002\u0008$\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 U2\u00020\u0001:\u0001UB\u00b5\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0014J\t\u00108\u001a\u00020\u0003H\u00c6\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010;\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010<\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00104J\t\u0010=\u001a\u00020\u0003H\u00c6\u0003J\t\u0010>\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010@\u001a\u00020\u0003H\u00c6\u0003J\t\u0010A\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010D\u001a\u00020\u0003H\u00c6\u0003J\t\u0010E\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u00be\u0001\u0010H\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00032\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010IJ\t\u0010J\u001a\u00020\u0003H\u00d6\u0001J\u0013\u0010K\u001a\u00020(2\u0008\u0010L\u001a\u0004\u0018\u00010MH\u00d6\u0003J\t\u0010N\u001a\u00020\u0003H\u00d6\u0001J\t\u0010O\u001a\u00020\u0007H\u00d6\u0001J\u0019\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020\u0003H\u00d6\u0001R\u0014\u0010\n\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0005\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016\"\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u000c\u001a\u0004\u0018\u00010\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0018R\u0014\u0010\t\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0016R\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0016\"\u0004\u0008 \u0010\u001bR\u001e\u0010\u0012\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0016\"\u0004\u0008\"\u0010\u001bR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0007X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0018\"\u0004\u0008$\u0010%R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u0018R\u0011\u0010\'\u001a\u00020(8F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0016\"\u0004\u0008,\u0010\u001bR\u001e\u0010\u0002\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u0016\"\u0004\u0008.\u0010\u001bR\u001e\u0010\u0004\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0016\"\u0004\u00080\u0010\u001bR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\u0018R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\u0018R\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u00105\u001a\u0004\u00083\u00104R\u0014\u00106\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u0010\u0016\u00a8\u0006V"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;",
        "Lcom/guochao/component/liveroom/model/GCVoiceRoomSeatModel;",
        "seatIndex",
        "",
        "seatStatus",
        "coinNumber",
        "userId",
        "",
        "nickName",
        "gender",
        "age",
        "smallAvatarUrl",
        "countryLogo",
        "dressHead",
        "avatarUrl",
        "roleType",
        "vip",
        "id",
        "level",
        "mvpUrl",
        "(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;IILjava/lang/String;)V",
        "getAge",
        "()I",
        "getAvatarUrl",
        "()Ljava/lang/String;",
        "getCoinNumber",
        "setCoinNumber",
        "(I)V",
        "getCountryLogo",
        "getDressHead",
        "getGender",
        "getId",
        "setId",
        "getLevel",
        "setLevel",
        "getMvpUrl",
        "setMvpUrl",
        "(Ljava/lang/String;)V",
        "getNickName",
        "onSeat",
        "",
        "getOnSeat",
        "()Z",
        "getRoleType",
        "setRoleType",
        "getSeatIndex",
        "setSeatIndex",
        "getSeatStatus",
        "setSeatStatus",
        "getSmallAvatarUrl",
        "getUserId",
        "getVip",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "vipLevel",
        "getVipLevel",
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
        "(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;IILjava/lang/String;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;",
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
        "Companion",
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
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SEAT_STATUS_CLOSE_MICRO:I = 0x4

.field public static final SEAT_STATUS_EMPTY:I = 0x0

.field public static final SEAT_STATUS_LOCK_MICRO:I = 0x3

.field public static final SEAT_STATUS_OPEN_MICRO:I = 0x2

.field public static final SEAT_STATUS_OPEN_MICRO_PRO:I = 0x1


# instance fields
.field private final age:I

.field private final avatarUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private coinNumber:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "income"
    .end annotation
.end field

.field private final countryLogo:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dressHead:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dressHead"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final gender:I

.field private id:I

.field private level:I
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

.field private roleType:I

.field private seatIndex:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "index"
    .end annotation
.end field

.field private seatStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private final smallAvatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "img"
        }
        value = "smallImg"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final userId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final vip:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->Companion:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel$Companion;

    new-instance v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel$Creator;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel$Creator;-><init>()V

    sput-object v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v17, 0xffff

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;-><init>(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;IILjava/lang/String;)V
    .locals 2
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
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
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 2
    iput v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->seatIndex:I

    move v1, p2

    .line 3
    iput v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->seatStatus:I

    move v1, p3

    .line 4
    iput v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->coinNumber:I

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->userId:Ljava/lang/String;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->nickName:Ljava/lang/String;

    move v1, p6

    .line 7
    iput v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->gender:I

    move v1, p7

    .line 8
    iput v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->age:I

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->smallAvatarUrl:Ljava/lang/String;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->countryLogo:Ljava/lang/String;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->dressHead:Ljava/lang/String;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->avatarUrl:Ljava/lang/String;

    move v1, p12

    .line 13
    iput v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->roleType:I

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->vip:Ljava/lang/Integer;

    move/from16 v1, p14

    .line 15
    iput v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->id:I

    move/from16 v1, p15

    .line 16
    iput v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->level:I

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->mvpUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    const-string v6, ""

    if-eqz v5, :cond_3

    move-object v5, v6

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move-object v7, v6

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    move-object v10, v6

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    move-object v11, v6

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    move-object v12, v6

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    goto :goto_a

    :cond_a
    move-object/from16 v6, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/16 v13, 0x1e

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_c

    :cond_c
    move-object/from16 v2, p13

    :goto_c
    and-int/lit16 v14, v0, 0x2000

    if-eqz v14, :cond_d

    const/4 v14, -0x1

    goto :goto_d

    :cond_d
    move/from16 v14, p14

    :goto_d
    and-int/lit16 v15, v0, 0x4000

    if-eqz v15, :cond_e

    const/4 v15, 0x1

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v0, v0, v16

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v0, p16

    :goto_f
    move-object/from16 p1, p0

    move/from16 p2, v1

    move/from16 p3, v3

    move/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v6

    move/from16 p13, v13

    move-object/from16 p14, v2

    move/from16 p15, v14

    move/from16 p16, v15

    move-object/from16 p17, v0

    .line 19
    invoke-direct/range {p1 .. p17}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;-><init>(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;IILjava/lang/String;ILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v2

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatStatus()I

    move-result v3

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getCoinNumber()I

    move-result v4

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getNickName()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getGender()I

    move-result v7

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getAge()I

    move-result v8

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getDressHead()Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget v13, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->roleType:I

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->vip:Ljava/lang/Integer;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->id:I

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    and-int/lit16 v0, v1, 0x4000

    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getLevel()I

    move-result v0

    goto :goto_e

    :cond_e
    move/from16 v0, p15

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getMvpUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    move/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move-object/from16 p13, v14

    move/from16 p14, v15

    move/from16 p15, v0

    move-object/from16 p16, v1

    invoke-virtual/range {p0 .. p16}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->copy(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;IILjava/lang/String;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v0

    return v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getDressHead()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component12()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->roleType:I

    return v0
.end method

.method public final component13()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->vip:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component14()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->id:I

    return v0
.end method

.method public final component15()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getLevel()I

    move-result v0

    return v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getMvpUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatStatus()I

    move-result v0

    return v0
.end method

.method public final component3()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getCoinNumber()I

    move-result v0

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getNickName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component6()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getGender()I

    move-result v0

    return v0
.end method

.method public final component7()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getAge()I

    move-result v0

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final copy(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;IILjava/lang/String;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;
    .locals 18
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
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
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, p16

    new-instance v17, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;-><init>(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;IILjava/lang/String;)V

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
    instance-of v1, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatStatus()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getCoinNumber()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getCoinNumber()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getGender()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getGender()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getAge()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getAge()I

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getDressHead()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getDressHead()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->roleType:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->roleType:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->vip:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->vip:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->id:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->id:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getLevel()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getLevel()I

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getMvpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getMvpUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->age:I

    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCoinNumber()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->coinNumber:I

    return v0
.end method

.method public getCountryLogo()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->countryLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getDressHead()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->dressHead:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->gender:I

    return v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->id:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->level:I

    return v0
.end method

.method public getMvpUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->mvpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public final getOnSeat()Z
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final getRoleType()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->roleType:I

    return v0
.end method

.method public getSeatIndex()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->seatIndex:I

    return v0
.end method

.method public getSeatStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->seatStatus:I

    return v0
.end method

.method public getSmallAvatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->smallAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVip()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->vip:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVipLevel()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->vip:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatStatus()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getCoinNumber()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getNickName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getGender()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getAge()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getDressHead()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getDressHead()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->roleType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->vip:Ljava/lang/Integer;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->id:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getLevel()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getMvpUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getMvpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    return v0
.end method

.method public setCoinNumber(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->coinNumber:I

    return-void
.end method

.method public final setId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->id:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->level:I

    return-void
.end method

.method public setMvpUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->mvpUrl:Ljava/lang/String;

    return-void
.end method

.method public final setRoleType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->roleType:I

    return-void
.end method

.method public setSeatIndex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->seatIndex:I

    return-void
.end method

.method public setSeatStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->seatStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceRoomUserOnSeatModel(seatIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", seatStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", coinNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getCoinNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nickName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getGender()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getAge()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", smallAvatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", countryLogo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dressHead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getDressHead()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->roleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->vip:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mvpUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getMvpUrl()Ljava/lang/String;

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

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->seatIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->seatStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->coinNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->nickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->gender:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->age:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->smallAvatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->countryLogo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->dressHead:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->roleType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->vip:Ljava/lang/Integer;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->level:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->mvpUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
