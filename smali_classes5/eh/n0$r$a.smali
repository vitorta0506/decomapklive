.class Leh/n0$r$a;
.super Leh/n0$r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/n0$r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leh/n0$r;-><init>()V

    return-void
.end method


# virtual methods
.method a(Leh/j0$d;)Lio/grpc/q0;
    .locals 3

    .line 1
    invoke-virtual {p1}, Leh/j0$d;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Leh/j0$d;->a()Lio/grpc/e;

    move-result-object p1

    .line 3
    invoke-static {v0, p1}, Lio/grpc/a0;->b(Ljava/lang/String;Lio/grpc/e;)Lio/grpc/r0;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    .line 4
    invoke-virtual {p1, v1, v2, v0}, Lio/grpc/r0;->i(JLjava/util/concurrent/TimeUnit;)Lio/grpc/r0;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lio/grpc/r0;->a()Lio/grpc/q0;

    move-result-object p1

    return-object p1
.end method
