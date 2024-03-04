.class public final Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008B\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0016J\t\u0010=\u001a\u00020\u0003H\u00c6\u0003J\t\u0010>\u001a\u00020\u0003H\u00c6\u0003J\t\u0010?\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010C\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0011\u0010F\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u00c6\u0003J\t\u0010G\u001a\u00020\u0003H\u00c6\u0003J\t\u0010H\u001a\u00020\u000cH\u00c6\u0003J\t\u0010I\u001a\u00020\u0003H\u00c6\u0003J\t\u0010J\u001a\u00020\u0003H\u00c6\u0003J\t\u0010K\u001a\u00020\u0003H\u00c6\u0003J\u00b1\u0001\u0010L\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0003H\u00c6\u0001J\t\u0010M\u001a\u00020\u0003H\u00d6\u0001J\u0013\u0010N\u001a\u00020O2\u0008\u0010P\u001a\u0004\u0018\u00010QH\u00d6\u0003J\t\u0010R\u001a\u00020\u0003H\u00d6\u0001J\t\u0010S\u001a\u00020\u0005H\u00d6\u0001J\u0019\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020W2\u0006\u0010X\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u0015\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0018\"\u0004\u0008 \u0010\u001aR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u001c\"\u0004\u0008\"\u0010\u001eR\u001a\u0010\u0010\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0018\"\u0004\u0008$\u0010\u001aR\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u001c\"\u0004\u0008*\u0010\u001eR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u001c\"\u0004\u0008,\u0010\u001eR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u001c\"\u0004\u0008.\u0010\u001eR\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0018\"\u0004\u00080\u0010\u001aR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001a\u0010\r\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u0018\"\u0004\u00086\u0010\u001aR\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u0018\"\u0004\u00088\u0010\u001aR\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010\u0018\"\u0004\u0008:\u0010\u001aR\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\u0018\"\u0004\u0008<\u0010\u001a\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;",
        "Landroid/os/Parcelable;",
        "guildId",
        "",
        "name",
        "",
        "reason",
        "recordVoList",
        "",
        "Lcom/guochao/faceshow/guild/bean/RecordVo;",
        "signId",
        "signTime",
        "",
        "signType",
        "state",
        "userId",
        "recordId",
        "status",
        "reqReason",
        "refuseComplain",
        "refuseReason",
        "periodDay",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V",
        "getGuildId",
        "()I",
        "setGuildId",
        "(I)V",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "getPeriodDay",
        "setPeriodDay",
        "getReason",
        "setReason",
        "getRecordId",
        "setRecordId",
        "getRecordVoList",
        "()Ljava/util/List;",
        "setRecordVoList",
        "(Ljava/util/List;)V",
        "getRefuseComplain",
        "setRefuseComplain",
        "getRefuseReason",
        "setRefuseReason",
        "getReqReason",
        "setReqReason",
        "getSignId",
        "setSignId",
        "getSignTime",
        "()J",
        "setSignTime",
        "(J)V",
        "getSignType",
        "setSignType",
        "getState",
        "setState",
        "getStatus",
        "setStatus",
        "getUserId",
        "setUserId",
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
        "component_guild_release"
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
            "Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private guildId:I

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private periodDay:I

.field private reason:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recordId:I

.field private recordVoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/guild/bean/RecordVo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private refuseComplain:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private refuseReason:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private reqReason:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private signId:I

.field private signTime:J

.field private signType:I

.field private state:I

.field private status:I

