.class public final Lcom/google/api/gax/rpc/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/m0;


# instance fields
.field private final a:Lcom/google/api/gax/rpc/l0;


# direct methods
.method private constructor <init>(Lcom/google/api/gax/rpc/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/rpc/o;->a:Lcom/google/api/gax/rpc/l0;

    return-void
.end method

.method public static i(Lcom/google/api/gax/rpc/l0;)Lcom/google/api/gax/rpc/m0;
    .locals 1

    new-instance v0, Lcom/google/api/gax/rpc/o;

    invoke-direct {v0, p0}, Lcom/google/api/gax/rpc/o;-><init>(Lcom/google/api/gax/rpc/l0;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lk5/a;)Lcom/google/api/gax/rpc/m0;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FixedWatchdogProvider doesn\'t need a clock"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/api/gax/rpc/m0;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FixedWatchdogProvider doesn\'t need an executor"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/rpc/m0;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FixedWatchdogProvider doesn\'t need a checkInterval"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()Lcom/google/api/gax/rpc/l0;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/o;->a:Lcom/google/api/gax/rpc/l0;

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
