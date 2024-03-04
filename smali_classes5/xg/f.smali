.class Lxg/f;
.super Lio/grpc/internal/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxg/f$b;,
        Lxg/f$a;
    }
.end annotation


# static fields
.field private static final r:Lokio/Buffer;


# instance fields
.field private final h:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "**>;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;

.field private final j:Lio/grpc/internal/i2;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/Object;

.field private volatile m:I

.field private final n:Lxg/f$b;

.field private final o:Lxg/f$a;

.field private final p:Lio/grpc/a;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    sput-object v0, Lxg/f;->r:Lokio/Buffer;

    return-void
.end method

.method constructor <init>(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lxg/b;Lxg/g;Lxg/o;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Lio/grpc/internal/i2;Lio/grpc/internal/p2;Lio/grpc/c;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/s0;",
            "Lxg/b;",
            "Lxg/g;",
            "Lxg/o;",
            "Ljava/lang/Object;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/grpc/internal/i2;",
            "Lio/grpc/internal/p2;",
            "Lio/grpc/c;",
            "Z)V"
        }
    .end annotation

    move-object v10, p0

    .line 1
    new-instance v1, Lxg/n;

    invoke-direct {v1}, Lxg/n;-><init>()V

    const/4 v7, 0x0

    if-eqz p14, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move-object v0, p0

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object v4, p2

    move-object/from16 v5, p13

    .line 3
    invoke-direct/range {v0 .. v6}, Lio/grpc/internal/a;-><init>(Lio/grpc/internal/r2;Lio/grpc/internal/i2;Lio/grpc/internal/p2;Lio/grpc/s0;Lio/grpc/c;Z)V

    const/4 v0, -0x1

    .line 4
    iput v0, v10, Lxg/f;->m:I

    .line 5
    new-instance v0, Lxg/f$a;

    invoke-direct {v0, p0}, Lxg/f$a;-><init>(Lxg/f;)V

    iput-object v0, v10, Lxg/f;->o:Lxg/f$a;

    .line 6
    iput-boolean v7, v10, Lxg/f;->q:Z

    const-string v0, "statsTraceCtx"

    move-object/from16 v3, p11

    .line 7
    invoke-static {v3, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/i2;

    iput-object v0, v10, Lxg/f;->j:Lio/grpc/internal/i2;

    move-object v0, p1

    .line 8
    iput-object v0, v10, Lxg/f;->h:Lio/grpc/MethodDescriptor;

    move-object/from16 v1, p9

    .line 9
    iput-object v1, v10, Lxg/f;->k:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 10
    iput-object v1, v10, Lxg/f;->i:Ljava/lang/String;

    .line 11
    invoke-virtual/range {p4 .. p4}, Lxg/g;->f()Lio/grpc/a;

    move-result-object v1

    iput-object v1, v10, Lxg/f;->p:Lio/grpc/a;

    .line 12
    new-instance v11, Lxg/f$b;

    .line 13
    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->c()Ljava/lang/String;

    move-result-object v9

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p7

    move-object/from16 v4, p6

    move-object v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lxg/f$b;-><init>(Lxg/f;ILio/grpc/internal/i2;Ljava/lang/Object;Lxg/b;Lxg/o;Lxg/g;ILjava/lang/String;)V

    iput-object v11, v10, Lxg/f;->n:Lxg/f$b;

    return-void
.end method

.method static synthetic A(Lxg/f;)Lio/grpc/MethodDescriptor;
    .locals 0

    iget-object p0, p0, Lxg/f;->h:Lio/grpc/MethodDescriptor;

    return-object p0
.end method

.method static synthetic B(Lxg/f;)Z
    .locals 0

    iget-boolean p0, p0, Lxg/f;->q:Z

    return p0
.end method

.method static synthetic C(Lxg/f;)Lio/grpc/internal/p2;
    .locals 0

    invoke-virtual {p0}, Lio/grpc/internal/a;->w()Lio/grpc/internal/p2;

    move-result-object p0

    return-object p0
.end method

.method static synthetic D(Lxg/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lxg/f;->q:Z

    return p1
.end method

.method static synthetic E(Lxg/f;)I
    .locals 0

    iget p0, p0, Lxg/f;->m:I

    return p0
.end method

.method static synthetic F(Lxg/f;I)I
    .locals 0

    iput p1, p0, Lxg/f;->m:I

    return p1
.end method

.method static synthetic G(Lxg/f;)Lio/grpc/internal/i2;
    .locals 0

    iget-object p0, p0, Lxg/f;->j:Lio/grpc/internal/i2;

    return-object p0
.end method

.method static synthetic H(Lxg/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lxg/f;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic I(Lxg/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lxg/f;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic J(Lxg/f;)Lxg/f$b;
    .locals 0

    iget-object p0, p0, Lxg/f;->n:Lxg/f$b;

    return-object p0
.end method

.method static synthetic K()Lokio/Buffer;
    .locals 1

    sget-object v0, Lxg/f;->r:Lokio/Buffer;

    return-object v0
.end method

.method static synthetic L(Lxg/f;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/d;->s(I)V

    return-void
.end method

.method static synthetic M(Lxg/f;)Lio/grpc/internal/p2;
    .locals 0

    invoke-virtual {p0}, Lio/grpc/internal/a;->w()Lio/grpc/internal/p2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method N()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lxg/f;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public O()Lio/grpc/MethodDescriptor$MethodType;
    .locals 1

    iget-object v0, p0, Lxg/f;->h:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->f()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    return-object v0
.end method

.method public P()I
    .locals 1

    iget v0, p0, Lxg/f;->m:I

    return v0
.end method

.method Q(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lxg/f;->l:Ljava/lang/Object;

    return-void
.end method

.method protected R()Lxg/f$b;
    .locals 1

    iget-object v0, p0, Lxg/f;->n:Lxg/f$b;

    return-object v0
.end method

.method S()Z
    .locals 1

    iget-boolean v0, p0, Lxg/f;->q:Z

    return v0
.end method

.method public f()Lio/grpc/a;
    .locals 1

    iget-object v0, p0, Lxg/f;->p:Lio/grpc/a;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    const-string v0, "authority"

    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lxg/f;->k:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic t()Lio/grpc/internal/d$a;
    .locals 1

    invoke-virtual {p0}, Lxg/f;->R()Lxg/f$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic u()Lio/grpc/internal/a$b;
    .locals 1

    invoke-virtual {p0}, Lxg/f;->z()Lxg/f$a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic y()Lio/grpc/internal/a$c;
    .locals 1

    invoke-virtual {p0}, Lxg/f;->R()Lxg/f$b;

    move-result-object v0

    return-object v0
.end method

.method protected z()Lxg/f$a;
    .locals 1

    iget-object v0, p0, Lxg/f;->o:Lxg/f$a;

    return-object v0
.end method
