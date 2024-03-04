.class public final Lcom/guochao/faceshow/guild/bean/RecordVo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008<\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bw\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0013J\t\u00106\u001a\u00020\u0003H\u00c6\u0003J\t\u00107\u001a\u00020\u0003H\u00c6\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\t\u00109\u001a\u00020\u0003H\u00c6\u0003J\t\u0010:\u001a\u00020\u0003H\u00c6\u0003J\t\u0010;\u001a\u00020\u0005H\u00c6\u0003J\t\u0010<\u001a\u00020\u0003H\u00c6\u0003J\u0011\u0010=\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u00c6\u0003J\t\u0010>\u001a\u00020\u0003H\u00c6\u0003J\t\u0010?\u001a\u00020\u0003H\u00c6\u0003J\t\u0010@\u001a\u00020\u0003H\u00c6\u0003J\t\u0010A\u001a\u00020\u0003H\u00c6\u0003J\t\u0010B\u001a\u00020\u0003H\u00c6\u0003J\u0095\u0001\u0010C\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0003H\u00c6\u0001J\t\u0010D\u001a\u00020\u0003H\u00d6\u0001J\u0013\u0010E\u001a\u00020F2\u0008\u0010G\u001a\u0004\u0018\u00010HH\u00d6\u0003J\t\u0010I\u001a\u00020\u0003H\u00d6\u0001J\t\u0010J\u001a\u00020\tH\u00d6\u0001J\u0019\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u0017R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0015\"\u0004\u0008\u001f\u0010\u0017R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010\u0012\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0015\"\u0004\u0008%\u0010\u0017R\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0015\"\u0004\u0008\'\u0010\u0017R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0015\"\u0004\u0008)\u0010\u0017R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0015\"\u0004\u0008/\u0010\u0017R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u0015\"\u0004\u00081\u0010\u0017R\u001a\u0010\u000c\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u0015\"\u0004\u00083\u0010\u0017R\u001a\u0010\r\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0015\"\u0004\u00085\u0010\u0017\u00a8\u0006P"
    }
    d2 = {
        "Lcom/guochao/faceshow/guild/bean/RecordVo;",
        "Landroid/os/Parcelable;",
        "complain",
        "",
        "createTime",
        "",
        "id",
        "imgList",
        "",
        "",
        "platform",
        "signId",
        "status",
        "type",
        "operationType",
        "signType",
        "reason",
        "canComplain",
        "moreSeven",
        "(IJILjava/util/List;IIIIIILjava/lang/String;II)V",
        "getCanComplain",
        "()I",
        "setCanComplain",
        "(I)V",
        "getComplain",
        "setComplain",
        "getCreateTime",
        "()J",
        "setCreateTime",
        "(J)V",
        "getId",
        "setId",
        "getImgList",
        "()Ljava/util/List;",
        "setImgList",
        "(Ljava/util/List;)V",
        "getMoreSeven",
        "setMoreSeven",
        "getOperationType",
        "setOperationType",
        "getPlatform",
        "setPlatform",
        "getReason",
        "()Ljava/lang/String;",
        "setReason",
        "(Ljava/lang/String;)V",
        "getSignId",
        "setSignId",
        "getSignType",
        "setSignType",
        "getStatus",
        "setStatus",
        "getType",
        "setType",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
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
            "Lcom/guochao/faceshow/guild/bean/RecordVo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private canComplain:I

.field private complain:I

.field private createTime:J

.field private id:I

.field private imgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private moreSeven:I

.field private operationType:I

.field private platform:I

.field private reason:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private signId:I

.field private signType:I

.field private status:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/guild/bean/RecordVo$Creator;

    invoke-direct {v0}, Lcom/guochao/faceshow/guild/bean/RecordVo$Creator;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/guild/bean/RecordVo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJILjava/util/List;IIIIIILjava/lang/String;II)V
    .locals 0
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIIIII",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->complain:I

    .line 3
    iput-wide p2, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->createTime:J

    .line 4
    iput p4, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->id:I

    .line 5
    iput-object p5, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->imgList:Ljava/util/List;

    .line 6
    iput p6, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->platform:I

    .line 7
    iput p7, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->signId:I

    .line 8
    iput p8, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->status:I

    .line 9
    iput p9, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->type:I

    .line 10
    iput p10, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->operationType:I

    .line 11
    iput p11, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->signType:I

    .line 12
    iput-object p12, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->reason:Ljava/lang/String;

    .line 13
    iput p13, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->canComplain:I

    .line 14
    iput p14, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->moreSeven:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/guild/bean/RecordVo;IJILjava/util/List;IIIIIILjava/lang/String;IIILjava/lang/Object;)Lcom/guochao/faceshow/guild/bean/RecordVo;
    .locals 15

    move-object v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/guochao/faceshow/guild/bean/RecordVo;->complain:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/guochao/faceshow/guild/bean/RecordVo;->createTime:J

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget v5, v0, Lcom/guochao/faceshow/guild/bean/RecordVo;->id:I

    goto :goto_2

    :cond_2
    move/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/guochao/faceshow/guild/bean/RecordVo;->imgList:Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/guochao/faceshow/guild/bean/RecordVo;->platform:I

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/guochao/faceshow/guild/bean/RecordVo;->signId:I

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget v9, v0, Lcom/guochao/faceshow/guild/bean/RecordVo;->status:I

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget v10, v0, Lcom/guochao/faceshow/guild/bean/RecordVo;->type:I

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget v11, v0, Lcom/guochao/faceshow/guild/bean/RecordVo;->operationType:I

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget v12, v0, Lcom/guochao/faceshow/guild/bean/RecordVo;->signType:I

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/guochao/faceshow/guild/bean/RecordVo;->reason:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget v14, v0, Lcom/guochao/faceshow/guild/bean/RecordVo;->canComplain:I

    goto :goto_b

    :cond_b
    move/from16 v14, p13

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    iget v1, v0, Lcom/guochao/faceshow/guild/bean/RecordVo;->moreSeven:I

    goto :goto_c

    :cond_c
    move/from16 v1, p14

    :goto_c
    move/from16 p1, v2

    move-wide/from16 p2, v3

    move/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v14

    move/from16 p14, v1

    invoke-virtual/range {p0 .. p14}, Lcom/guochao/faceshow/guild/bean/RecordVo;->copy(IJILjava/util/List;IIIIIILjava/lang/String;II)Lcom/guochao/faceshow/guild/bean/RecordVo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->complain:I

    return v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->signType:I

    return v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->canComplain:I

    return v0
