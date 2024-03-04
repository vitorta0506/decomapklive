.class final Lug/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "runnable"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lug/o;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static b(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    instance-of v0, p0, Lug/o;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lug/o;

    invoke-direct {v0, p0}, Lug/o;-><init>(Ljava/lang/Runnable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lug/o;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-static {}, Lug/n;->j()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lug/n;->j()V

    .line 3
    throw v0
.end method
