.class public Lcom/tencent/liteav/base/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/tencent/liteav/base/a/a;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 2
    iput v0, p0, Lcom/tencent/liteav/base/a/a;->b:I

    const/16 v0, 0x46

    .line 3
    iput v0, p0, Lcom/tencent/liteav/base/a/a;->c:I

    const/16 v0, 0x50

    .line 4
    iput v0, p0, Lcom/tencent/liteav/base/a/a;->d:I

    const/16 v0, 0x32

    .line 5
    iput v0, p0, Lcom/tencent/liteav/base/a/a;->e:I

    const/16 v0, 0xa

    .line 6
    iput v0, p0, Lcom/tencent/liteav/base/a/a;->f:I

    return-void
.end method

.method public static a()Lcom/tencent/liteav/base/a/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/liteav/base/a/a;->a:Lcom/tencent/liteav/base/a/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/liteav/base/a/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/base/a/a;->a:Lcom/tencent/liteav/base/a/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/liteav/base/a/a;

    invoke-direct {v1}, Lcom/tencent/liteav/base/a/a;-><init>()V

    sput-object v1, Lcom/tencent/liteav/base/a/a;->a:Lcom/tencent/liteav/base/a/a;

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
    sget-object v0, Lcom/tencent/liteav/base/a/a;->a:Lcom/tencent/liteav/base/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    const-string v0, "Video"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "SWToHWThreshold_CheckCount"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget p1, p0, Lcom/tencent/liteav/base/a/a;->f:I

    :goto_0
    int-to-long p1, p1

    return-wide p1

    :cond_0
    const-string p1, "SWToHWThreshold_CPU"

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    iget p1, p0, Lcom/tencent/liteav/base/a/a;->b:I

    goto :goto_0

    :cond_1
    const-string p1, "SWToHWThreshold_CPU_MAX"

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iget p1, p0, Lcom/tencent/liteav/base/a/a;->d:I

    goto :goto_0

    :cond_2
    const-string p1, "SWToHWThreshold_FPS"

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iget p1, p0, Lcom/tencent/liteav/base/a/a;->c:I

    goto :goto_0

    :cond_3
    const-string p1, "SWToHWThreshold_FPS_MIN"

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    iget p1, p0, Lcom/tencent/liteav/base/a/a;->e:I

    goto :goto_0

    :cond_4
    const-wide/16 p1, 0x0

    return-wide p1
.end method
