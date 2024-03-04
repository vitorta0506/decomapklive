.class public Lp/a;
.super Ljava/util/concurrent/CountDownLatch;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :cond_0
    return-void
.end method
