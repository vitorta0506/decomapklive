.class final Lio/grpc/internal/p$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/p;


# direct methods
.method private constructor <init>(Lio/grpc/internal/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/internal/p$f;->a:Lio/grpc/internal/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/p;Lio/grpc/internal/p$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/internal/p$f;-><init>(Lio/grpc/internal/p;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/r;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/p$f;->a:Lio/grpc/internal/p;

    invoke-static {v0}, Lio/grpc/internal/p;->f(Lio/grpc/internal/p;)Lio/grpc/internal/q;

    move-result-object v0

    invoke-static {p1}, Lio/grpc/s;->a(Lio/grpc/r;)Lio/grpc/Status;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/grpc/internal/q;->e(Lio/grpc/Status;)V

    return-void
.end method
