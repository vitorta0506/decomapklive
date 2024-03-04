.class public final Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/guochao/faceshow/aaspring/base/model/GCUser;
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008C\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 V2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001VB\u00a7\u0001\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u000e\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0015J\u000b\u0010:\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010>\u001a\u00020\u0008H\u00c6\u0003J\t\u0010?\u001a\u00020\u0008H\u00c6\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010B\u001a\u00020\u0008H\u00c6\u0003J\t\u0010C\u001a\u00020\u0008H\u00c6\u0003J\t\u0010D\u001a\u00020\u0008H\u00c6\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010G\u001a\u00020\u0008H\u00c6\u0003J\t\u0010H\u001a\u00020\u0008H\u00c6\u0003J\u00af\u0001\u0010I\u001a\u00020\u00002\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00082\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00082\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\t\u0010J\u001a\u00020\u0008H\u00d6\u0001J\u0013\u0010K\u001a\u00020L2\u0008\u0010M\u001a\u0004\u0018\u00010NH\u00d6\u0003J\t\u0010O\u001a\u00020\u0008H\u00d6\u0001J\t\u0010P\u001a\u00020\u0005H\u00d6\u0001J\u0019\u0010Q\u001a\u00020R2\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020\u0008H\u00d6\u0001R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u0007\u001a\u00020\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR \u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0017\"\u0004\u0008\u001f\u0010\u0019R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0017\"\u0004\u0008!\u0010\u0019R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0017\"\u0004\u0008#\u0010\u0019R\u001e\u0010\u000e\u001a\u00020\u00088\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001b\"\u0004\u0008%\u0010\u001dR\u0014\u0010&\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u001bR\u001e\u0010\t\u001a\u00020\u00088\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u001b\"\u0004\u0008)\u0010\u001dR\u001a\u0010\r\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u001b\"\u0004\u0008+\u0010\u001dR\u001a\u0010\u0012\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u001b\"\u0004\u0008-\u0010\u001dR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0017\"\u0004\u0008/\u0010\u0019R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u0017\"\u0004\u00081\u0010\u0019R\u001a\u0010\u0013\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u001b\"\u0004\u00083\u0010\u001dR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0017\"\u0004\u00085\u0010\u0019R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010\u0017\"\u0004\u00087\u0010\u0019R\u001e\u0010\n\u001a\u00020\u00088\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u001b\"\u0004\u00089\u0010\u001d\u00a8\u0006W"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
        "Landroid/os/Parcelable;",
        "Lcom/guochao/faceshow/aaspring/base/model/GCUser;",
        "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
        "userId",
        "",
        "nickName",
        "age",
        "",
        "level",
        "vipLevel",
        "avatarUrl",
        "countryLogo",
        "memberType",
        "gender",
        "smallAvatarUrl",
        "dressHead",
        "address",
        "microStatus",
        "roleType",
        "mvpUrl",
        "(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V",
        "getAddress",
        "()Ljava/lang/String;",
        "setAddress",
        "(Ljava/lang/String;)V",
        "getAge",
        "()I",
        "setAge",
        "(I)V",
        "getAvatarUrl",
        "setAvatarUrl",
        "getCountryLogo",
        "setCountryLogo",
        "getDressHead",
        "setDressHead",
        "getGender",
        "setGender",
        "itemType",
        "getItemType",
        "getLevel",
        "setLevel",
        "getMemberType",
        "setMemberType",
        "getMicroStatus",
        "setMicroStatus",
        "getMvpUrl",
        "setMvpUrl",
        "getNickName",
        "setNickName",
        "getRoleType",
        "setRoleType",
        "getSmallAvatarUrl",
        "setSmallAvatarUrl",
        "getUserId",
        "setUserId",
        "getVipLevel",
        "setVipLevel",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
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
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MICRO_STATUS_EMPTY:I


# instance fields
.field private address:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private age:I

.field private avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "smallImg"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private countryLogo:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dressHead:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private gender:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sex"
    .end annotation
.end field

.field private level:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "levelId"
    .end annotation
.end field

.field private memberType:I

.field private microStatus:I

.field private mvpUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nickName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private roleType:I

