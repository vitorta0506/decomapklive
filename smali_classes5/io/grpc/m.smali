.class public final Lio/grpc/m;
.super Lio/grpc/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/m$a;,
        Lio/grpc/m$b;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/b;

.field private final b:Lio/grpc/b;


# direct methods
.method public constructor <init>(Lio/grpc/b;Lio/grpc/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/b;-><init>()V

    const-string v0, "creds1"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/b;

    iput-object p1, p0, Lio/grpc/m;->a:Lio/grpc/b;

    const-string p1, "creds2"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/b;

    iput-object p1, p0, Lio/grpc/m;->b:Lio/grpc/b;

    return-void
.end method

.method static synthetic b(Lio/grpc/m;)Lio/grpc/b;
    .locals 0

    iget-object p0, p0, Lio/grpc/m;->b:Lio/grpc/b;

    return-object p0
.end method


# virtual methods
.method public a(Lio/grpc/b$b;Ljava/util/concurrent/Executor;Lio/grpc/b$a;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/grpc/m;->a:Lio/grpc/b;

    new-instance v7, Lio/grpc/m$b;

    .line 2
    invoke-static {}, Lio/grpc/r;->j()Lio/grpc/r;

    move-result-object v6

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lio/grpc/m$b;-><init>(Lio/grpc/m;Lio/grpc/b$b;Ljava/util/concurrent/Executor;Lio/grpc/b$a;Lio/grpc/r;)V

    .line 3
    invoke-virtual {v0, p1, p2, v7}, Lio/grpc/b;->a(Lio/grpc/b$b;Ljava/util/concurrent/Executor;Lio/grpc/b$a;)V

    return-void
.end method
