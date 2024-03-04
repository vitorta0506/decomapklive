.class public final Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u00081\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u00b3\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u0012\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0018J\t\u0010-\u001a\u00020\u0004H\u00c6\u0003J\t\u0010.\u001a\u00020\u0004H\u00c6\u0003J\t\u0010/\u001a\u00020\u0004H\u00c6\u0003J\t\u00100\u001a\u00020\u0004H\u00c6\u0003J\t\u00101\u001a\u00020\u0004H\u00c6\u0003J\t\u00102\u001a\u00020\u0004H\u00c6\u0003J\t\u00103\u001a\u00020\u0004H\u00c6\u0003J\t\u00104\u001a\u00020\u0004H\u00c6\u0003J\t\u00105\u001a\u00020\u0004H\u00c6\u0003J\t\u00106\u001a\u00020\u0004H\u00c6\u0003J\t\u00107\u001a\u00020\u0004H\u00c6\u0003J\u0011\u00108\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u00c6\u0003J\t\u00109\u001a\u00020\u0004H\u00c6\u0003J\u0011\u0010:\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u00c6\u0003J\t\u0010;\u001a\u00020\u0004H\u00c6\u0003J\t\u0010<\u001a\u00020\u0004H\u00c6\u0003J\u00b9\u0001\u0010=\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0004H\u00c6\u0001J\t\u0010>\u001a\u00020\u0004H\u00d6\u0001J\u0013\u0010?\u001a\u00020@2\u0008\u0010A\u001a\u0004\u0018\u00010BH\u00d6\u0003J\t\u0010C\u001a\u00020\u0004H\u00d6\u0001J\t\u0010D\u001a\u00020EH\u00d6\u0001J\u0019\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020\u0004H\u00d6\u0001R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001aR\u0011\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001aR\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001aR\u0011\u0010\u000f\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001aR\u0011\u0010\u0010\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001aR\u0011\u0010\u0011\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001aR\u0011\u0010\u0012\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001aR\u0019\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001aR\u0011\u0010%\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u001aR\u0019\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010#R\u0011\u0010\u0013\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001aR\u0011\u0010\u0014\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u001aR\u0011\u0010\u0015\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u001aR\u0011\u0010\u0016\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u001aR\u0011\u0010\u0017\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u001a\u00a8\u0006K"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;",
        "Landroid/os/Parcelable;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "anchorTake",
        "",
        "awardSwitch",
        "bigWinMax",
        "bigWinMin",
        "giftNumInfoList",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/GiftNumInfo;",
        "id",
        "prizeInfoList",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/PrizeInfo;",
        "exampleMultiple1",
        "exampleMultiple2",
        "exampleMultiple3",
        "exampleMultiple4",
        "superWinMax",
        "superWinMin",
        "trackMultiple",
        "winMax",
        "winMin",
        "(IIIILjava/util/List;ILjava/util/List;IIIIIIIII)V",
        "getAnchorTake",
        "()I",
        "getAwardSwitch",
        "getBigWinMax",
        "getBigWinMin",
        "getExampleMultiple1",
        "getExampleMultiple2",
        "getExampleMultiple3",
        "getExampleMultiple4",
        "getGiftNumInfoList",
        "()Ljava/util/List;",
        "getId",
        "maxTimes",
        "getMaxTimes",
        "getPrizeInfoList",
        "getSuperWinMax",
        "getSuperWinMin",
        "getTrackMultiple",
        "getWinMax",
        "getWinMin",
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
            "Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final anchorTake:I

.field private final awardSwitch:I

.field private final bigWinMax:I

.field private final bigWinMin:I

.field private final exampleMultiple1:I

.field private final exampleMultiple2:I

.field private final exampleMultiple3:I

.field private final exampleMultiple4:I

.field private final giftNumInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/GiftNumInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final id:I

.field private final prizeInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PrizeInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final superWinMax:I

.field private final superWinMin:I

.field private final trackMultiple:I

.field private final winMax:I

