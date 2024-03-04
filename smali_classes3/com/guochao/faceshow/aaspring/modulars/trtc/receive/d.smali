.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;
    }
.end annotation


# static fields
.field private static b:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;",
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
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

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
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a:Ljava/util/List;

    return-object v0
.end method

.method public c(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
