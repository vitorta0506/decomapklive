.class public final Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008#\n\u0002\u0010\u000b\n\u0002\u0008\u001d\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bk\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0010J\t\u00107\u001a\u00020\u0003H\u00c6\u0003J\u0010\u00108\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJ\u000b\u00109\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010:\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010<\u001a\u00020\u0003H\u00c6\u0003J\t\u0010=\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0010\u0010A\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJ\u008a\u0001\u0010B\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010CJ\u0013\u0010D\u001a\u00020+2\u0008\u0010E\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010F\u001a\u00020\u0003H\u00d6\u0001J\t\u0010G\u001a\u00020\u0007H\u00d6\u0001R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001e\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001a\"\u0004\u0008\u001f\u0010\u001cR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0016\"\u0004\u0008!\u0010\u0018R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0012\"\u0004\u0008#\u0010\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0016\"\u0004\u0008)\u0010\u0018R\u001e\u0010*\u001a\u0004\u0018\u00010+X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00100\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u0016\"\u0004\u00082\u0010\u0018R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u0012\"\u0004\u00084\u0010\u0014R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u0016\"\u0004\u00086\u0010\u0018\u00a8\u0006H"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;",
        "",
        "msgId",
        "",
        "msgTimestamp",
        "",
        "messageType",
        "",
        "type",
        "id",
        "text",
        "name",
        "image",
        "imageWidth",
        "imageHeight",
        "url",
        "(IJLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "getImage",
        "()Ljava/lang/String;",
        "setImage",
        "(Ljava/lang/String;)V",
        "getImageHeight",
        "()Ljava/lang/Integer;",
        "setImageHeight",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getImageWidth",
        "setImageWidth",
        "getMessageType",
        "setMessageType",
        "getMsgId",
        "setMsgId",
        "getMsgTimestamp",
        "()J",
        "setMsgTimestamp",
        "(J)V",
        "getName",
        "setName",
        "shareable",
        "",
        "getShareable",
        "()Ljava/lang/Boolean;",
        "setShareable",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getText",
        "setText",
        "getType",
        "setType",
        "getUrl",
        "setUrl",
        "component1",
        "component10",
        "component11",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(IJLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;",
        "equals",
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
.field private id:I

.field private image:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private imageHeight:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private imageWidth:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private messageType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private msgId:I

.field private msgTimestamp:J

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shareable:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type:I

.field private url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
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
    .param p10    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->msgId:I

    .line 3
    iput-wide p2, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->msgTimestamp:J

    .line 4
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->messageType:Ljava/lang/String;

    .line 5
    iput p5, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->type:I

    .line 6
    iput p6, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->id:I

    .line 7
    iput-object p7, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->text:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->name:Ljava/lang/String;

    .line 9
    iput-object p9, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->image:Ljava/lang/String;

    .line 10
    iput-object p10, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->imageWidth:Ljava/lang/Integer;

    .line 11
    iput-object p11, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->imageHeight:Ljava/lang/Integer;

    .line 12
    iput-object p12, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->url:Ljava/lang/String;

    .line 13
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->shareable:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;IJLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->msgId:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->msgTimestamp:J

    goto :goto_1

    :cond_1
    move-wide v3, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->messageType:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->type:I

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->id:I

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->text:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->name:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->image:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->imageWidth:Ljava/lang/Integer;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->imageHeight:Ljava/lang/Integer;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->url:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p12

    :goto_a
    move p1, v2

    move-wide p2, v3

    move-object/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->copy(IJLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->msgId:I

    return v0
.end method

.method public final component10()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->imageHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->msgTimestamp:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->type:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->id:I

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->image:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->imageWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(IJLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;
    .locals 14
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
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
    .param p10    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v13, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;

    move-object v0, v13

    move v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;-><init>(IJLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v13
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
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->msgId:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->msgId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->msgTimestamp:J

    iget-wide v5, p1, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->msgTimestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->messageType:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->messageType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->type:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->type:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->id:I

    iget v3, p1, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->id:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->image:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->image:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->imageWidth:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->imageWidth:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->imageHeight:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->imageHeight:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->url:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->id:I

    return v0
.end method

.method public final getImage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->image:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageHeight()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->imageHeight:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getImageWidth()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->imageWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMessageType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public final getMsgId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->msgId:I

    return v0
.end method

.method public final getMsgTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->msgTimestamp:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getShareable()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->shareable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->type:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->msgId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->msgTimestamp:J

    invoke-static {v1, v2}, Lb7/b;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->messageType:Ljava/lang/String;

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

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->type:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->id:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->text:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->image:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->imageWidth:Ljava/lang/Integer;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->imageHeight:Ljava/lang/Integer;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->url:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    return v0
.end method

.method public final setId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->id:I

    return-void
.end method

.method public final setImage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->image:Ljava/lang/String;

    return-void
.end method

.method public final setImageHeight(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->imageHeight:Ljava/lang/Integer;

    return-void
.end method

.method public final setImageWidth(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->imageWidth:Ljava/lang/Integer;

    return-void
.end method

.method public final setMessageType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->messageType:Ljava/lang/String;

    return-void
.end method

.method public final setMsgId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->msgId:I

    return-void
.end method

.method public final setMsgTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->msgTimestamp:J

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->name:Ljava/lang/String;

    return-void
.end method

.method public final setShareable(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->shareable:Ljava/lang/Boolean;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->text:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->type:I

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventMessageModel(msgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->msgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msgTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->msgTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", messageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->messageType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->imageWidth:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->imageHeight:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
