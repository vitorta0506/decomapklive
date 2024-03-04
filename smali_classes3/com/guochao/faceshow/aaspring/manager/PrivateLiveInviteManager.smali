.class public Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;,
        Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$a;
    }
.end annotation


# static fields
.field private static c:Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->a:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$a;

    .line 2
    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->b:Z

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$a;->q1()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$a;->d0()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static c()Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->c:Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->c:Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->c:Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;

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
    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->c:Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;

    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public b(Lorg/json/JSONObject;)Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;-><init>()V

    const-string v1, "liveId"

    const-string v2, "live_id"

    .line 2
    invoke-direct {p0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->liveId:Ljava/lang/String;

    const-string v1, "userId"

    const-string v2, "user_id"

    .line 3
    invoke-direct {p0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->userId:Ljava/lang/String;

    const-string v1, "nickName"

    const-string v2, "nick_name"

    .line 4
    invoke-direct {p0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->nickName:Ljava/lang/String;

    const-string v1, "type"

    const-string v2, "type_id"

    .line 5
    invoke-direct {p0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->typeId:Ljava/lang/String;

    const-string v1, "liveImg"

    const-string v2, "live_img"

    .line 6
    invoke-direct {p0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->liveImg:Ljava/lang/String;

    const-string v1, "userImg"

    const-string v2, "user_img"

    .line 7
    invoke-direct {p0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->userImg:Ljava/lang/String;

    const-string v1, "liveStartTime"

    const-string v2, "start_time"

    .line 8
    invoke-direct {p0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->startTime:Ljava/lang/String;

    const-string v1, "liveType"

    const-string v2, "live_type"

    .line 9
    invoke-direct {p0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->liveType:Ljava/lang/String;

    const-string v1, "groupId"

    const-string v2, "group_id"

    .line 10
    invoke-direct {p0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->d(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->b:Z

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->a()V

    return-void
.end method

.method public registerOnInviteStatusListener(Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$a;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterOnInviteStatusListener(Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$a;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
