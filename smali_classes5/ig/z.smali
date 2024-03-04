.class Lig/z;
.super Lio/grpc/internal/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lig/z$c;,
        Lig/z$b;
    }
.end annotation


# static fields
.field private static final o:Lio/grpc/i0;


# instance fields
.field private final h:Lig/z$b;

.field private final i:Lig/z$c;

.field private final j:Lig/o0;

.field private final k:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "**>;"
        }
    .end annotation
.end field

.field private l:Lio/grpc/netty/shaded/io/netty/util/c;

.field private final m:Lio/grpc/netty/shaded/io/netty/util/c;

.field private final n:Lio/grpc/netty/shaded/io/netty/util/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/i0;

    .line 2
    const-class v1, Lig/a0;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "grpc.netty.shaded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lio/grpc/InternalKnownTransport;->NETTY_SHADED:Lio/grpc/InternalKnownTransport;

    goto :goto_0

    :cond_0
    sget-object v1, Lio/grpc/InternalKnownTransport;->NETTY:Lio/grpc/InternalKnownTransport;

    :goto_0
    invoke-direct {v0, v1}, Lio/grpc/i0;-><init>(Lio/grpc/InternalKnownTransport;)V

    sput-object v0, Lig/z;->o:Lio/grpc/i0;

    return-void
.end method

.method constructor <init>(Lig/z$c;Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/netty/shaded/io/netty/channel/e;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/internal/i2;Lio/grpc/internal/p2;Lio/grpc/c;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lig/z$c;",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/s0;",
            "Lio/grpc/netty/shaded/io/netty/channel/e;",
            "Lio/grpc/netty/shaded/io/netty/util/c;",
            "Lio/grpc/netty/shaded/io/netty/util/c;",
            "Lio/grpc/netty/shaded/io/netty/util/c;",
            "Lio/grpc/internal/i2;",
            "Lio/grpc/internal/p2;",
            "Lio/grpc/c;",
            "Z)V"
        }
    .end annotation

    move-object v7, p0

    .line 1
    new-instance v1, Lig/e0;

    .line 2
    invoke-interface {p4}, Lio/grpc/netty/shaded/io/netty/channel/e;->P()Lkg/k;

    move-result-object v0

    invoke-direct {v1, v0}, Lig/e0;-><init>(Lkg/k;)V

    if-eqz p11, :cond_0

    .line 3
    invoke-virtual {p2}, Lio/grpc/MethodDescriptor;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v0, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v4, p3

    move-object/from16 v5, p10

    .line 4
    invoke-direct/range {v0 .. v6}, Lio/grpc/internal/a;-><init>(Lio/grpc/internal/r2;Lio/grpc/internal/i2;Lio/grpc/internal/p2;Lio/grpc/s0;Lio/grpc/c;Z)V

    .line 5
    new-instance v0, Lig/z$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lig/z$b;-><init>(Lig/z;Lig/z$a;)V

    iput-object v0, v7, Lig/z;->h:Lig/z$b;

    const-string v0, "transportState"

    move-object v1, p1

    .line 6
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lig/z$c;

    iput-object v0, v7, Lig/z;->i:Lig/z$c;

    .line 7
    invoke-static {p1}, Lig/z$c;->Y(Lig/z$c;)Lig/y;

    move-result-object v0

    invoke-virtual {v0}, Lig/y;->c1()Lig/o0;

    move-result-object v0

    iput-object v0, v7, Lig/z;->j:Lig/o0;

    const-string v0, "method"

    move-object v1, p2

    .line 8
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/MethodDescriptor;

    iput-object v0, v7, Lig/z;->k:Lio/grpc/MethodDescriptor;

    const-string v0, "authority"

    move-object v1, p5

    .line 9
    invoke-static {p5, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/util/c;

    iput-object v0, v7, Lig/z;->l:Lio/grpc/netty/shaded/io/netty/util/c;

    const-string v0, "scheme"

    move-object v1, p6

    .line 10
    invoke-static {p6, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/util/c;

    iput-object v0, v7, Lig/z;->m:Lio/grpc/netty/shaded/io/netty/util/c;

    move-object v0, p7

    .line 11
    iput-object v0, v7, Lig/z;->n:Lio/grpc/netty/shaded/io/netty/util/c;

    return-void
.end method

.method static synthetic A(Lig/z;)Lio/grpc/MethodDescriptor;
    .locals 0

    iget-object p0, p0, Lig/z;->k:Lio/grpc/MethodDescriptor;

    return-object p0
.end method

.method static synthetic B()Lio/grpc/i0;
    .locals 1

    sget-object v0, Lig/z;->o:Lio/grpc/i0;

    return-object v0
.end method

.method static synthetic C(Lig/z;)Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 0

    iget-object p0, p0, Lig/z;->m:Lio/grpc/netty/shaded/io/netty/util/c;

    return-object p0
.end method

.method static synthetic D(Lig/z;)Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 0

    iget-object p0, p0, Lig/z;->l:Lio/grpc/netty/shaded/io/netty/util/c;

    return-object p0
.end method

.method static synthetic E(Lig/z;)Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 0

    iget-object p0, p0, Lig/z;->n:Lio/grpc/netty/shaded/io/netty/util/c;

    return-object p0
.end method

.method static synthetic F(Lig/z;)Lig/o0;
    .locals 0

    iget-object p0, p0, Lig/z;->j:Lig/o0;

    return-object p0
.end method

.method static synthetic G(Lig/z;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/d;->s(I)V

    return-void
.end method

.method static synthetic H(Lig/z;)Lio/grpc/internal/p2;
    .locals 0

    invoke-virtual {p0}, Lio/grpc/internal/a;->w()Lio/grpc/internal/p2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected I()Lig/z$c;
    .locals 1

    iget-object v0, p0, Lig/z;->i:Lig/z$c;

    return-object v0
.end method

.method public f()Lio/grpc/a;
    .locals 1

    iget-object v0, p0, Lig/z;->i:Lig/z$c;

    invoke-static {v0}, Lig/z$c;->Y(Lig/z$c;)Lig/y;

    move-result-object v0

    invoke-virtual {v0}, Lig/y;->a1()Lio/grpc/a;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    const-string v0, "authority"

    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->z(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    iput-object p1, p0, Lig/z;->l:Lio/grpc/netty/shaded/io/netty/util/c;

    return-void
.end method

.method protected bridge synthetic t()Lio/grpc/internal/d$a;
    .locals 1

    invoke-virtual {p0}, Lig/z;->I()Lig/z$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic u()Lio/grpc/internal/a$b;
    .locals 1

    invoke-virtual {p0}, Lig/z;->z()Lig/z$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic y()Lio/grpc/internal/a$c;
    .locals 1

    invoke-virtual {p0}, Lig/z;->I()Lig/z$c;

    move-result-object v0

    return-object v0
.end method

.method protected z()Lig/z$b;
    .locals 1

    iget-object v0, p0, Lig/z;->h:Lig/z$b;

    return-object v0
.end method