.field private smallAvatarUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private vipLevel:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vip"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->Companion:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel$Companion;

    new-instance v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel$Creator;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel$Creator;-><init>()V

    sput-object v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
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
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->userId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->nickName:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->age:I

    .line 5
    iput p4, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->level:I

    .line 6
    iput p5, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->vipLevel:I

    .line 7
    iput-object p6, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->avatarUrl:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->countryLogo:Ljava/lang/String;

    .line 9
    iput p8, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->memberType:I

    .line 10
    iput p9, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->gender:I

    .line 11
    iput-object p10, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->smallAvatarUrl:Ljava/lang/String;

    .line 12
    iput-object p11, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->dressHead:Ljava/lang/String;

    .line 13
    iput-object p12, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->address:Ljava/lang/String;

    .line 14
    iput p13, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->microStatus:I

    .line 15
    iput p14, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->roleType:I

    .line 16
    iput-object p15, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->mvpUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    move/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    move/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move-object v9, v2

    goto :goto_4

    :cond_4
    move-object/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    const/4 v11, 0x0

    goto :goto_6

    :cond_6
    move/from16 v11, p8

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move-object v13, v2

    goto :goto_7

    :cond_7
    move-object/from16 v13, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move-object v14, v2

    goto :goto_8

    :cond_8
    move-object/from16 v14, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    const-string v1, ""

    move-object v15, v1

    goto :goto_9

    :cond_9
    move-object/from16 v15, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    const/16 v16, 0x0

    goto :goto_a

    :cond_a
    move/from16 v16, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    const/16 v1, 0x1e

    const/16 v17, 0x1e

    goto :goto_b

    :cond_b
    move/from16 v17, p14

    :goto_b
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_c

    move-object/from16 v18, v2

    goto :goto_c

    :cond_c
    move-object/from16 v18, p15

    :goto_c
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v12, p9

    .line 17
    invoke-direct/range {v3 .. v18}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getNickName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAge()I

    move-result v4

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getLevel()I

    move-result v5

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getVipLevel()I

    move-result v6

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->memberType:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getGender()I

    move-result v10

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getDressHead()Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->address:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget v14, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->microStatus:I

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->roleType:I

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getMvpUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_e
    move-object/from16 v1, p15

    :goto_e
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v14

    move/from16 p14, v15

    move-object/from16 p15, v1

    invoke-virtual/range {p0 .. p15}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->copy(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getDressHead()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->microStatus:I

    return v0
.end method

.method public final component14()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->roleType:I

    return v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getMvpUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getNickName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAge()I

    move-result v0

    return v0
.end method

.method public final component4()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getLevel()I

    move-result v0

    return v0
.end method

.method public final component5()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getVipLevel()I

    move-result v0

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->memberType:I

    return v0
.end method

.method public final component9()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getGender()I

    move-result v0

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
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
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v16, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-object v16
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
    instance-of v1, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAge()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAge()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getLevel()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getLevel()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getVipLevel()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getVipLevel()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->memberType:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->memberType:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getGender()I

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getGender()I

    move-result v3

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getDressHead()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getDressHead()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->address:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->address:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->microStatus:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->microStatus:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->roleType:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->roleType:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getMvpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getMvpUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->age:I

    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryLogo()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->countryLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getDressHead()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->dressHead:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->gender:I

    return v0
.end method

.method public getItemType()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->level:I

    return v0
.end method

.method public final getMemberType()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->memberType:I

    return v0
.end method

.method public final getMicroStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->microStatus:I

    return v0
.end method

.method public getMvpUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->mvpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public final getRoleType()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->roleType:I

    return v0
.end method

.method public getSmallAvatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->smallAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVipLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->vipLevel:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getNickName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAge()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getLevel()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getVipLevel()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->memberType:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getGender()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getDressHead()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getDressHead()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->address:Ljava/lang/String;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->microStatus:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->roleType:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getMvpUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getMvpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->address:Ljava/lang/String;

    return-void
.end method

.method public setAge(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->age:I

    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setCountryLogo(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->countryLogo:Ljava/lang/String;

    return-void
.end method

.method public setDressHead(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->dressHead:Ljava/lang/String;

    return-void
.end method

.method public setGender(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->gender:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->level:I

    return-void
.end method

.method public final setMemberType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->memberType:I

    return-void
.end method

.method public final setMicroStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->microStatus:I

    return-void
.end method

.method public setMvpUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->mvpUrl:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->nickName:Ljava/lang/String;

    return-void
.end method

.method public final setRoleType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->roleType:I

    return-void
.end method

.method public setSmallAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->smallAvatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->userId:Ljava/lang/String;

    return-void
.end method

.method public setVipLevel(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->vipLevel:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceRoomMemberModel(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nickName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAge()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vipLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getVipLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", countryLogo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getCountryLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", memberType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->memberType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getGender()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", smallAvatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getSmallAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dressHead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getDressHead()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", microStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->microStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", roleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->roleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mvpUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getMvpUrl()Ljava/lang/String;

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

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->nickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->age:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->level:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->vipLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->countryLogo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->memberType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->gender:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->smallAvatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->dressHead:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->microStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->roleType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->mvpUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
