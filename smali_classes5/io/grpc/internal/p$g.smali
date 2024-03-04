.class Lio/grpc/internal/p$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private final a:J

.field final synthetic b:Lio/grpc/internal/p;


# direct methods
.method constructor <init>(Lio/grpc/internal/p;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/internal/p$g;->b:Lio/grpc/internal/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lio/grpc/internal/p$g;->a:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    new-instance v0, Lio/grpc/internal/x0;

    invoke-direct {v0}, Lio/grpc/internal/x0;-><init>()V

    .line 2
    iget-object v1, p0, Lio/grpc/internal/p$g;->b:Lio/grpc/internal/p;

    invoke-static {v1}, Lio/grpc/internal/p;->f(Lio/grpc/internal/p;)Lio/grpc/internal/q;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/grpc/internal/q;->l(Lio/grpc/internal/x0;)V

    .line 3
    iget-wide v1, p0, Lio/grpc/internal/p$g;->a:J

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    div-long/2addr v1, v6

    .line 4
    iget-wide v6, p0, Lio/grpc/internal/p$g;->a:J

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    rem-long/2addr v6, v3

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deadline exceeded after "

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-wide v4, p0, Lio/grpc/internal/p$g;->a:J

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-gez v10, :cond_0

    const/16 v4, 0x2d

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    :cond_0
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, ".%09d"

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s. "

    .line 11
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v0, p0, Lio/grpc/internal/p$g;->b:Lio/grpc/internal/p;

    invoke-static {v0}, Lio/grpc/internal/p;->f(Lio/grpc/internal/p;)Lio/grpc/internal/q;

    move-result-object v0

    sget-object v1, Lio/grpc/Status;->j:Lio/grpc/Status;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/Status;->f(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/internal/q;->e(Lio/grpc/Status;)V

    return-void
.end method
