.class final Lkg/n$e;
.super Lkg/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# static fields
.field private static final t:Lio/grpc/netty/shaded/io/netty/util/internal/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/r<",
            "Lkg/n$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final s:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "Lkg/n$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkg/n$e$a;

    invoke-direct {v0}, Lkg/n$e$a;-><init>()V

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->b(Lio/grpc/netty/shaded/io/netty/util/internal/r$b;)Lio/grpc/netty/shaded/io/netty/util/internal/r;

    move-result-object v0

    sput-object v0, Lkg/n$e;->t:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    return-void
.end method

.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "Lkg/n$e;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lkg/t0;->g:Lkg/t0;

    const/16 v1, 0x100

    const v2, 0x7fffffff

    invoke-direct {p0, v0, v1, v2}, Lkg/u0;-><init>(Lkg/k;II)V

    .line 3
    iput-object p1, p0, Lkg/n$e;->s:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;Lkg/n$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkg/n$e;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)V

    return-void
.end method

.method static N3()Lkg/n$e;
    .locals 1

    .line 1
    sget-object v0, Lkg/n$e;->t:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkg/n$e;

    .line 2
    invoke-virtual {v0}, Lkg/e;->E3()V

    return-object v0
.end method


# virtual methods
.method protected C3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/u0;->F()I

    move-result v0

    invoke-static {}, Lkg/n;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 2
    invoke-super {p0}, Lkg/u0;->C3()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lkg/a;->L()Lkg/j;

    .line 4
    iget-object v0, p0, Lkg/n$e;->s:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/r$a;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