.field private userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean$Creator;

    invoke-direct {v0}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean$Creator;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/guild/bean/RecordVo;",
            ">;IJIIIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 2
    iput v1, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->guildId:I

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->name:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reason:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordVoList:Ljava/util/List;

    move v1, p5

    .line 6
    iput v1, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signId:I

    move-wide v1, p6

    .line 7
    iput-wide v1, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signTime:J

    move v1, p8

    .line 8
    iput v1, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signType:I

    move v1, p9

    .line 9
    iput v1, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->state:I

    move v1, p10

    .line 10
    iput v1, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->userId:I

    move v1, p11

    .line 11
    iput v1, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordId:I

    move v1, p12

    .line 12
    iput v1, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->status:I

    move-object/from16 v1, p13

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reqReason:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseComplain:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseReason:Ljava/lang/String;

    move/from16 v1, p16

    .line 16
    iput v1, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->periodDay:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p17

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v17, 0x0

    goto :goto_0

    :cond_0
    move/from16 v17, p16

    :goto_0
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 17
    invoke-direct/range {v1 .. v17}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->guildId:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reason:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordVoList:Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signId:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-wide v7, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signTime:J

    goto :goto_5

    :cond_5
    move-wide/from16 v7, p6

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget v9, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signType:I

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget v10, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->state:I

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget v11, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->userId:I

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget v12, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordId:I

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget v13, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->status:I

    goto :goto_a

    :cond_a
    move/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reqReason:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseComplain:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseReason:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget v1, v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->periodDay:I

    goto :goto_e

    :cond_e
    move/from16 v1, p16

    :goto_e
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-wide/from16 p6, v7

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p15, v15

    move/from16 p16, v1

    invoke-virtual/range {p0 .. p16}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->guildId:I

    return v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordId:I

    return v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->status:I

    return v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reqReason:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseComplain:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseReason:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->periodDay:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/guild/bean/RecordVo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordVoList:Ljava/util/List;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signId:I

    return v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signTime:J

    return-wide v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signType:I

    return v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->state:I

    return v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->userId:I

    return v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;
    .locals 18
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/guild/bean/RecordVo;",
            ">;IJIIIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    new-instance v17, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v17
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->guildId:I

    iget v3, p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->guildId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reason:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordVoList:Ljava/util/List;

    iget-object v3, p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordVoList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signId:I

    iget v3, p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signId:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signTime:J

    iget-wide v5, p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signType:I

    iget v3, p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signType:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->state:I

    iget v3, p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->state:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->userId:I

    iget v3, p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->userId:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordId:I

    iget v3, p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordId:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->status:I

    iget v3, p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->status:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reqReason:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reqReason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseComplain:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseComplain:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseReason:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseReason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->periodDay:I

    iget p1, p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->periodDay:I

    if-eq v1, p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getGuildId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->guildId:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPeriodDay()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->periodDay:I

    return v0
.end method

.method public final getReason()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecordId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordId:I

    return v0
.end method

.method public final getRecordVoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/guild/bean/RecordVo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordVoList:Ljava/util/List;

    return-object v0
.end method

.method public final getRefuseComplain()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseComplain:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefuseReason()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseReason:Ljava/lang/String;

    return-object v0
.end method

.method public final getReqReason()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reqReason:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signId:I

    return v0
.end method

.method public final getSignTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signTime:J

    return-wide v0
.end method

.method public final getSignType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signType:I

    return v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->state:I

    return v0
.end method

.method public final getStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->status:I

    return v0
.end method

.method public final getUserId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->userId:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->guildId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reason:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordVoList:Ljava/util/List;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signTime:J

    invoke-static {v3, v4}, Lb7/b;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->state:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->userId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->status:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reqReason:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseComplain:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseReason:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->periodDay:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setGuildId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->guildId:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->name:Ljava/lang/String;

    return-void
.end method

.method public final setPeriodDay(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->periodDay:I

    return-void
.end method

.method public final setReason(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reason:Ljava/lang/String;

    return-void
.end method

.method public final setRecordId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordId:I

    return-void
.end method

.method public final setRecordVoList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/guild/bean/RecordVo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordVoList:Ljava/util/List;

    return-void
.end method

.method public final setRefuseComplain(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseComplain:Ljava/lang/String;

    return-void
.end method

.method public final setRefuseReason(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseReason:Ljava/lang/String;

    return-void
.end method

.method public final setReqReason(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reqReason:Ljava/lang/String;

    return-void
.end method

.method public final setSignId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signId:I

    return-void
.end method

.method public final setSignTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signTime:J

    return-void
.end method

.method public final setSignType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signType:I

    return-void
.end method

.method public final setState(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->state:I

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->status:I

    return-void
.end method

.method public final setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->userId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContractHistoryBean(guildId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->guildId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recordVoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordVoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", signTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", signType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recordId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reqReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reqReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refuseComplain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseComplain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refuseReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", periodDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->periodDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->guildId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordVoList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/guild/bean/RecordVo;

    invoke-virtual {v1, p1, p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    :goto_1
    iget p2, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->signType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->state:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->userId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->recordId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->reqReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseComplain:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->refuseReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->periodDay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
