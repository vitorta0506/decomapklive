.class final Lbh/a;
.super Lio/grpc/n0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbh/a$a;,
        Lbh/a$b;,
        Lbh/a$d;,
        Lbh/a$c;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/logging/Logger;


# instance fields
.field private final a:Lio/grpc/n0$c;

.field private final b:Lio/grpc/internal/k$a;

.field private final c:Lcom/google/common/base/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/w<",
            "Lcom/google/common/base/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lbh/a;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lbh/a;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lio/grpc/n0$c;Lio/grpc/internal/k$a;Lcom/google/common/base/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/n0$c;",
            "Lio/grpc/internal/k$a;",
            "Lcom/google/common/base/w<",
            "Lcom/google/common/base/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/n0$c;-><init>()V

    const-string v0, "delegateFactory"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/n0$c;

    iput-object p1, p0, Lbh/a;->a:Lio/grpc/n0$c;

    const-string p1, "backoffPolicyProvider"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/k$a;

    iput-object p1, p0, Lbh/a;->b:Lio/grpc/internal/k$a;

    const-string p1, "stopwatchSupplier"

    .line 4
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/w;

    iput-object p1, p0, Lbh/a;->c:Lcom/google/common/base/w;

    return-void
.end method

.method static synthetic b(Lbh/a;)Lcom/google/common/base/w;
    .locals 0

    iget-object p0, p0, Lbh/a;->c:Lcom/google/common/base/w;

    return-object p0
.end method

.method static synthetic c()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lbh/a;->d:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic d(Lbh/a;)Lio/grpc/internal/k$a;
    .locals 0

    iget-object p0, p0, Lbh/a;->b:Lio/grpc/internal/k$a;

    return-object p0
.end method


# virtual methods
.method public a(Lio/grpc/n0$d;)Lio/grpc/n0;
    .locals 2

    .line 1
    new-instance v0, Lbh/a$c;

    invoke-direct {v0, p0, p1}, Lbh/a$c;-><init>(Lbh/a;Lio/grpc/n0$d;)V

    .line 2
    iget-object p1, p0, Lbh/a;->a:Lio/grpc/n0$c;

    invoke-virtual {p1, v0}, Lio/grpc/n0$c;->a(Lio/grpc/n0$d;)Lio/grpc/n0;

    move-result-object p1

    .line 3
    new-instance v1, Lbh/a$b;

    invoke-direct {v1, v0, p1}, Lbh/a$b;-><init>(Lbh/a$c;Lio/grpc/n0;)V

    return-object v1
.end method
