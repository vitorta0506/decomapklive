.class public final Lcom/tencent/liteav/videobase/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/tencent/liteav/base/util/CustomHandler;

.field final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public c:Ljava/lang/Object;

.field d:Lcom/tencent/liteav/videobase/b/e;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/b/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/liteav/videobase/b/c;->c:Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/b/c;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 5
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "// %s-%s E8083882-0D59-47A1-B4B6-25C15A69875A\nvoid main() {gl_FragColor = vec4(0, 0, 0, 0);}"

    .line 7
    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videobase/b/c;->e:Ljava/lang/String;

    return-void
.end method
