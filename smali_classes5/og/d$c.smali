.class final Log/d$c;
.super Lmg/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Log/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic h:Log/d;


# direct methods
.method private constructor <init>(Log/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Log/d$c;->h:Log/d;

    invoke-direct {p0, p1}, Lmg/a$b;-><init>(Lmg/a;)V

    return-void
.end method

.method synthetic constructor <init>(Log/d;Log/c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Log/d$c;-><init>(Log/d;)V

    return-void
.end method


# virtual methods
.method protected v()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Log/d$c;->h:Log/d;

    invoke-virtual {v0}, Log/d;->r1()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Log/d$c;->h:Log/d;

    invoke-virtual {v0}, Log/d;->o1()Lng/j;

    move-result-object v0

    invoke-interface {v0}, Lng/j;->h()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Log/d$c;->h:Log/d;

    invoke-static {v0}, Log/d;->l1(Log/d;)V

    .line 3
    sget-object v0, Lug/s;->q:Lug/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