.field private final winMin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean$Creator;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean$Creator;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIILjava/util/List;ILjava/util/List;IIIIIIIII)V
    .locals 2
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/GiftNumInfo;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PrizeInfo;",
            ">;IIIIIIIII)V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;-><init>()V

    move v1, p1

    .line 3
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->anchorTake:I

    move v1, p2

    .line 4
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->awardSwitch:I

    move v1, p3

    .line 5
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->bigWinMax:I

    move v1, p4

    .line 6
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->bigWinMin:I

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->giftNumInfoList:Ljava/util/List;

    move v1, p6

    .line 8
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->id:I

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->prizeInfoList:Ljava/util/List;

    move v1, p8

    .line 10
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple1:I

    move v1, p9

    .line 11
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple2:I

    move v1, p10

    .line 12
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple3:I

    move v1, p11

    .line 13
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple4:I

    move v1, p12

    .line 14
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->superWinMax:I

    move v1, p13

    .line 15
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->superWinMin:I

    move/from16 v1, p14

    .line 16
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->trackMultiple:I

    move/from16 v1, p15

    .line 17
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->winMax:I

    move/from16 v1, p16

    .line 18
    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->winMin:I

    return-void
.end method

.method public synthetic constructor <init>(IIIILjava/util/List;ILjava/util/List;IIIIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    const/16 v3, 0x2710

    if-eqz v1, :cond_2

    const/16 v6, 0x2710

    goto :goto_2

    :cond_2
    move/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    move/from16 v7, p4

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    move/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    move-object v10, v1

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    const/16 v11, 0x2710

    goto :goto_6

    :cond_6
    move/from16 v11, p8

    :goto_6
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    const/16 v1, 0xbb8

    const/16 v12, 0xbb8

    goto :goto_7

    :cond_7
    move/from16 v12, p9

    :goto_7
    and-int/lit16 v1, v0, 0x200

    const/16 v3, 0x3e8

    if-eqz v1, :cond_8

    const/16 v13, 0x3e8

    goto :goto_8

    :cond_8
    move/from16 v13, p10

    :goto_8
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_9

    const/16 v1, 0x1f4

    const/16 v14, 0x1f4

    goto :goto_9

    :cond_9
    move/from16 v14, p11

    :goto_9
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_a

    const/16 v15, 0x3e8

    goto :goto_a

    :cond_a
    move/from16 v15, p12

    :goto_a
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_b

    const/16 v16, 0x1

    goto :goto_b

    :cond_b
    move/from16 v16, p13

    :goto_b
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_c

    const/16 v17, 0x1

    goto :goto_c

    :cond_c
    move/from16 v17, p14

    :goto_c
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_d

    const/16 v18, 0x1

    goto :goto_d

    :cond_d
    move/from16 v18, p15

    :goto_d
    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    const/16 v19, 0x1

    goto :goto_e

    :cond_e
    move/from16 v19, p16

    :goto_e
    move-object/from16 v3, p0

    move-object/from16 v8, p5

    .line 1
    invoke-direct/range {v3 .. v19}, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;-><init>(IIIILjava/util/List;ILjava/util/List;IIIIIIIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;IIIILjava/util/List;ILjava/util/List;IIIIIIIIIILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->anchorTake:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->awardSwitch:I

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->bigWinMax:I

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->bigWinMin:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->giftNumInfoList:Ljava/util/List;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->id:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->prizeInfoList:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple1:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple2:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple3:I

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget v12, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple4:I

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget v13, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->superWinMax:I

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget v14, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->superWinMin:I

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->trackMultiple:I

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->winMax:I

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    iget v1, v0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->winMin:I

    goto :goto_f

    :cond_f
    move/from16 v1, p16

    :goto_f
    move/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p15, v15

    move/from16 p16, v1

    invoke-virtual/range {p0 .. p16}, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->copy(IIIILjava/util/List;ILjava/util/List;IIIIIIIII)Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->anchorTake:I

    return v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple3:I

    return v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple4:I

    return v0
.end method

.method public final component12()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->superWinMax:I

    return v0
.end method

.method public final component13()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->superWinMin:I

    return v0
.end method

.method public final component14()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->trackMultiple:I

    return v0
.end method

.method public final component15()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->winMax:I

    return v0
.end method

.method public final component16()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->winMin:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->awardSwitch:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->bigWinMax:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->bigWinMin:I

    return v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/GiftNumInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->giftNumInfoList:Ljava/util/List;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->id:I

    return v0
.end method

.method public final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PrizeInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->prizeInfoList:Ljava/util/List;

    return-object v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple1:I

    return v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple2:I

    return v0
.end method

.method public final copy(IIIILjava/util/List;ILjava/util/List;IIIIIIIII)Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;
    .locals 18
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/GiftNumInfo;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PrizeInfo;",
            ">;IIIIIIIII)",
            "Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    new-instance v17, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;-><init>(IIIILjava/util/List;ILjava/util/List;IIIIIIIII)V

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
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->anchorTake:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->anchorTake:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->awardSwitch:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->awardSwitch:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->bigWinMax:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->bigWinMax:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->bigWinMin:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->bigWinMin:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->giftNumInfoList:Ljava/util/List;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->giftNumInfoList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->id:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->id:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->prizeInfoList:Ljava/util/List;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->prizeInfoList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple1:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple1:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple2:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple2:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple3:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple3:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple4:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple4:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->superWinMax:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->superWinMax:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->superWinMin:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->superWinMin:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->trackMultiple:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->trackMultiple:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->winMax:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->winMax:I

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->winMin:I

    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->winMin:I

    if-eq v1, p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public final getAnchorTake()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->anchorTake:I

    return v0
.end method

.method public final getAwardSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->awardSwitch:I

    return v0
.end method

.method public final getBigWinMax()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->bigWinMax:I

    return v0
.end method

.method public final getBigWinMin()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->bigWinMin:I

    return v0
.end method

.method public final getExampleMultiple1()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple1:I

    return v0
.end method

.method public final getExampleMultiple2()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple2:I

    return v0
.end method

.method public final getExampleMultiple3()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple3:I

    return v0
.end method

.method public final getExampleMultiple4()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple4:I

    return v0
.end method

.method public final getGiftNumInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/GiftNumInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->giftNumInfoList:Ljava/util/List;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->id:I

    return v0
.end method

.method public final getMaxTimes()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->giftNumInfoList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/GiftNumInfo;

    .line 3
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/GiftNumInfo;->getTimes()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/GiftNumInfo;->getTimes()I

    move-result v1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final getPrizeInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PrizeInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->prizeInfoList:Ljava/util/List;

    return-object v0
.end method

.method public final getSuperWinMax()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->superWinMax:I

    return v0
.end method

.method public final getSuperWinMin()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->superWinMin:I

    return v0
.end method

.method public final getTrackMultiple()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->trackMultiple:I

    return v0
.end method

.method public final getWinMax()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->winMax:I

    return v0
.end method

.method public final getWinMin()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->winMin:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->anchorTake:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->awardSwitch:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->bigWinMax:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->bigWinMin:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->giftNumInfoList:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->id:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->prizeInfoList:Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple1:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple2:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple3:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple4:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->superWinMax:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->superWinMin:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->trackMultiple:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->winMax:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->winMin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GiftLuckDetailBean(anchorTake="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->anchorTake:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", awardSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->awardSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bigWinMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->bigWinMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bigWinMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->bigWinMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", giftNumInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->giftNumInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", prizeInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->prizeInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exampleMultiple1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exampleMultiple2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exampleMultiple3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exampleMultiple4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", superWinMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->superWinMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", superWinMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->superWinMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trackMultiple="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->trackMultiple:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", winMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->winMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", winMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->winMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->anchorTake:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->awardSwitch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->bigWinMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->bigWinMin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->giftNumInfoList:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/GiftNumInfo;

    invoke-virtual {v3, p1, p2}, Lcom/guochao/faceshow/aaspring/beans/GiftNumInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->prizeInfoList:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/PrizeInfo;

    invoke-virtual {v1, p1, p2}, Lcom/guochao/faceshow/aaspring/beans/PrizeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_3
    :goto_3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple3:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->exampleMultiple4:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->superWinMax:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->superWinMin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->trackMultiple:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->winMax:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;->winMin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
