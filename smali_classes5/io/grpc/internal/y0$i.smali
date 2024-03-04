.class final Lio/grpc/internal/y0$i;
.super Lio/grpc/internal/l0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation


# instance fields
.field private final a:Lio/grpc/internal/u;

.field private final b:Lio/grpc/internal/m;


# direct methods
.method private constructor <init>(Lio/grpc/internal/u;Lio/grpc/internal/m;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/internal/l0;-><init>()V

    .line 3
    iput-object p1, p0, Lio/grpc/internal/y0$i;->a:Lio/grpc/internal/u;

    .line 4
    iput-object p2, p0, Lio/grpc/internal/y0$i;->b:Lio/grpc/internal/m;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/u;Lio/grpc/internal/m;Lio/grpc/internal/y0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/y0$i;-><init>(Lio/grpc/internal/u;Lio/grpc/internal/m;)V

    return-void
.end method

.method static synthetic i(Lio/grpc/internal/y0$i;)Lio/grpc/internal/m;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/y0$i;->b:Lio/grpc/internal/m;

    return-object p0
.end method


# virtual methods
.method protected a()Lio/grpc/internal/u;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/y0$i;->a:Lio/grpc/internal/u;

    return-object v0
.end method

.method public e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/s0;",
            "Lio/grpc/c;",
            "[",
            "Lio/grpc/k;",
            ")",
            "Lio/grpc/internal/q;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lio/grpc/internal/l0;->e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;

    move-result-object p1

    .line 2
    new-instance p2, Lio/grpc/internal/y0$i$a;

    invoke-direct {p2, p0, p1}, Lio/grpc/internal/y0$i$a;-><init>(Lio/grpc/internal/y0$i;Lio/grpc/internal/q;)V

    return-object p2
.end method
