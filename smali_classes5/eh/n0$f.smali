.class Leh/n0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leh/n0;


# direct methods
.method constructor <init>(Leh/n0;)V
    .locals 0

    iput-object p1, p0, Leh/n0$f;->a:Leh/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Leh/n0$f;->a:Leh/n0;

    invoke-static {p1}, Leh/n0;->x(Leh/n0;)Leh/q2;

    move-result-object p1

    sget-object v0, Leh/q2$b;->d:Leh/q2$b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "Uncaught exception in XdsClient SynchronizationContext. Panic!"

    invoke-virtual {p1, v0, v2, v1}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
