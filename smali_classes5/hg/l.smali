.class final Lhg/l;
.super Lio/grpc/k$a;
.source "SourceFile"


# static fields
.field private static final b:Lio/grpc/k;


# instance fields
.field private final a:Lio/grpc/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhg/l$a;

    invoke-direct {v0}, Lhg/l$a;-><init>()V

    sput-object v0, Lhg/l;->b:Lio/grpc/k;

    return-void
.end method

.method constructor <init>(Lio/grpc/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/k$a;-><init>()V

    .line 2
    iput-object p1, p0, Lhg/l;->a:Lio/grpc/k$a;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/k$b;Lio/grpc/s0;)Lio/grpc/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lhg/l;->a:Lio/grpc/k$a;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lhg/l;->b:Lio/grpc/k;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Lio/grpc/k$a;->a(Lio/grpc/k$b;Lio/grpc/s0;)Lio/grpc/k;

    move-result-object p1

    .line 4
    new-instance p2, Lhg/l$b;

    invoke-direct {p2, p0, p1}, Lhg/l$b;-><init>(Lhg/l;Lio/grpc/k;)V

    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lhg/l;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lhg/l;->a:Lio/grpc/k$a;

    check-cast p1, Lhg/l;

    iget-object p1, p1, Lhg/l;->a:Lio/grpc/k$a;

    invoke-static {v0, p1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lhg/l;->a:Lio/grpc/k$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/l;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
