.class final Lio/grpc/internal/g1$p;
.super Lio/grpc/internal/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/w0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lio/grpc/internal/g1;


# direct methods
.method private constructor <init>(Lio/grpc/internal/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/internal/g1$p;->b:Lio/grpc/internal/g1;

    invoke-direct {p0}, Lio/grpc/internal/w0;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/g1;Lio/grpc/internal/g1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/internal/g1$p;-><init>(Lio/grpc/internal/g1;)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/g1$p;->b:Lio/grpc/internal/g1;

    invoke-virtual {v0}, Lio/grpc/internal/g1;->K0()V

    return-void
.end method

.method protected c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$p;->b:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->t(Lio/grpc/internal/g1;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/g1$p;->b:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->F0(Lio/grpc/internal/g1;)V

    return-void
.end method
