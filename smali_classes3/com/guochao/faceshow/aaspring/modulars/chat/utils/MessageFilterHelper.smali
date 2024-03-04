.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/utils/MessageFilterHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ8\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t2\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002H\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/utils/MessageFilterHelper;",
        "",
        "",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        "list",
        "",
        "chatUserId",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
        "totalList",
        "",
        "filterMessage",
        "<init>",
        "()V",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/MessageFilterHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/MessageFilterHelper;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/MessageFilterHelper;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/MessageFilterHelper;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/MessageFilterHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final filterMessage(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMMessage;

    .line 7
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->k(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isSelf()Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_13

    .line 11
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getStatus()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    goto/16 :goto_5

    .line 12
    :cond_4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isOnlineMessage()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v3

    if-eqz v3, :cond_7

    instance-of v3, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    if-eqz v3, :cond_7

    .line 15
    move-object v3, v2

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->isOneDay()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->isSayHi()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 16
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 17
    :cond_7
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v3

    if-eqz v3, :cond_8

    instance-of v3, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;

    if-eqz v3, :cond_8

    .line 18
    move-object v3, v2

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;->isSayHi()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 20
    :cond_8
    instance-of v3, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;

    if-eqz v3, :cond_a

    move-object v3, v2

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->getType()Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    move-result-object v4

    sget-object v5, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->TYPING:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    if-eq v4, v5, :cond_9

    .line 21
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->getType()Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    move-result-object v3

    sget-object v4, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->INVALID:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    if-ne v3, v4, :cond_a

    .line 22
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 23
    :cond_a
    instance-of v3, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/InputtingMessage;

    if-nez v3, :cond_12

    instance-of v3, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;

    if-eqz v3, :cond_b

    goto :goto_4

    .line 24
    :cond_b
    instance-of v3, v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCSignalMessage;

    if-eqz v3, :cond_c

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 26
    :cond_c
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v3

    iget-object v4, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->x(Lcom/tencent/imsdk/v2/V2TIMMessage;Z)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 28
    :cond_d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_11

    .line 29
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    if-nez v6, :cond_e

    goto :goto_3

    .line 30
    :cond_e
    iget-object v6, v6, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    .line 31
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const/4 v6, 0x1

    goto :goto_2

    :cond_f
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_10

    goto/16 :goto_0

    :cond_10
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 33
    :cond_11
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 34
    :cond_12
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 35
    :cond_13
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 36
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_15

    .line 37
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reverse(Ljava/util/List;)V

    :cond_15
    return-object v0
.end method
