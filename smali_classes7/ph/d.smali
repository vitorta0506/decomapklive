.class public final Lph/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Lio/grpc/r$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/r$e<",
            "Lio/opencensus/trace/Span;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "opencensus-trace-span-key"

    invoke-static {v0}, Lio/grpc/r;->q(Ljava/lang/String;)Lio/grpc/r$e;

    move-result-object v0

    sput-object v0, Lph/d;->a:Lio/grpc/r$e;

    return-void
.end method

.method public static a(Lio/grpc/r;)Lio/opencensus/trace/Span;
    .locals 2

    .line 1
    sget-object v0, Lph/d;->a:Lio/grpc/r$e;

    const-string v1, "context"

    invoke-static {p0, v1}, Llh/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/r;

    invoke-virtual {v0, p0}, Lio/grpc/r$e;->a(Lio/grpc/r;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/trace/Span;

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lio/opencensus/trace/d;->e:Lio/opencensus/trace/d;

    :cond_0
    return-object p0
.end method

.method public static b(Lio/grpc/r;Lio/opencensus/trace/Span;)Lio/grpc/r;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Llh/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/r;

    sget-object v0, Lph/d;->a:Lio/grpc/r$e;

    invoke-virtual {p0, v0, p1}, Lio/grpc/r;->v(Lio/grpc/r$e;Ljava/lang/Object;)Lio/grpc/r;

    move-result-object p0

    return-object p0
.end method
