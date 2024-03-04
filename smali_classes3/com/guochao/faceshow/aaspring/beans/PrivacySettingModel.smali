.class public final Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0010\u000e\n\u0002\u0008L\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001nB\u00b5\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0003\u0012\u0006\u0010\u0019\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u001aJ\t\u0010K\u001a\u00020\u0003H\u00c6\u0003J\t\u0010L\u001a\u00020\u0003H\u00c6\u0003J\t\u0010M\u001a\u00020\u0003H\u00c6\u0003J\t\u0010N\u001a\u00020\u0003H\u00c6\u0003J\t\u0010O\u001a\u00020\u0003H\u00c6\u0003J\t\u0010P\u001a\u00020\u0003H\u00c6\u0003J\t\u0010Q\u001a\u00020\u0003H\u00c6\u0003J\t\u0010R\u001a\u00020\u0003H\u00c6\u0003J\t\u0010S\u001a\u00020\u0003H\u00c6\u0003J\t\u0010T\u001a\u00020\u0003H\u00c6\u0003J\t\u0010U\u001a\u00020\u0003H\u00c6\u0003J\t\u0010V\u001a\u00020\u0003H\u00c6\u0003J\t\u0010W\u001a\u00020\u0017H\u00c6\u0003J\t\u0010X\u001a\u00020\u0003H\u00c6\u0003J\t\u0010Y\u001a\u00020\u0003H\u00c6\u0003J\t\u0010Z\u001a\u00020\u0003H\u00c6\u0003J\t\u0010[\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\\\u001a\u00020\u0003H\u00c6\u0003J\t\u0010]\u001a\u00020\u0003H\u00c6\u0003J\t\u0010^\u001a\u00020\u0003H\u00c6\u0003J\t\u0010_\u001a\u00020\u0003H\u00c6\u0003J\t\u0010`\u001a\u00020\u0003H\u00c6\u0003J\u00e5\u0001\u0010a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0003H\u00c6\u0001J\t\u0010b\u001a\u00020\u0003H\u00d6\u0001J\u0013\u0010c\u001a\u00020d2\u0008\u0010e\u001a\u0004\u0018\u00010fH\u00d6\u0003J\t\u0010g\u001a\u00020\u0003H\u00d6\u0001J\t\u0010h\u001a\u00020\u0017H\u00d6\u0001J\u0019\u0010i\u001a\u00020j2\u0006\u0010k\u001a\u00020l2\u0006\u0010m\u001a\u00020\u0003H\u00d6\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001e\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u001c\"\u0004\u0008 \u0010\u001eR\u001e\u0010\u0005\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u001c\"\u0004\u0008\"\u0010\u001eR\u001e\u0010\u0006\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001c\"\u0004\u0008$\u0010\u001eR\u001e\u0010\u0007\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u001c\"\u0004\u0008&\u0010\u001eR\u001e\u0010\u0008\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u001c\"\u0004\u0008(\u0010\u001eR\u001e\u0010\t\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u001c\"\u0004\u0008*\u0010\u001eR\u001e\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u001c\"\u0004\u0008,\u0010\u001eR\u001e\u0010\u000b\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u001c\"\u0004\u0008.\u0010\u001eR\u001e\u0010\u000c\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u001c\"\u0004\u00080\u0010\u001eR\u001e\u0010\r\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u001c\"\u0004\u00082\u0010\u001eR\u001e\u0010\u000e\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u001c\"\u0004\u00084\u0010\u001eR\u001e\u0010\u000f\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u001c\"\u0004\u00086\u0010\u001eR\u001e\u0010\u0010\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u001c\"\u0004\u00088\u0010\u001eR\u001e\u0010\u0011\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010\u001c\"\u0004\u0008:\u0010\u001eR\u001e\u0010\u0012\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\u001c\"\u0004\u0008<\u0010\u001eR\u001e\u0010\u0013\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010\u001c\"\u0004\u0008>\u0010\u001eR\u001e\u0010\u0014\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u001c\"\u0004\u0008@\u0010\u001eR\u001e\u0010\u0015\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010\u001c\"\u0004\u0008B\u0010\u001eR\u001e\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\u001e\u0010\u0018\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010\u001c\"\u0004\u0008H\u0010\u001eR\u001e\u0010\u0019\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010\u001c\"\u0004\u0008J\u0010\u001e\u00a8\u0006o"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;",
        "Landroid/os/Parcelable;",
        "addressBook",
        "",
        "appointAuth",
        "basicInfo",
        "career",
        "chatSet",
        "chatSwitch",
        "closeDistance",
        "dialogue",
        "distance",
        "emotion",
        "friends",
        "imMsgSet",
        "interest",
        "language",
        "makeFriend",
        "nearby",
        "nearbyFunc",
        "online",
        "privateInvite",
        "setTime",
        "",
        "version",
        "voiceRoomStatus",
        "(IIIIIIIIIIIIIIIIIIILjava/lang/String;II)V",
        "getAddressBook",
        "()I",
        "setAddressBook",
        "(I)V",
        "getAppointAuth",
        "setAppointAuth",
        "getBasicInfo",
        "setBasicInfo",
        "getCareer",
        "setCareer",
        "getChatSet",
        "setChatSet",
        "getChatSwitch",
        "setChatSwitch",
        "getCloseDistance",
        "setCloseDistance",
        "getDialogue",
        "setDialogue",
        "getDistance",
        "setDistance",
        "getEmotion",
        "setEmotion",
        "getFriends",
        "setFriends",
        "getImMsgSet",
        "setImMsgSet",
        "getInterest",
        "setInterest",
        "getLanguage",
        "setLanguage",
        "getMakeFriend",
        "setMakeFriend",
        "getNearby",
        "setNearby",
        "getNearbyFunc",
        "setNearbyFunc",
        "getOnline",
        "setOnline",
        "getPrivateInvite",
        "setPrivateInvite",
        "getSetTime",
        "()Ljava/lang/String;",
        "setSetTime",
        "(Ljava/lang/String;)V",
        "getVersion",
        "setVersion",
        "getVoiceRoomStatus",
        "setVoiceRoomStatus",
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
        "component20",
        "component21",
        "component22",
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
        "VoiceRoomStatusModel",
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
            "Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private addressBook:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "addressBook"
    .end annotation
.end field

.field private appointAuth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appointAuth"
    .end annotation
.end field

.field private basicInfo:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "basicInfo"
    .end annotation
.end field

.field private career:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "career"
    .end annotation
.end field

.field private chatSet:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chatSet"
    .end annotation
.end field

.field private chatSwitch:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chatSwitch"
    .end annotation
.end field

.field private closeDistance:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "closeDistance"
    .end annotation
.end field

.field private dialogue:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dialogue"
    .end annotation
.end field

.field private distance:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "distance"
    .end annotation
.end field

.field private emotion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emotion"
    .end annotation
.end field

.field private friends:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friends"
    .end annotation
.end field

.field private imMsgSet:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imMsgSet"
    .end annotation
.end field

.field private interest:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "interest"
    .end annotation
.end field

.field private language:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field private makeFriend:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "makeFriend"
    .end annotation
.end field

.field private nearby:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nearby"
    .end annotation
.end field

.field private nearbyFunc:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nearbyFunc"
    .end annotation
.end field

.field private online:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "online"
    .end annotation
.end field

.field private privateInvite:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "privateInvite"
    .end annotation
.end field

.field private setTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "setTime"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private version:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field

.field private voiceRoomStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voiceRoomStatus"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$Creator;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$Creator;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIIIILjava/lang/String;II)V
    .locals 3
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p20

    const-string v2, "setTime"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v2, p1

    .line 2
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->addressBook:I

    move v2, p2

    .line 3
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->appointAuth:I

    move v2, p3

    .line 4
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->basicInfo:I

    move v2, p4

    .line 5
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->career:I

    move v2, p5

    .line 6
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSet:I

    move v2, p6

    .line 7
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSwitch:I

    move v2, p7

    .line 8
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->closeDistance:I

    move v2, p8

    .line 9
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->dialogue:I

    move v2, p9

    .line 10
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->distance:I

    move v2, p10

    .line 11
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->emotion:I

    move v2, p11

    .line 12
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->friends:I

    move v2, p12

    .line 13
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->imMsgSet:I

    move/from16 v2, p13

    .line 14
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->interest:I

    move/from16 v2, p14

    .line 15
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->language:I

    move/from16 v2, p15

    .line 16
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->makeFriend:I

    move/from16 v2, p16

    .line 17
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearby:I

    move/from16 v2, p17

    .line 18
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearbyFunc:I

    move/from16 v2, p18

    .line 19
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->online:I

    move/from16 v2, p19

    .line 20
    iput v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->privateInvite:I

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->setTime:Ljava/lang/String;

    move/from16 v1, p21

    .line 22
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->version:I

    move/from16 v1, p22

    .line 23
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->voiceRoomStatus:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;IIIIIIIIIIIIIIIIIIILjava/lang/String;IIILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p23

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->addressBook:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->appointAuth:I

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->basicInfo:I

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->career:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSet:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSwitch:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->closeDistance:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->dialogue:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->distance:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->emotion:I

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget v12, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->friends:I

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget v13, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->imMsgSet:I

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget v14, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->interest:I

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->language:I

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->makeFriend:I

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p15, v15

    if-eqz v16, :cond_f

    iget v15, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearby:I

    goto :goto_f

    :cond_f
    move/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p16, v15

    if-eqz v16, :cond_10

    iget v15, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearbyFunc:I

    goto :goto_10

    :cond_10
    move/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p17, v15

    if-eqz v16, :cond_11

    iget v15, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->online:I

    goto :goto_11

    :cond_11
    move/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move/from16 p18, v15

    if-eqz v16, :cond_12

    iget v15, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->privateInvite:I

    goto :goto_12

    :cond_12
    move/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->setTime:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget v15, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->version:I

    goto :goto_14

    :cond_14
    move/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v1, v1, v16

    if-eqz v1, :cond_15

    iget v1, v0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->voiceRoomStatus:I

    goto :goto_15

    :cond_15
    move/from16 v1, p22

    :goto_15
    move/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p21, v15

    move/from16 p22, v1

    invoke-virtual/range {p0 .. p22}, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->copy(IIIIIIIIIIIIIIIIIIILjava/lang/String;II)Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->addressBook:I

    return v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->emotion:I

    return v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->friends:I

    return v0
.end method

.method public final component12()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->imMsgSet:I

    return v0
.end method

.method public final component13()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->interest:I

    return v0
.end method

.method public final component14()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->language:I

    return v0
.end method

.method public final component15()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->makeFriend:I

    return v0
.end method

.method public final component16()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearby:I

    return v0
.end method

.method public final component17()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearbyFunc:I

    return v0
.end method

.method public final component18()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->online:I

    return v0
.end method

.method public final component19()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->privateInvite:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->appointAuth:I

    return v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->setTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->version:I

    return v0
.end method

.method public final component22()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->voiceRoomStatus:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->basicInfo:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->career:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSet:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSwitch:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->closeDistance:I

    return v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->dialogue:I

    return v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->distance:I

    return v0
.end method

.method public final copy(IIIIIIIIIIIIIIIIIIILjava/lang/String;II)Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;
    .locals 24
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    const-string v0, "setTime"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v23, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-direct/range {v0 .. v22}, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;-><init>(IIIIIIIIIIIIIIIIIIILjava/lang/String;II)V

    return-object v23
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
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->addressBook:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->addressBook:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->appointAuth:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->appointAuth:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->basicInfo:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->basicInfo:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->career:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->career:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSet:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSet:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSwitch:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSwitch:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->closeDistance:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->closeDistance:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->dialogue:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->dialogue:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->distance:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->distance:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->emotion:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->emotion:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->friends:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->friends:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->imMsgSet:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->imMsgSet:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->interest:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->interest:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->language:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->language:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->makeFriend:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->makeFriend:I

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearby:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearby:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearbyFunc:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearbyFunc:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->online:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->online:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->privateInvite:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->privateInvite:I

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->setTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->setTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->version:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->version:I

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->voiceRoomStatus:I

    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->voiceRoomStatus:I

    if-eq v1, p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getAddressBook()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->addressBook:I

    return v0
.end method

.method public final getAppointAuth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->appointAuth:I

    return v0
.end method

.method public final getBasicInfo()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->basicInfo:I

    return v0
.end method

.method public final getCareer()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->career:I

    return v0
.end method

.method public final getChatSet()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSet:I

    return v0
.end method

.method public final getChatSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSwitch:I

    return v0
.end method

.method public final getCloseDistance()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->closeDistance:I

    return v0
.end method

.method public final getDialogue()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->dialogue:I

    return v0
.end method

.method public final getDistance()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->distance:I

    return v0
.end method

.method public final getEmotion()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->emotion:I

    return v0
.end method

.method public final getFriends()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->friends:I

    return v0
.end method

.method public final getImMsgSet()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->imMsgSet:I

    return v0
.end method

.method public final getInterest()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->interest:I

    return v0
.end method

.method public final getLanguage()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->language:I

    return v0
.end method

.method public final getMakeFriend()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->makeFriend:I

    return v0
.end method

.method public final getNearby()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearby:I

    return v0
.end method

.method public final getNearbyFunc()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearbyFunc:I

    return v0
.end method

.method public final getOnline()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->online:I

    return v0
.end method

.method public final getPrivateInvite()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->privateInvite:I

    return v0
.end method

.method public final getSetTime()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->setTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->version:I

    return v0
.end method

.method public final getVoiceRoomStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->voiceRoomStatus:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->addressBook:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->appointAuth:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->basicInfo:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->career:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSet:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSwitch:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->closeDistance:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->dialogue:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->distance:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->emotion:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->friends:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->imMsgSet:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->interest:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->language:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->makeFriend:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearby:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearbyFunc:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->online:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->privateInvite:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->setTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->version:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->voiceRoomStatus:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAddressBook(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->addressBook:I

    return-void
.end method

.method public final setAppointAuth(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->appointAuth:I

    return-void
.end method

.method public final setBasicInfo(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->basicInfo:I

    return-void
.end method

.method public final setCareer(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->career:I

    return-void
.end method

.method public final setChatSet(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSet:I

    return-void
.end method

.method public final setChatSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSwitch:I

    return-void
.end method

.method public final setCloseDistance(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->closeDistance:I

    return-void
.end method

.method public final setDialogue(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->dialogue:I

    return-void
.end method

.method public final setDistance(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->distance:I

    return-void
.end method

.method public final setEmotion(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->emotion:I

    return-void
.end method

.method public final setFriends(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->friends:I

    return-void
.end method

.method public final setImMsgSet(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->imMsgSet:I

    return-void
.end method

.method public final setInterest(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->interest:I

    return-void
.end method

.method public final setLanguage(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->language:I

    return-void
.end method

.method public final setMakeFriend(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->makeFriend:I

    return-void
.end method

.method public final setNearby(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearby:I

    return-void
.end method

.method public final setNearbyFunc(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearbyFunc:I

    return-void
.end method

.method public final setOnline(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->online:I

    return-void
.end method

.method public final setPrivateInvite(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->privateInvite:I

    return-void
.end method

.method public final setSetTime(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->setTime:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->version:I

    return-void
.end method

.method public final setVoiceRoomStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->voiceRoomStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivacySettingModel(addressBook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->addressBook:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appointAuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->appointAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", basicInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->basicInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", career="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->career:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chatSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chatSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", closeDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->closeDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dialogue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->dialogue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->distance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", emotion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->emotion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", friends="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->friends:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imMsgSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->imMsgSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", interest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->interest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->language:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", makeFriend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->makeFriend:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nearby="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearby:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nearbyFunc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearbyFunc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", online="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->online:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", privateInvite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->privateInvite:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", setTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->setTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voiceRoomStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->voiceRoomStatus:I

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

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->addressBook:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->appointAuth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->basicInfo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->career:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSet:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->chatSwitch:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->closeDistance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->dialogue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->distance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->emotion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->friends:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->imMsgSet:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->interest:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->language:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->makeFriend:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearby:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->nearbyFunc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->online:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->privateInvite:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->setTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->version:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->voiceRoomStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
