.class public abstract Ll5/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll5/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/m$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll5/m$a;

    invoke-direct {v0}, Ll5/m$a;-><init>()V

    sput-object v0, Ll5/m;->a:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Ll5/m$b;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x4

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    new-instance v1, Ll5/c$b;

    invoke-direct {v1}, Ll5/c$b;-><init>()V

    .line 4
    invoke-virtual {v1, v0}, Ll5/c$b;->c(I)Ll5/m$b;

    move-result-object v0

    sget-object v1, Ll5/m;->a:Ljava/util/concurrent/ThreadFactory;

    .line 5
    invoke-virtual {v0, v1}, Ll5/m$b;->b(Ljava/util/concurrent/ThreadFactory;)Ll5/m$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p0}, Ll5/m;->c()I

    move-result v1

    invoke-virtual {p0}, Ll5/m;->d()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public abstract c()I
.end method

.method public abstract d()Ljava/util/concurrent/ThreadFactory;
.end method
