.class public final Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008%\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BW\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\'\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0006H\u00c6\u0003J\t\u0010*\u001a\u00020\u0006H\u00c6\u0003J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\u0003H\u00c6\u0003J\t\u0010.\u001a\u00020\u000cH\u00c6\u0003J`\u0010/\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cH\u00c6\u0001\u00a2\u0006\u0002\u00100J\u0013\u00101\u001a\u0002022\u0008\u00103\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00104\u001a\u00020\u0003H\u00d6\u0001J\t\u00105\u001a\u00020\u000cH\u00d6\u0001R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u000f\"\u0004\u0008\u001c\u0010\u0011R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0018\"\u0004\u0008\"\u0010\u001aR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0018\"\u0004\u0008$\u0010\u001aR\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0018\"\u0004\u0008&\u0010\u001a\u00a8\u00066"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;",
        "",
        "id",
        "",
        "userId",
        "startTime",
        "",
        "expireTime",
        "used",
        "valid",
        "received",
        "url",
        "",
        "(Ljava/lang/Integer;IJJIIILjava/lang/String;)V",
        "getExpireTime",
        "()J",
        "setExpireTime",
        "(J)V",
        "getId",
        "()Ljava/lang/Integer;",
        "setId",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getReceived",
        "()I",
        "setReceived",
        "(I)V",
        "getStartTime",
        "setStartTime",
        "getUrl",
        "()Ljava/lang/String;",
        "setUrl",
        "(Ljava/lang/String;)V",
        "getUsed",
        "setUsed",
        "getUserId",
        "setUserId",
        "getValid",
        "setValid",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "(Ljava/lang/Integer;IJJIIILjava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private expireTime:J

.field private id:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private received:I

.field private startTime:J

.field private url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private used:I

.field private userId:I

.field private valid:I


# direct methods
.method public constructor <init>()V
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xff

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;-><init>(Ljava/lang/Integer;IJJIIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;IJJIIILjava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->id:Ljava/lang/Integer;

    .line 3
    iput p2, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->userId:I

    .line 4
    iput-wide p3, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->startTime:J

    .line 5
    iput-wide p5, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->expireTime:J

    .line 6
    iput p7, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->used:I

    .line 7
    iput p8, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->valid:I

    .line 8
    iput p9, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->received:I

    .line 9
    iput-object p10, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->url:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;IJJIIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_2

    move-wide v7, v5

    goto :goto_2

    :cond_2
    move-wide v7, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p5

    :goto_3
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    move/from16 v4, p7

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    move/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v2, p9

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const-string v0, ""

    goto :goto_7

    :cond_7
    move-object/from16 v0, p10

    :goto_7
    move-object p1, p0

    move-object p2, v1

    move p3, v3

    move-wide p4, v7

    move-wide/from16 p6, v5

    move/from16 p8, v4

    move/from16 p9, v9

    move/from16 p10, v2

    move-object/from16 p11, v0

    .line 11
    invoke-direct/range {p1 .. p11}, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;-><init>(Ljava/lang/Integer;IJJIIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;Ljava/lang/Integer;IJJIIILjava/lang/String;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->id:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->userId:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->startTime:J

    goto :goto_2

    :cond_2
    move-wide v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->expireTime:J

    goto :goto_3

    :cond_3
    move-wide/from16 v6, p5

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->used:I

    goto :goto_4

    :cond_4
    move/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget v9, v0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->valid:I

    goto :goto_5

    :cond_5
    move/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget v10, v0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->received:I

    goto :goto_6

    :cond_6
    move/from16 v10, p9

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->url:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p10

    :goto_7
    move-object p1, v2

    move p2, v3

    move-wide p3, v4

    move-wide/from16 p5, v6

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->copy(Ljava/lang/Integer;IJJIIILjava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->userId:I

    return v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->startTime:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->expireTime:J

    return-wide v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->used:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->valid:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->received:I

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;IJJIIILjava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;
    .locals 12
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "url"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;-><init>(Ljava/lang/Integer;IJJIIILjava/lang/String;)V

    return-object v0
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
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->id:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->userId:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->userId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->startTime:J

    iget-wide v5, p1, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->startTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->expireTime:J

    iget-wide v5, p1, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->expireTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->used:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->used:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->valid:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->valid:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->received:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->received:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->url:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getExpireTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->expireTime:J

    return-wide v0
.end method

.method public final getId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getReceived()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->received:I

    return v0
.end method

.method public final getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->startTime:J

    return-wide v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsed()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->used:I

    return v0
.end method

.method public final getUserId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->userId:I

    return v0
.end method

.method public final getValid()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->valid:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->id:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->userId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->startTime:J

    invoke-static {v1, v2}, Lb7/b;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->expireTime:J

    invoke-static {v1, v2}, Lb7/b;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->used:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->valid:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->received:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setExpireTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->expireTime:J

    return-void
.end method

.method public final setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->id:Ljava/lang/Integer;

    return-void
.end method

.method public final setReceived(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->received:I

    return-void
.end method

.method public final setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->startTime:J

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->url:Ljava/lang/String;

    return-void
.end method

.method public final setUsed(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->used:I

    return-void
.end method

.method public final setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->userId:I

    return-void
.end method

.method public final setValid(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->valid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MvpBagBean(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", expireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->expireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", used="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->used:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->valid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", received="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->received:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
