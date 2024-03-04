.class public Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;,
        Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeBroadCasterReceiver;
    }
.end annotation


# static fields
.field private static c:Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;


# instance fields
.field private a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->a:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->b:Ljava/util/List;

    return-void
.end method

.method public static b()Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;
    .locals 2

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->c:Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->c:Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;

    .line 4
    :cond_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->c:Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;-><init>()V

    const-string v1, "account"

    .line 2
    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;->account:Ljava/lang/String;

    const-string v1, "userId"

    .line 3
    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;->userId:Ljava/lang/String;

    const-string v1, "img"

    .line 4
    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;->img:Ljava/lang/String;

    const-string v1, "type_id"

    .line 5
    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;->type_id:Ljava/lang/String;

    const-string v1, "svip"

    .line 6
    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;->svip:Ljava/lang/String;

    const-string v1, "superLike"

    .line 7
    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;->superLike:Ljava/lang/String;

    const-string v1, "likeWord"

    .line 8
    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;->likeWord:Ljava/lang/String;

    const-string v1, "userNick"

    .line 9
    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/cardvideo/SuperLikeNotificationManager$SuperLikeInfo;->userNick:Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onEnterBackground()V
    .locals 0

    return-void
.end method

.method public onEnterForeground()V
    .locals 0

    return-void
.end method
