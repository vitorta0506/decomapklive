.class public final Lcom/guochao/faceshow/aaspring/manager/im/IMPushNotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0008\u0010\u0003\u001a\u00020\u0002H\u0007J\u0018\u0010\u0007\u001a\u00020\u00022\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\u0007J\u0008\u0010\u0008\u001a\u00020\u0002H\u0007R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR&\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/manager/im/IMPushNotificationManager;",
        "",
        "",
        "init",
        "",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
        "messages",
        "push",
        "cancelAll",
        "Landroidx/core/app/NotificationManagerCompat;",
        "manager",
        "Landroidx/core/app/NotificationManagerCompat;",
        "",
        "",
        "",
        "",
        "cachedIds",
        "Ljava/util/Map;",
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/manager/im/IMPushNotificationManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final cachedIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final manager:Landroidx/core/app/NotificationManagerCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/im/IMPushNotificationManager;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/manager/im/IMPushNotificationManager;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/im/IMPushNotificationManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/im/IMPushNotificationManager;

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->getManager$app_GooglePlayRelease()Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/im/IMPushNotificationManager;->manager:Landroidx/core/app/NotificationManagerCompat;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/im/IMPushNotificationManager;->cachedIds:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final cancelAll()V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/im/IMPushNotificationManager;->cachedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_0

    .line 5
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 6
    sget-object v6, Lcom/guochao/faceshow/aaspring/manager/im/IMPushNotificationManager;->manager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v6, v2, v5}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/im/IMPushNotificationManager;->cachedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static final init()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final push(Ljava/util/List;)V
    .locals 25
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "messages"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/Foreground;->get()Lcom/guochao/faceshow/utils/Foreground;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/utils/Foreground;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    .line 3
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_e

    .line 4
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    if-eqz v5, :cond_d

    .line 5
    iget-object v6, v5, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    if-eqz v6, :cond_d

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->showNotification()Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_3

    .line 6
    :cond_1
    iget-object v6, v5, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->x(Lcom/tencent/imsdk/v2/V2TIMMessage;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_3

    .line 8
    :cond_2
    invoke-virtual {v6}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_3

    .line 9
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v7

    invoke-virtual {v6}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/guochao/faceshow/aaspring/manager/im/b;->b(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v7

    if-nez v7, :cond_4

    goto/16 :goto_3

    .line 10
    :cond_4
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getSilent()I

    move-result v9

    if-ne v9, v8, :cond_5

    goto/16 :goto_3

    .line 11
    :cond_5
    instance-of v9, v5, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVoiceCustomMessage;

    const/4 v10, 0x0

    if-eqz v9, :cond_6

    .line 12
    move-object v9, v5

    check-cast v9, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVoiceCustomMessage;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVoiceCustomMessage;->getOfflinePushSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_6
    move-object v9, v10

    .line 13
    :goto_1
    instance-of v11, v5, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVideoCustomMessage;

    if-eqz v11, :cond_7

    .line 14
    move-object v9, v5

    check-cast v9, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVideoCustomMessage;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVideoCustomMessage;->getOfflinePushSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    :cond_7
    new-array v11, v8, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v6}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-static {v11}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v11

    .line 16
    new-instance v12, Landroid/content/Intent;

    const-class v13, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-direct {v12, v1, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v13

    const-string v14, "userId"

    invoke-virtual {v12, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    const-string v13, "Intent(context, ChatActi\u2026\"userId\", message.sender)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 18
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getNickName()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_8
    move-object v13, v10

    :goto_2
    const-string v14, "name"

    .line 19
    invoke-virtual {v12, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    :cond_9
    invoke-virtual {v6}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v15

    const-string v13, "type"

    .line 21
    invoke-virtual {v12, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    const/high16 v13, 0x24000000

    .line 22
    invoke-virtual {v8, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 23
    invoke-static {}, Lcom/guochao/faceshow/utils/DensityUtil;->getNotificationFlag()I

    move-result v8

    .line 24
    invoke-static {v1, v11, v12, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 25
    sget-object v12, Lcom/guochao/faceshow/aaspring/manager/im/IMPushNotificationManager;->cachedIds:Ljava/util/Map;

    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    if-nez v13, :cond_a

    .line 26
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-string v14, "tag"

    .line 27
    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {v6}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getNickName()Ljava/lang/String;

    move-result-object v13

    const-string v6, "message.nickName"

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getSummary()Ljava/lang/String;

    move-result-object v9

    :cond_b
    move-object v14, v9

    .line 31
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getAvatarUrl()Ljava/lang/String;

    move-result-object v10

    :cond_c
    move-object/from16 v19, v10

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x2

    const/16 v23, 0x180

    const/16 v24, 0x0

    const-string v16, "99"

    move-object v5, v15

    move-object v15, v8

    move/from16 v17, v11

    move-object/from16 v18, v5

    .line 32
    invoke-static/range {v13 .. v24}, Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;->showNotification$default(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    :cond_d
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_e
    return-void
.end method
