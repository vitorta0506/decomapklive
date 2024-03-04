.class public abstract Ltf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltf/c$a;
    }
.end annotation


# static fields
.field private static a:I = 0x2

.field private static b:Landroid/content/Context; = null

.field private static c:Z = false

.field private static d:Z = false

.field private static e:Ljava/lang/String;

.field private static f:Ltf/a;

.field private static final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/lang/Integer;

.field private static j:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XMPush-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltf/c;->e:Ljava/lang/String;

    new-instance v0, Ltf/c$a;

    invoke-direct {v0}, Ltf/c$a;-><init>()V

    sput-object v0, Ltf/c;->f:Ltf/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltf/c;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltf/c;->h:Ljava/util/HashMap;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ltf/c;->i:Ljava/lang/Integer;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ltf/c;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Ltf/c;->a:I

    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    sget v0, Ltf/c;->a:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    sget-object v0, Ltf/c;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ltf/c;->g:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ltf/c;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ltf/c;->f:Ltf/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " starts"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ltf/a;->log(Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object p0, Ltf/c;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Ltf/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltf/c;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(I)V
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x5

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set log level as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltf/c;->g(ILjava/lang/String;)V

    :cond_1
    sput p0, Ltf/c;->a:I

    return-void
.end method

.method public static g(ILjava/lang/String;)V
    .locals 1

    sget v0, Ltf/c;->a:I

    if-lt p0, v0, :cond_0

    sget-object p0, Ltf/c;->f:Ltf/a;

    invoke-interface {p0, p1}, Ltf/a;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static h(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget v0, Ltf/c;->a:I

    if-lt p0, v0, :cond_0

    sget-object p0, Ltf/c;->f:Ltf/a;

    invoke-interface {p0, p1, p2}, Ltf/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static i(ILjava/lang/Throwable;)V
    .locals 1

    sget v0, Ltf/c;->a:I

    if-lt p0, v0, :cond_0

    sget-object p0, Ltf/c;->f:Ltf/a;

    const-string v0, ""

    invoke-interface {p0, v0, p1}, Ltf/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .locals 1

    sput-object p0, Ltf/c;->b:Landroid/content/Context;

    invoke-static {p0}, Lsf/e;->i(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    sput-boolean v0, Ltf/c;->c:Z

    :cond_0
    invoke-static {}, Lsf/e;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    sput-boolean v0, Ltf/c;->d:Z

    :cond_1
    return-void
.end method

.method public static k(Ljava/lang/Integer;)V
    .locals 4

    sget v0, Ltf/c;->a:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    sget-object v0, Ltf/c;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Ltf/c;->h:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-object v0, Ltf/c;->f:Ltf/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ends in "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ltf/a;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Ltf/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {v0, p0}, Ltf/c;->g(ILjava/lang/String;)V

    return-void
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ltf/c;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p1, p0}, Ltf/c;->g(ILjava/lang/String;)V

    return-void
.end method

.method public static n(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p0}, Ltf/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Ltf/c;->h(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static o(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0, p0}, Ltf/c;->i(ILjava/lang/Throwable;)V

    return-void
.end method

.method public static p(Ltf/a;)V
    .locals 0

    sput-object p0, Ltf/c;->f:Ltf/a;

    return-void
.end method

.method private static q()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Tid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltf/c;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ltf/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Ltf/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ltf/c;->g(ILjava/lang/String;)V

    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Ltf/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ltf/c;->g(ILjava/lang/String;)V

    return-void
.end method

.method public static u(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Ltf/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {v0, p0}, Ltf/c;->g(ILjava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Ltf/c;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {p0}, Ltf/c;->l(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v0, Ltf/c;->e:Ljava/lang/String;

    invoke-static {p0}, Ltf/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Ltf/c;->d:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
