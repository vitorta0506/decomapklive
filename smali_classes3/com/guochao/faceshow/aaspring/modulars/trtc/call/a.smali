.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$k;,
        Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$j;
    }
.end annotation


# static fields
.field private static j:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a; = null

.field public static k:Z = false

.field public static final l:[Ljava/lang/String;

.field public static final m:[Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/tencent/trtc/TRTCCloud;

.field d:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/media/MediaPlayer;

.field private h:Landroid/os/Vibrator;

.field private i:Lcom/tencent/trtc/TRTCCloudListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.RECORD_AUDIO"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->l:[Ljava/lang/String;

    .line 2
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->m:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FaceCastCallManager"

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->b:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->getInstance(Landroid/content/Context;)Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->d:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->e:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->f:I

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$i;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->i:Lcom/tencent/trtc/TRTCCloudListener;

    return-void
.end method

.method private G(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 2
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendModel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", otherUserId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zune\uff1a"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-direct {p0, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->I(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-direct {p0, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->I(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-direct {p0, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->I(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    goto :goto_0

    .line 6
    :pswitch_3
    invoke-direct {p0, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->I(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    goto :goto_0

    .line 7
    :pswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->I(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    goto :goto_0

    .line 8
    :pswitch_5
    invoke-direct {p0, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->I(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    goto :goto_0

    .line 9
    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->I(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    goto :goto_0

    .line 10
    :pswitch_7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$f;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->I(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private I(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;",
            "Lcom/tencent/imsdk/v2/V2TIMSendCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCSignalMessage;->buildMessage(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->a:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 4
    iget v2, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 5
    invoke-direct {p0, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->y(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;

    move-result-object v0

    :cond_1
    move-object v6, v0

    .line 6
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget p2, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I

    if-eq p2, v3, :cond_2

    const/4 v2, 0x5

    if-eq p2, v2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    move-object v2, p1

    move-object v3, v4

    move v4, v5

    move v5, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)Ljava/lang/String;

    return-void
.end method

.method public static Q(Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;IZ)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
    .locals 2

    .line 1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->build(Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I

    .line 3
    iput p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    .line 4
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->roomId:I

    .line 5
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->version:I

    .line 6
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    const/16 p0, 0x3c

    .line 7
    iput p0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->timeout:I

    .line 8
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->setFromLiveRoom(Z)V

    return-object v0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Z
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->l()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->f:I

    return p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->f:I

    return p1
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->f:I

    return v0
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->g:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic i(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->g:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private l()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->j:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->j:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->j:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

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
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->j:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    return-object v0
.end method

.method private y(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;
    .locals 6

    .line 1
    new-instance p2, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;

    invoke-direct {p2}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;-><init>()V

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "fromUserId"

    .line 4
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v4

    invoke-interface {v4}, Lb8/d;->c()Lb8/a;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "fromNickName"

    .line 5
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "action"

    .line 6
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->setExt([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    iget p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    if-ne p1, v2, :cond_0

    const p1, 0x7f12092b

    goto :goto_1

    :cond_0
    const p1, 0x7f120927

    :goto_1
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 10
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v5

    invoke-interface {v5}, Lb8/d;->c()Lb8/a;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v5}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 11
    invoke-virtual {v1, p1, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p2, p1}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->setDesc(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2, v0}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->setTitle(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2, v2}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->setIgnoreIOSBadge(Z)V

    return-object p2
.end method


# virtual methods
.method public A(Landroid/content/Context;ZZLcom/guochao/faceshow/aaspring/modulars/trtc/call/a$j;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;Landroid/content/Context;ZZLcom/guochao/faceshow/aaspring/modulars/trtc/call/a$j;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public B(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->o()V

    return-void
.end method

.method public C(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/tencent/trtc/TRTCCloud;->sharedInstance(Landroid/content/Context;)Lcom/tencent/trtc/TRTCCloud;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->c:Lcom/tencent/trtc/TRTCCloud;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->i:Lcom/tencent/trtc/TRTCCloudListener;

    invoke-virtual {p1, v0}, Lcom/tencent/trtc/TRTCCloud;->setListener(Lcom/tencent/trtc/TRTCCloudListener;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->d:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    const/16 v0, 0x3ed

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->setBeauty(ILcom/guochao/pusher/base/ILivePusher$BeautyManager;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->c:Lcom/tencent/trtc/TRTCCloud;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;)V

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/trtc/TRTCCloud;->setLocalVideoProcessListener(IILcom/tencent/trtc/TRTCCloudListener$TRTCVideoFrameListener;)I

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->c:Lcom/tencent/trtc/TRTCCloud;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/tencent/trtc/TRTCCloud;->setDefaultStreamRecvMode(ZZ)V

    return-void
.end method

.method public D(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Z)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->replaceAction(I)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->G(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const p2, 0x7f12090e

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method public E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->c:Lcom/tencent/trtc/TRTCCloud;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/tencent/trtc/TRTCCloud;->setListener(Lcom/tencent/trtc/TRTCCloudListener;)V

    .line 3
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->c:Lcom/tencent/trtc/TRTCCloud;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->d:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    invoke-virtual {v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->destroyOnMainThread()V

    return-void
.end method

.method public F(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 3

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->replaceAction(I)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object p1

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->H(Ljava/lang/String;IILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->G(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 5
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const v0, 0x7f1208f1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void
.end method

.method public H(Ljava/lang/String;IILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$k;

    invoke-direct {v0, v9, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$k;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$k;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 4
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5
    :cond_2
    iget v0, v8, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->f:I

    if-nez v0, :cond_3

    return-void

    .line 6
    :cond_3
    :goto_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;-><init>()V

    .line 7
    invoke-virtual {v0, v7}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->setChat_switch(I)V

    .line 8
    iget v1, v5, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    iget-object v2, v5, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    invoke-static {v3, v4, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->toMessage(IIILjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v7

    if-nez v7, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->Z()V

    .line 10
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->a:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 11
    iput-object v9, v8, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->a:Ljava/lang/String;

    .line 12
    :cond_5
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v10

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 13
    invoke-static {}, Lo9/b;->d()Lo9/a;

    move-result-object v1

    invoke-virtual {v1, v0, v9, v7}, Lo9/a;->a(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;

    move-result-object v15

    new-instance v16, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;Ljava/lang/String;IILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    move-object v0, v10

    move-object v1, v11

    move-object v3, v12

    move v4, v13

    move v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    .line 14
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)Ljava/lang/String;

    return-void
.end method

.method public J(Landroidx/fragment/app/FragmentActivity;IILcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$c;

    invoke-direct {v1, p0, p1, p4}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;)V

    invoke-static {v0, p2, p3, p4, v1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->T1(Landroidx/fragment/app/FragmentManager;IILcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;)V

    return-void
.end method

.method public K(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;)V

    invoke-static {v0, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->U1(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;)V

    return-void
.end method

.method public L(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;)V
    .locals 4
    .param p3    # Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->canMakeAudioCall()Z

    move-result v1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->canMakeVideoCall()Z

    move-result v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$b;

    invoke-direct {v3, p0, p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;)V

    invoke-static {v0, v1, v2, p2, v3}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->T1(Landroidx/fragment/app/FragmentManager;IILcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;)V

    return-void
.end method

.method public M(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 2

    const/16 v0, 0x9

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->replaceAction(I)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->G(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$StartFeeEvent;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$StartFeeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public N(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;I)V
    .locals 8

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Ly7/d;

    invoke-direct {v1}, Ly7/d;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->releaseAll()V

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, p3, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->Q(Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;IZ)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v6

    .line 4
    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 5
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->l:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->m:[Ljava/lang/String;

    .line 6
    :goto_0
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;Landroid/content/Context;ILcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 7
    invoke-virtual {v0, v7}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method public O()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->g:Landroid/media/MediaPlayer;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->h:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_1
    return-void
.end method

.method public P(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->replaceAction(I)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->G(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 3
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->H(Ljava/lang/String;IILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const v0, 0x7f12090c

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void
.end method

.method public R(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->replaceAction(I)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->H(Ljava/lang/String;IILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    return-void
.end method

.method public a(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->replaceAction(I)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->G(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    return-void
.end method

.method public j(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->replaceAction(I)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    iput v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->businessId:I

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->G(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    return-void
.end method

.method public k(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->replaceAction(I)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->G(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 3
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->H(Ljava/lang/String;IILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const v0, 0x7f1208f2

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void
.end method

.method public m(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p3, :cond_1

    const/16 v0, 0xfa9

    .line 1
    iget v1, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->hangupType:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0xfaa

    if-eq v0, v1, :cond_0

    const/16 v0, 0xfa8

    if-eq v0, v1, :cond_0

    const/16 v0, 0xfa5

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    .line 2
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/appoint/hangupAppoint"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    const-string v2, "matchLogId"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget v1, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->roomId:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "streamId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->hangupTime:Ljava/lang/String;

    const-string v2, "hangupTime"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget p2, p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "appointDuration"

    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "appointResult"

    .line 7
    invoke-virtual {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public n(II)V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterTRTCRoom  roomId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zune\uff1a"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 2
    new-instance v2, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoEncParam;

    invoke-direct {v2}, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoEncParam;-><init>()V

    const/16 v3, 0x6e

    .line 3
    iput v3, v2, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoEncParam;->videoResolution:I

    const/16 v3, 0xf

    .line 4
    iput v3, v2, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoEncParam;->videoFps:I

    const/16 v3, 0x3e8

    .line 5
    iput v3, v2, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoEncParam;->videoBitrate:I

    const/4 v3, 0x1

    .line 6
    iput v3, v2, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoEncParam;->videoResolutionMode:I

    .line 7
    iput-boolean v0, v2, Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoEncParam;->enableAdjustRes:Z

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/trtc/TRTCCloud;->setVideoEncoderParam(Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoEncParam;)V

    .line 9
    :cond_0
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->c()Lb8/a;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/UserBean;

    const v3, 0x5373a5c4

    .line 10
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->getDefault()Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->getImAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v3

    goto :goto_0

    :catch_0
    const v5, 0x5373a5c4

    .line 11
    :goto_0
    new-instance v3, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;

    iget-object v6, v2, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    iget-object v7, v2, Lcom/guochao/faceshow/bean/UserBean;->tencentSignature:Ljava/lang/String;

    const-string v9, ""

    const-string v10, ""

    move-object v4, v3

    move v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x14

    .line 12
    iput p1, v3, Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;->role:I

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object p1

    const/16 v2, 0x12c

    invoke-virtual {p1, v2}, Lcom/tencent/trtc/DeprecatedTRTCCloud;->enableAudioVolumeEvaluation(I)V

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/trtc/TRTCCloud;->setGSensorMode(I)V

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/trtc/TRTCCloud;->setAudioRoute(I)V

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tencent/trtc/TRTCCloud;->startLocalAudio(I)V

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object p1

    if-ne p2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p1, v3, v0}, Lcom/tencent/trtc/TRTCCloud;->enterRoom(Lcom/tencent/trtc/TRTCCloudDef$TRTCParams;I)V

    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/trtc/TRTCCloud;->stopLocalPreview()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/trtc/TRTCCloud;->stopLocalAudio()V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/trtc/TRTCCloud;->stopAllRemoteView()V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/trtc/TRTCCloud;->exitRoom()V

    return-void
.end method

.method public p()Lcom/tencent/trtc/TRTCCloud;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->c:Lcom/tencent/trtc/TRTCCloud;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->C(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->c:Lcom/tencent/trtc/TRTCCloud;

    return-object v0
.end method

.method public q()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->g()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->g()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->p0()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public s(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->t(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;ZZ)V

    return-void
.end method

.method public t(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;ZZ)V
    .locals 4

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->replaceAction(I)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object p1

    .line 2
    iget v1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->hangupType:I

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xfa9

    goto :goto_0

    :cond_0
    const/16 v1, 0xfaa

    :goto_0
    iput v1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->hangupType:I

    .line 4
    :cond_1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->G(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 5
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    .line 6
    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget v1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    invoke-virtual {p0, p2, v1, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->H(Ljava/lang/String;IILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const p2, 0x7f1208f3

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    :cond_4
    return-void
.end method

.method public u()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->r0()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->s0()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public w(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->replaceAction(I)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->G(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    return-void
.end method

.method public x(Lcom/tencent/imsdk/v2/V2TIMMessage;Z)Z
    .locals 5

    const-string v0, "trtc_type"

    const-string v1, "call_type"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object v3

    if-nez v3, :cond_1

    return v2

    .line 2
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 3
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 6
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    :cond_4
    if-eqz v0, :cond_6

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 8
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v4

    invoke-interface {v4}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_6

    :cond_5
    if-ne v0, v1, :cond_7

    if-eqz p2, :cond_7

    :cond_6
    return v3

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return v2
.end method

.method public z(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f110005

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->h:Landroid/os/Vibrator;

    if-nez v1, :cond_2

    const-string v1, "vibrator"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->h:Landroid/os/Vibrator;

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->h:Landroid/os/Vibrator;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 7
    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->g:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->g:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->g:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void

    :array_0
    .array-data 8
        0x3e8
        0x3e8
    .end array-data
.end method
