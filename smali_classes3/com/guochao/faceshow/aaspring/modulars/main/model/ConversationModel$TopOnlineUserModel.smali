.class public final Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;
.super Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lp7/h;
.implements Lb8/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TopOnlineUserModel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0017\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004Bc\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u001d\u001a\u00020\u0008\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0015\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008A\u0010BJ\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\n\u001a\u00020\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016J\u0008\u0010\u000c\u001a\u00020\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u0006H\u0016J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0008H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003Js\u0010!\u001a\u00020\u00002\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00082\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\t\u0010\"\u001a\u00020\u0006H\u00d6\u0001J\t\u0010#\u001a\u00020\u0008H\u00d6\u0001J\u0013\u0010\'\u001a\u00020&2\u0008\u0010%\u001a\u0004\u0018\u00010$H\u00d6\u0003J\t\u0010(\u001a\u00020\u0008H\u00d6\u0001J\u0019\u0010-\u001a\u00020,2\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\u0008H\u00d6\u0001R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010.\u001a\u0004\u0008/\u00100R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010.\u001a\u0004\u00081\u00100R\u0019\u0010\u001a\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010.\u001a\u0004\u00082\u00100R\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010.\u001a\u0004\u00083\u00100R\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010.\u001a\u0004\u00084\u00100R\u0017\u0010\u001d\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u00105\u001a\u0004\u00086\u00107R\u0019\u0010\u001e\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010.\u001a\u0004\u00088\u00100R$\u0010\u001f\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u00109\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R$\u0010 \u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010.\u001a\u0004\u0008>\u00100\"\u0004\u0008?\u0010@\u00a8\u0006C"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;",
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;",
        "Landroid/os/Parcelable;",
        "Lp7/h;",
        "Lb8/g;",
        "getVipInfo",
        "",
        "getAvatarUrl",
        "",
        "getGender",
        "getPendantUrl",
        "getCountryFlag",
        "getCurrentUserId",
        "getHostCertificationUrl",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "Lcom/guochao/faceshow/aaspring/beans/UserVipData;",
        "component8",
        "component9",
        "userId",
        "img",
        "nickName",
        "dressHead",
        "countryLogo",
        "liveStatus",
        "liveId",
        "userVipData",
        "_hostCertificationUrl",
        "copy",
        "toString",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "describeContents",
        "Landroid/os/Parcel;",
        "parcel",
        "flags",
        "",
        "writeToParcel",
        "Ljava/lang/String;",
        "getUserId",
        "()Ljava/lang/String;",
        "getImg",
        "getNickName",
        "getDressHead",
        "getCountryLogo",
        "I",
        "getLiveStatus",
        "()I",
        "getLiveId",
        "Lcom/guochao/faceshow/aaspring/beans/UserVipData;",
        "getUserVipData",
        "()Lcom/guochao/faceshow/aaspring/beans/UserVipData;",
        "setUserVipData",
        "(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V",
        "get_hostCertificationUrl",
        "set_hostCertificationUrl",
        "(Ljava/lang/String;)V",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/UserVipData;Ljava/lang/String;)V",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _hostCertificationUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hostCertificationUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final countryLogo:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dressHead:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final img:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final liveId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final liveStatus:I

.field private final nickName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final userId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private userVipData:Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel$Creator;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel$Creator;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/UserVipData;Ljava/lang/String;)V
    .locals 1
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
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/guochao/faceshow/aaspring/beans/UserVipData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->img:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->nickName:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->dressHead:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->countryLogo:Ljava/lang/String;

    .line 8
    iput p6, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->liveStatus:I

    .line 9
    iput-object p7, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->liveId:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userVipData:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 11
    iput-object p9, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->_hostCertificationUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/UserVipData;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v11, p8

    :goto_0
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    move-object v12, v2

    goto :goto_1

    :cond_1
    move-object/from16 v12, p9

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    .line 1
    invoke-direct/range {v3 .. v12}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/UserVipData;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/UserVipData;Ljava/lang/String;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->img:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->nickName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->dressHead:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->countryLogo:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->liveStatus:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->liveId:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userVipData:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->_hostCertificationUrl:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/UserVipData;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->img:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->dressHead:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->countryLogo:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->liveStatus:I

    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userVipData:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->_hostCertificationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/UserVipData;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;
    .locals 11
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
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/guochao/faceshow/aaspring/beans/UserVipData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v10, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/UserVipData;Ljava/lang/String;)V

    return-object v10
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
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->img:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->img:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->nickName:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->nickName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->dressHead:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->dressHead:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->countryLogo:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->countryLogo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->liveStatus:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->liveStatus:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->liveId:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->liveId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userVipData:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userVipData:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->_hostCertificationUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->_hostCertificationUrl:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public bridge synthetic getAge()I
    .locals 1

    invoke-static {p0}, Lp7/a;->a(Lp7/b;)I

    move-result v0

    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->img:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->countryLogo:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final getCountryLogo()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->countryLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final getDressHead()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->dressHead:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHostCertificationUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->_hostCertificationUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final getImg()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->img:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getLevel()I
    .locals 1

    invoke-static {p0}, Lp7/d;->a(Lp7/e;)I

    move-result v0

    return v0
.end method

.method public final getLiveId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLiveStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->liveStatus:I

    return v0
.end method

.method public bridge synthetic getMVPUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->a(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNickName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->dressHead:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getSended()I
    .locals 1

    invoke-static {p0}, Lb8/f;->b(Lb8/g;)I

    move-result v0

    return v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getUserName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->b(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUserVipData()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userVipData:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public bridge synthetic getVipAvatarPendentId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->c(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVipAvatarPendentType()I
    .locals 1

    invoke-static {p0}, Lb8/f;->d(Lb8/g;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getVipAvatarPendentUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->e(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVipDressCarId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->f(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVipDressCarUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->g(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVipDressCarUrlV2()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->h(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVipDressChatUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->i(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVipInfo()Lb8/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userVipData:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public bridge synthetic getVipLevel()I
    .locals 1

    invoke-static {p0}, Lb8/f;->j(Lb8/g;)I

    move-result v0

    return v0
.end method

.method public final get_hostCertificationUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->_hostCertificationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->img:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->nickName:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->dressHead:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->countryLogo:Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->liveStatus:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->liveId:Ljava/lang/String;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userVipData:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->_hostCertificationUrl:Ljava/lang/String;

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic isVip()Z
    .locals 1

    invoke-static {p0}, Lb8/f;->k(Lb8/g;)Z

    move-result v0

    return v0
.end method

.method public final setUserVipData(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/UserVipData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userVipData:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public final set_hostCertificationUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->_hostCertificationUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TopOnlineUserModel(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", img="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nickName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dressHead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->dressHead:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", countryLogo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->countryLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", liveStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->liveStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", liveId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->liveId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userVipData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userVipData:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _hostCertificationUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->_hostCertificationUrl:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->img:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->nickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->dressHead:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->countryLogo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->liveStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->liveId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->userVipData:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->_hostCertificationUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
