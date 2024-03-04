.class public final Lio/grpc/n;
.super Lio/grpc/e;
.source "SourceFile"


# instance fields
.field private final a:Lio/grpc/e;

.field private final b:Lio/grpc/b;


# direct methods
.method private constructor <init>(Lio/grpc/e;Lio/grpc/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/e;-><init>()V

    const-string v0, "channelCreds"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/e;

    iput-object p1, p0, Lio/grpc/n;->a:Lio/grpc/e;

    const-string p1, "callCreds"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/b;

    iput-object p1, p0, Lio/grpc/n;->b:Lio/grpc/b;

    return-void
.end method

.method public static a(Lio/grpc/e;Lio/grpc/b;)Lio/grpc/e;
    .locals 1

    new-instance v0, Lio/grpc/n;

    invoke-direct {v0, p0, p1}, Lio/grpc/n;-><init>(Lio/grpc/e;Lio/grpc/b;)V

    return-object v0
.end method


# virtual methods
.method public b()Lio/grpc/b;
    .locals 1

    iget-object v0, p0, Lio/grpc/n;->b:Lio/grpc/b;

    return-object v0
.end method

.method public c()Lio/grpc/e;
    .locals 1

    iget-object v0, p0, Lio/grpc/n;->a:Lio/grpc/e;

    return-object v0
.end method
