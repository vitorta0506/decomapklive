.class public Lph/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmh/h;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static d(Lmh/g;)Lio/grpc/r;
    .locals 0

    check-cast p0, Lph/a;

    invoke-virtual {p0}, Lph/a;->c()Lio/grpc/r;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lio/grpc/r;)Lmh/g;
    .locals 1

    new-instance v0, Lph/a;

    invoke-direct {v0, p0}, Lph/a;-><init>(Lio/grpc/r;)V

    return-object v0
.end method


# virtual methods
.method public a()Lmh/g;
    .locals 1

    invoke-static {}, Lio/grpc/r;->j()Lio/grpc/r;

    move-result-object v0

    invoke-static {v0}, Lph/c;->e(Lio/grpc/r;)Lmh/g;

    move-result-object v0

    return-object v0
.end method

.method public b(Lmh/g;Lio/opencensus/trace/Span;)Lmh/g;
    .locals 0

    invoke-static {p1}, Lph/c;->d(Lmh/g;)Lio/grpc/r;

    move-result-object p1

    invoke-static {p1, p2}, Lph/d;->b(Lio/grpc/r;Lio/opencensus/trace/Span;)Lio/grpc/r;

    move-result-object p1

    invoke-static {p1}, Lph/c;->e(Lio/grpc/r;)Lmh/g;

    move-result-object p1

    return-object p1
.end method

.method public c(Lmh/g;)Lio/opencensus/trace/Span;
    .locals 0

    invoke-static {p1}, Lph/c;->d(Lmh/g;)Lio/grpc/r;

    move-result-object p1

    invoke-static {p1}, Lph/d;->a(Lio/grpc/r;)Lio/opencensus/trace/Span;

    move-result-object p1

    return-object p1
.end method
