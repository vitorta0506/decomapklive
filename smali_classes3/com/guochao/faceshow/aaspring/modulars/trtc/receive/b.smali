.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx9/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->a:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zune\uff1a"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lx9/b;

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    .line 3
    iget v3, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 4
    invoke-virtual {v2, v1, v1, p1}, Lx9/b;->c(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    .line 5
    iget v3, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    .line 6
    :cond_2
    invoke-virtual {v2, v1, v1, p1}, Lx9/b;->d(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 7
    iget v3, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 8
    invoke-virtual {v2, v1, v1, p1}, Lx9/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    if-eqz v2, :cond_5

    .line 9
    iget v4, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I

    if-ne v4, v3, :cond_5

    .line 10
    invoke-virtual {v2, v1, v1, p1}, Lx9/b;->b(Ljava/lang/String;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 11
    iget v4, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    .line 12
    invoke-virtual/range {v2 .. v7}, Lx9/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_8

    .line 13
    iget v4, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_8

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->b()Ljava/util/List;

    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;

    .line 17
    invoke-interface {v3, v1, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;->I(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto :goto_1

    .line 18
    :cond_7
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v1

    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget v4, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    invoke-virtual {v1, v2, v4, v3, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->H(Ljava/lang/String;IILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto/16 :goto_0

    :cond_8
    if-eqz v2, :cond_9

    .line 20
    iget v1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_9

    .line 21
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 22
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;

    .line 24
    invoke-interface {v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;->s1(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto :goto_2

    :cond_9
    if-eqz v2, :cond_a

    .line 25
    iget v1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_a

    .line 26
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 27
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;

    .line 29
    invoke-interface {v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;->o(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto :goto_3

    :cond_a
    if-eqz v2, :cond_0

    .line 30
    iget v1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 31
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 32
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;

    .line 34
    invoke-interface {v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;->j1(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto :goto_4

    :cond_b
    return-void
.end method

.method public static b()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;

    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized d(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCSignalMessage;

    if-eqz v0, :cond_3

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCSignalMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCSignalMessage;->getMessageModel()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    .line 4
    :try_start_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getThisDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v5, 0x3e8

    mul-long v1, v1, v5

    sub-long v1, v3, v1

    .line 5
    :catch_0
    :try_start_2
    iget v3, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-wide/32 v5, 0xea60

    cmp-long v7, v1, v5

    if-lez v7, :cond_1

    .line 6
    monitor-exit p0

    return-void

    :cond_1
    if-ne v3, v4, :cond_2

    .line 7
    :try_start_3
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->markC2CMessageAsRead(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    .line 8
    :cond_2
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->a(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e(Lx9/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f(Lx9/b;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
