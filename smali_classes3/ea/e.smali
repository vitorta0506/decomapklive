.class public final Lea/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

.field private final b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;Lcom/google/zxing/ResultPointCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p1, p0, Lea/e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lea/e;->d:Ljava/util/concurrent/CountDownLatch;

    .line 4
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lea/e;->b:Ljava/util/Hashtable;

    .line 5
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 6
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->h:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isDecodeBarCode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    sget-object p1, Lea/b;->d:Ljava/util/Set;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_0
    sget-object p1, Lea/b;->f:Ljava/util/Set;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 9
    sget-object p1, Lea/b;->e:Ljava/util/Set;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 10
    sget-object p1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p1, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    const-string v1, "UTF-8"

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object p1, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()Landroid/os/Handler;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lea/e;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    iget-object v0, p0, Lea/e;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    new-instance v0, Lea/c;

    iget-object v1, p0, Lea/e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    iget-object v2, p0, Lea/e;->b:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Lea/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;Ljava/util/Map;)V

    iput-object v0, p0, Lea/e;->c:Landroid/os/Handler;

    .line 3
    iget-object v0, p0, Lea/e;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