.end method

.method public final component13()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->moreSeven:I

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->createTime:J

    return-wide v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->id:I

    return v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->imgList:Ljava/util/List;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->platform:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->signId:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->status:I

    return v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->type:I

    return v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->operationType:I

    return v0
.end method

.method public final copy(IJILjava/util/List;IIIIIILjava/lang/String;II)Lcom/guochao/faceshow/guild/bean/RecordVo;
    .locals 16
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIIIII",
            "Ljava/lang/String;",
            "II)",
            "Lcom/guochao/faceshow/guild/bean/RecordVo;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v15, Lcom/guochao/faceshow/guild/bean/RecordVo;

    move-object v0, v15

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lcom/guochao/faceshow/guild/bean/RecordVo;-><init>(IJILjava/util/List;IIIIIILjava/lang/String;II)V

    return-object v15
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
    instance-of v1, p1, Lcom/guochao/faceshow/guild/bean/RecordVo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/guild/bean/RecordVo;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->complain:I

    iget v3, p1, Lcom/guochao/faceshow/guild/bean/RecordVo;->complain:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->createTime:J

    iget-wide v5, p1, Lcom/guochao/faceshow/guild/bean/RecordVo;->createTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->id:I

    iget v3, p1, Lcom/guochao/faceshow/guild/bean/RecordVo;->id:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->imgList:Ljava/util/List;

    iget-object v3, p1, Lcom/guochao/faceshow/guild/bean/RecordVo;->imgList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->platform:I

    iget v3, p1, Lcom/guochao/faceshow/guild/bean/RecordVo;->platform:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->signId:I

    iget v3, p1, Lcom/guochao/faceshow/guild/bean/RecordVo;->signId:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->status:I

    iget v3, p1, Lcom/guochao/faceshow/guild/bean/RecordVo;->status:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->type:I

    iget v3, p1, Lcom/guochao/faceshow/guild/bean/RecordVo;->type:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->operationType:I

    iget v3, p1, Lcom/guochao/faceshow/guild/bean/RecordVo;->operationType:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->signType:I

    iget v3, p1, Lcom/guochao/faceshow/guild/bean/RecordVo;->signType:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->reason:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/guild/bean/RecordVo;->reason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->canComplain:I

    iget v3, p1, Lcom/guochao/faceshow/guild/bean/RecordVo;->canComplain:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->moreSeven:I

    iget p1, p1, Lcom/guochao/faceshow/guild/bean/RecordVo;->moreSeven:I

    if-eq v1, p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final getCanComplain()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->canComplain:I

    return v0
.end method

.method public final getComplain()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->complain:I

    return v0
.end method

.method public final getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->createTime:J

    return-wide v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->id:I

    return v0
.end method

.method public final getImgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->imgList:Ljava/util/List;

    return-object v0
.end method

.method public final getMoreSeven()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->moreSeven:I

    return v0
.end method

.method public final getOperationType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->operationType:I

    return v0
.end method

.method public final getPlatform()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->platform:I

    return v0
.end method

.method public final getReason()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->signId:I

    return v0
.end method

.method public final getSignType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->signType:I

    return v0
.end method

.method public final getStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->status:I

    return v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->complain:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->createTime:J

    invoke-static {v1, v2}, Lb7/b;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->id:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->imgList:Ljava/util/List;

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

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->platform:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->signId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->status:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->type:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->operationType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->signType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->reason:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->canComplain:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->moreSeven:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setCanComplain(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->canComplain:I

    return-void
.end method

.method public final setComplain(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->complain:I

    return-void
.end method

.method public final setCreateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->createTime:J

    return-void
.end method

.method public final setId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->id:I

    return-void
.end method

.method public final setImgList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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

    iput-object p1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->imgList:Ljava/util/List;

    return-void
.end method

.method public final setMoreSeven(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->moreSeven:I

    return-void
.end method

.method public final setOperationType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->operationType:I

    return-void
.end method

.method public final setPlatform(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->platform:I

    return-void
.end method

.method public final setReason(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->reason:Ljava/lang/String;

    return-void
.end method

.method public final setSignId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->signId:I

    return-void
.end method

.method public final setSignType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->signType:I

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->status:I

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordVo(complain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->complain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imgList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->imgList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->platform:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", signId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->signId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", operationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->operationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", signType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->signType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", canComplain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->canComplain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", moreSeven="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->moreSeven:I

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

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->complain:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->imgList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget p2, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->platform:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->signId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->operationType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->signType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->reason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->canComplain:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/faceshow/guild/bean/RecordVo;->moreSeven:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
