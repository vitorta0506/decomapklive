.class public Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr$b;,
        Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr$PushManager;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->b:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->c:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->d:I

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->d:I

    return p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->b:Z

    return p1
.end method

.method public static c()Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr$b;->a()Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->d:I

    return v0
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->c:Z

    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->d()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "TAG_KEY_FORM_PUSH"

    if-eqz v1, :cond_0

    const-string v0, "setPushTokenToTIM third token is empty"

    .line 3
    invoke-static {v2, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->b:Z

    return-void

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->b:Z

    if-eqz v1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->c:Z

    if-nez v1, :cond_2

    const-string v0, "setPushTokenToTIM not login, ignore"

    .line 7
    invoke-static {v2, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMOfflinePushConfig;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->d:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3, v0}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushConfig;-><init>(JLjava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getOfflinePushManager()Lcom/tencent/imsdk/v2/V2TIMOfflinePushManager;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr$a;

    invoke-direct {v3, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushManager;->setOfflinePushConfig(Lcom/tencent/imsdk/v2/V2TIMOfflinePushConfig;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public h(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->d:I

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->a:Ljava/lang/String;

    return-void
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->b:Z

    return-void
.end method
