.class public final Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\'\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B}\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0005\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0015J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0010H\u00c6\u0003J\t\u0010*\u001a\u00020\u0003H\u00c6\u0003J\t\u0010+\u001a\u00020\u0005H\u00c6\u0003J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\u0003H\u00c6\u0003J\t\u0010.\u001a\u00020\u0005H\u00c6\u0003J\t\u0010/\u001a\u00020\u0005H\u00c6\u0003J\t\u00100\u001a\u00020\u0005H\u00c6\u0003J\u0011\u00101\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u00c6\u0003J\t\u00102\u001a\u00020\u0005H\u00c6\u0003J\t\u00103\u001a\u00020\u0005H\u00c6\u0003J\t\u00104\u001a\u00020\u0005H\u00c6\u0003J\t\u00105\u001a\u00020\u0005H\u00c6\u0003J\u009d\u0001\u00106\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0003H\u00c6\u0001J\u0013\u00107\u001a\u0002082\u0008\u00109\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010:\u001a\u00020\u0005H\u00d6\u0001J\t\u0010;\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0013\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0017R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0019R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0019R\u0019\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0019R\u0011\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0019R\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0019R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010\u0011\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0017R\u0011\u0010\u0012\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0019R\u0011\u0010\u0014\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u0017R\u0011\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0019\u00a8\u0006<"
    }
    d2 = {
        "Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;",
        "",
        "coverImgUrl",
        "",
        "freezeStatus",
        "",
        "level",
        "memberPrice",
        "microList",
        "",
        "Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;",
        "nature",
        "onlineStatus",
        "roomId",
        "userOnlineRoomId",
        "ticket",
        "",
        "title",
        "userId",
        "imGroupId",
        "userOnlineImGroupId",
        "(Ljava/lang/String;IIILjava/util/List;IIIIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "getCoverImgUrl",
        "()Ljava/lang/String;",
        "getFreezeStatus",
        "()I",
        "getImGroupId",
        "getLevel",
        "getMemberPrice",
        "getMicroList",
        "()Ljava/util/List;",
        "getNature",
        "getOnlineStatus",
        "getRoomId",
        "getTicket",
        "()J",
        "getTitle",
        "getUserId",
        "getUserOnlineImGroupId",
        "getUserOnlineRoomId",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
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
.field private final coverImgUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final freezeStatus:I

.field private final imGroupId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final level:I

.field private final memberPrice:I

.field private final microList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final nature:I

.field private final onlineStatus:I

.field private final roomId:I

.field private final ticket:J

.field private final title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userId:I

.field private final userOnlineImGroupId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userOnlineRoomId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/util/List;IIIIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;",
            ">;IIIIJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p12

    move-object/from16 v3, p14

    move-object/from16 v4, p15

    const-string v5, "coverImgUrl"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "title"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "imGroupId"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "userOnlineImGroupId"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->coverImgUrl:Ljava/lang/String;

    move v1, p2

    .line 3
    iput v1, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->freezeStatus:I

    move v1, p3

    .line 4
    iput v1, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->level:I

    move v1, p4

    .line 5
    iput v1, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->memberPrice:I

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->microList:Ljava/util/List;

    move v1, p6

    .line 7
    iput v1, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->nature:I

    move v1, p7

    .line 8
    iput v1, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->onlineStatus:I

    move v1, p8

    .line 9
    iput v1, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->roomId:I

    move/from16 v1, p9

    .line 10
    iput v1, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userOnlineRoomId:I

    move-wide/from16 v5, p10

    .line 11
    iput-wide v5, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->ticket:J

    .line 12
    iput-object v2, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->title:Ljava/lang/String;

    move/from16 v1, p13

    .line 13
    iput v1, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userId:I

    .line 14
    iput-object v3, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->imGroupId:Ljava/lang/String;

    .line 15
    iput-object v4, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userOnlineImGroupId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;Ljava/lang/String;IIILjava/util/List;IIIIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->coverImgUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->freezeStatus:I

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->level:I

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->memberPrice:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->microList:Ljava/util/List;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->nature:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->onlineStatus:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->roomId:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userOnlineRoomId:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-wide v11, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->ticket:J

    goto :goto_9

    :cond_9
    move-wide/from16 v11, p10

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->title:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget v14, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userId:I

    goto :goto_b

    :cond_b
    move/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->imGroupId:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userOnlineImGroupId:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v1, p15

    :goto_d
    move-object/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move-wide/from16 p10, v11

    move-object/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v1

    invoke-virtual/range {p0 .. p15}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->copy(Ljava/lang/String;IIILjava/util/List;IIIIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->coverImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->ticket:J

    return-wide v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userId:I

    return v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->imGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userOnlineImGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->freezeStatus:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->level:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->memberPrice:I

    return v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->microList:Ljava/util/List;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->nature:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->onlineStatus:I

    return v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->roomId:I

    return v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userOnlineRoomId:I

    return v0
.end method

.method public final copy(Ljava/lang/String;IIILjava/util/List;IIIIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;",
            ">;IIIIJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "coverImgUrl"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupId"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userOnlineImGroupId"

    move-object/from16 v14, p15

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;

    move-object v1, v0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-wide/from16 v11, p10

    move/from16 v14, p13

    move-object/from16 v16, p15

    invoke-direct/range {v1 .. v16}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;-><init>(Ljava/lang/String;IIILjava/util/List;IIIIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

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
    instance-of v1, p1, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;

    iget-object v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->coverImgUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->coverImgUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->freezeStatus:I

    iget v3, p1, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->freezeStatus:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->level:I

    iget v3, p1, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->level:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->memberPrice:I

    iget v3, p1, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->memberPrice:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->microList:Ljava/util/List;

    iget-object v3, p1, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->microList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->nature:I

    iget v3, p1, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->nature:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->onlineStatus:I

    iget v3, p1, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->onlineStatus:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->roomId:I

    iget v3, p1, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->roomId:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userOnlineRoomId:I

    iget v3, p1, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userOnlineRoomId:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->ticket:J

    iget-wide v5, p1, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->ticket:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userId:I

    iget v3, p1, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userId:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->imGroupId:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->imGroupId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userOnlineImGroupId:Ljava/lang/String;

    iget-object p1, p1, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userOnlineImGroupId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final getCoverImgUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->coverImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getFreezeStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->freezeStatus:I

    return v0
.end method

.method public final getImGroupId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->imGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->level:I

    return v0
.end method

.method public final getMemberPrice()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->memberPrice:I

    return v0
.end method

.method public final getMicroList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->microList:Ljava/util/List;

    return-object v0
.end method

.method public final getNature()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->nature:I

    return v0
.end method

.method public final getOnlineStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->onlineStatus:I

    return v0
.end method

.method public final getRoomId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->roomId:I

    return v0
.end method

.method public final getTicket()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->ticket:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userId:I

    return v0
.end method

.method public final getUserOnlineImGroupId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userOnlineImGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserOnlineRoomId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userOnlineRoomId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->coverImgUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->freezeStatus:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->level:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->memberPrice:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->microList:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->nature:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->onlineStatus:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->roomId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userOnlineRoomId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->ticket:J

    invoke-static {v1, v2}, Lb7/b;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->imGroupId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userOnlineImGroupId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserVoiceRoomInfoBean(coverImgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->coverImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", freezeStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->freezeStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", memberPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->memberPrice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", microList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->microList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->nature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", onlineStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->onlineStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", roomId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->roomId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userOnlineRoomId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userOnlineRoomId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ticket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->ticket:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->imGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userOnlineImGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->userOnlineImGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
