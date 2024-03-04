.class public final Lio/grpc/netty/shaded/io/netty/util/internal/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/util/internal/t$g;,
        Lio/grpc/netty/shaded/io/netty/util/internal/t$e;,
        Lio/grpc/netty/shaded/io/netty/util/internal/t$f;
    }
.end annotation


# static fields
.field public static final A:Z

.field private static final B:Lio/grpc/netty/shaded/io/netty/util/internal/c;

.field private static final a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Z

.field private static final d:Z

.field private static final e:Ljava/lang/Throwable;

.field private static final f:Z

.field private static final g:J

.field private static final h:J

.field private static final i:Ljava/io/File;

.field private static final j:I

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field private static final m:[Ljava/lang/String;

.field private static final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Z

.field private static final p:Z

.field private static final q:Z

.field private static final r:Z

.field private static final s:I

.field private static final t:Z

.field private static final u:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final v:J

.field private static final w:Lio/grpc/netty/shaded/io/netty/util/internal/t$g;

.field private static final x:Lio/grpc/netty/shaded/io/netty/util/internal/c;

.field private static final y:I

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "\\s*-XX:MaxDirectMemorySize\\s*=\\s*([0-9]+)\\s*([kKmMgG]?)\\s*$"

    .line 2
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->b:Ljava/util/regex/Pattern;

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->c0()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    sput-boolean v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->d:Z

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->W0()Ljava/lang/Throwable;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->e:Ljava/lang/Throwable;

    .line 5
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->n0()J

    move-result-wide v3

    sput-wide v3, Lio/grpc/netty/shaded/io/netty/util/internal/t;->g:J

    .line 6
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->m()J

    move-result-wide v5

    sput-wide v5, Lio/grpc/netty/shaded/io/netty/util/internal/t;->h:J

    .line 7
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->U0()Ljava/io/File;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->i:Ljava/io/File;

    .line 8
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->k()I

    move-result v1

    sput v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->j:I

    const-string v1, "os.arch"

    const-string v5, ""

    .line 9
    invoke-static {v1, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->w0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->k:Ljava/lang/String;

    const-string v1, "os.name"

    .line 10
    invoke-static {v1, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->x0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l:Ljava/lang/String;

    const-string v1, "fedora"

    const-string v5, "suse"

    const-string v6, "arch"

    .line 11
    filled-new-array {v1, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->m:[Ljava/lang/String;

    .line 12
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->k0()Z

    move-result v5

    sput-boolean v5, Lio/grpc/netty/shaded/io/netty/util/internal/t;->o:Z

    .line 13
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->h0()Z

    move-result v5

    sput-boolean v5, Lio/grpc/netty/shaded/io/netty/util/internal/t;->p:Z

    .line 14
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->f0()Z

    move-result v5

    sput-boolean v5, Lio/grpc/netty/shaded/io/netty/util/internal/t;->q:Z

    .line 15
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->e0()Z

    move-result v5

    sput-boolean v5, Lio/grpc/netty/shaded/io/netty/util/internal/t;->r:Z

    .line 16
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->f()I

    move-result v5

    sput v5, Lio/grpc/netty/shaded/io/netty/util/internal/t;->s:I

    const-string v5, "/etc/os-release"

    const-string v6, "/usr/lib/os-release"

    .line 17
    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lio/grpc/netty/shaded/io/netty/util/internal/t;->z:[Ljava/lang/String;

    .line 18
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v8, 0x0

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    sput-boolean v6, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    .line 19
    new-instance v6, Lio/grpc/netty/shaded/io/netty/util/internal/t$a;

    invoke-direct {v6}, Lio/grpc/netty/shaded/io/netty/util/internal/t$a;-><init>()V

    sput-object v6, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B:Lio/grpc/netty/shaded/io/netty/util/internal/c;

    .line 20
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v7

    const/4 v9, 0x7

    if-lt v7, v9, :cond_1

    .line 21
    new-instance v7, Lio/grpc/netty/shaded/io/netty/util/internal/t$b;

    invoke-direct {v7}, Lio/grpc/netty/shaded/io/netty/util/internal/t$b;-><init>()V

    sput-object v7, Lio/grpc/netty/shaded/io/netty/util/internal/t;->w:Lio/grpc/netty/shaded/io/netty/util/internal/t$g;

    goto :goto_1

    .line 22
    :cond_1
    new-instance v7, Lio/grpc/netty/shaded/io/netty/util/internal/t$c;

    invoke-direct {v7}, Lio/grpc/netty/shaded/io/netty/util/internal/t$c;-><init>()V

    sput-object v7, Lio/grpc/netty/shaded/io/netty/util/internal/t;->w:Lio/grpc/netty/shaded/io/netty/util/internal/t$g;

    :goto_1
    const-wide/16 v9, -0x1

    const-string v7, "io.grpc.netty.shaded.io.netty.maxDirectMemory"

    .line 23
    invoke-static {v7, v9, v10}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->f(Ljava/lang/String;J)J

    move-result-wide v9

    const/4 v7, 0x0

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-eqz v13, :cond_5

    .line 24
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->G()Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_3

    .line 25
    :cond_2
    sput-boolean v2, Lio/grpc/netty/shaded/io/netty/util/internal/t;->t:Z

    if-gez v13, :cond_4

    cmp-long v9, v3, v11

    if-gtz v9, :cond_3

    .line 26
    sput-object v7, Lio/grpc/netty/shaded/io/netty/util/internal/t;->u:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_2

    .line 27
    :cond_3
    new-instance v7, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v7, Lio/grpc/netty/shaded/io/netty/util/internal/t;->u:Ljava/util/concurrent/atomic/AtomicLong;

    :goto_2
    move-wide v9, v3

    goto :goto_4

    .line 28
    :cond_4
    new-instance v7, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v7, Lio/grpc/netty/shaded/io/netty/util/internal/t;->u:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_4

    .line 29
    :cond_5
    :goto_3
    sput-boolean v8, Lio/grpc/netty/shaded/io/netty/util/internal/t;->t:Z

    .line 30
    sput-object v7, Lio/grpc/netty/shaded/io/netty/util/internal/t;->u:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    :goto_4
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v11, "-Dio.netty.maxDirectMemory: {} bytes"

    invoke-interface {v0, v11, v7}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v11, 0x1

    cmp-long v7, v9, v11

    if-ltz v7, :cond_6

    move-wide v3, v9

    .line 32
    :cond_6
    sput-wide v3, Lio/grpc/netty/shaded/io/netty/util/internal/t;->v:J

    const/16 v3, 0x400

    const-string v4, "io.grpc.netty.shaded.io.netty.uninitializedArrayAllocationThreshold"

    .line 33
    invoke-static {v4, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v3

    .line 34
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v4

    const/16 v7, 0x9

    if-lt v4, v7, :cond_7

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->F()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    const/4 v3, -0x1

    :goto_5
    sput v3, Lio/grpc/netty/shaded/io/netty/util/internal/t;->y:I

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "-Dio.netty.uninitializedArrayAllocationThreshold: {}"

    invoke-interface {v0, v4, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->o0()Z

    move-result v3

    sput-boolean v3, Lio/grpc/netty/shaded/io/netty/util/internal/t;->c:Z

    .line 37
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->c0()Z

    move-result v3

    if-nez v3, :cond_b

    .line 38
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v3

    if-lt v3, v7, :cond_9

    .line 39
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/e;->d()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Lio/grpc/netty/shaded/io/netty/util/internal/e;

    invoke-direct {v3}, Lio/grpc/netty/shaded/io/netty/util/internal/e;-><init>()V

    goto :goto_6

    :cond_8
    move-object v3, v6

    :goto_6
    sput-object v3, Lio/grpc/netty/shaded/io/netty/util/internal/t;->x:Lio/grpc/netty/shaded/io/netty/util/internal/c;

    goto :goto_8

    .line 40
    :cond_9
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/d;->e()Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Lio/grpc/netty/shaded/io/netty/util/internal/d;

    invoke-direct {v3}, Lio/grpc/netty/shaded/io/netty/util/internal/d;-><init>()V

    goto :goto_7

    :cond_a
    move-object v3, v6

    :goto_7
    sput-object v3, Lio/grpc/netty/shaded/io/netty/util/internal/t;->x:Lio/grpc/netty/shaded/io/netty/util/internal/c;

    goto :goto_8

    .line 41
    :cond_b
    sput-object v6, Lio/grpc/netty/shaded/io/netty/util/internal/t;->x:Lio/grpc/netty/shaded/io/netty/util/internal/c;

    .line 42
    :goto_8
    sget-object v3, Lio/grpc/netty/shaded/io/netty/util/internal/t;->x:Lio/grpc/netty/shaded/io/netty/util/internal/c;

    if-eq v3, v6, :cond_c

    const-string v4, "io.grpc.netty.shaded.io.netty.noPreferDirect"

    .line 43
    invoke-static {v4, v8}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_c

    const/4 v4, 0x1

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    :goto_9
    sput-boolean v4, Lio/grpc/netty/shaded/io/netty/util/internal/t;->f:Z

    .line 44
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_d

    xor-int/2addr v2, v4

    .line 45
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "-Dio.netty.noPreferDirect: {}"

    invoke-interface {v0, v4, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    if-ne v3, v6, :cond_e

    .line 46
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->P()Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "Your platform does not provide complete low-level API for accessing direct buffers reliably. Unless explicitly requested, heap buffer will always be preferred to avoid potential system instability."

    .line 47
    invoke-interface {v0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->info(Ljava/lang/String;)V

    .line 48
    :cond_e
    new-instance v0, Ljava/util/HashSet;

    .line 49
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 50
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 52
    array-length v2, v5

    :goto_a
    if-ge v8, v2, :cond_10

    aget-object v3, v5, v8

    .line 53
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v6, Lio/grpc/netty/shaded/io/netty/util/internal/t$d;

    invoke-direct {v6, v4, v0, v1, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/t$d;-><init>(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_b

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 55
    :cond_10
    :goto_b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->n:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 2
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->k(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->p(J)V

    .line 3
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->t(I)V

    return-void
.end method

.method public static A0()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->n:Ljava/util/Set;

    return-object v0
.end method

.method public static B(J)B
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->q(J)B

    move-result p0

    return p0
.end method

.method public static B0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static C([BI)B
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r([BI)B

    move-result p0

    return p0
.end method

.method public static C0(Ljava/lang/reflect/Field;)J
    .locals 2

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->X(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static D(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->s(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method public static D0(JB)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->Y(JB)V

    return-void
.end method

.method public static E(J)I
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->t(J)I

    move-result p0

    return p0
.end method

.method public static E0(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->Z(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static F(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->u(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static F0([BIB)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->a0([BIB)V

    return-void
.end method

.method public static G([BI)I
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->v([BI)I

    move-result p0

    return p0
.end method

.method public static G0(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->b0(JI)V

    return-void
.end method

.method private static H([BI)I
    .locals 2

    .line 1
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v0, :cond_0

    .line 2
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    :goto_0
    or-int/2addr p0, v0

    return p0

    .line 3
    :cond_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    goto :goto_0
.end method

.method public static H0([BII)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->c0([BII)V

    return-void
.end method

.method public static I(J)J
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->w(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static I0(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->d0(JJ)V

    return-void
.end method

.method public static J([BI)J
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->y([BI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static J0([BIJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->e0([BIJ)V

    return-void
.end method

.method private static K([BI)J
    .locals 14

    .line 1
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    const/16 v1, 0x38

    const/16 v2, 0x30

    const/16 v3, 0x28

    const/16 v4, 0x20

    const/16 v5, 0x18

    const/16 v6, 0x10

    const/16 v7, 0x8

    const-wide/16 v8, 0xff

    if-eqz v0, :cond_0

    .line 2
    aget-byte v0, p0, p1

    int-to-long v10, v0

    shl-long v0, v10, v1

    add-int/lit8 v10, p1, 0x1

    aget-byte v10, p0, v10

    int-to-long v10, v10

    and-long/2addr v10, v8

    shl-long/2addr v10, v2

    or-long/2addr v0, v10

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v10, v2

    and-long/2addr v10, v8

    shl-long v2, v10, v3

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    shl-long/2addr v2, v7

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v8

    or-long/2addr p0, v0

    return-wide p0

    .line 3
    :cond_0
    aget-byte v0, p0, p1

    int-to-long v10, v0

    and-long/2addr v10, v8

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    int-to-long v12, v0

    and-long/2addr v12, v8

    shl-long/2addr v12, v7

    or-long/2addr v10, v12

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    int-to-long v12, v0

    and-long/2addr v12, v8

    shl-long v6, v12, v6

    or-long/2addr v6, v10

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    int-to-long v10, v0

    and-long/2addr v10, v8

    shl-long/2addr v10, v5

    or-long v5, v6, v10

    add-int/lit8 v0, p1, 0x4

    aget-byte v0, p0, v0

    int-to-long v10, v0

    and-long/2addr v10, v8

    shl-long/2addr v10, v4

    or-long v4, v5, v10

    add-int/lit8 v0, p1, 0x5

    aget-byte v0, p0, v0

    int-to-long v6, v0

    and-long/2addr v6, v8

    shl-long/2addr v6, v3

    or-long v3, v4, v6

    add-int/lit8 v0, p1, 0x6

    aget-byte v0, p0, v0

    int-to-long v5, v0

    and-long/2addr v5, v8

    shl-long/2addr v5, v2

    or-long v2, v3, v5

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    shl-long/2addr p0, v1

    or-long/2addr p0, v2

    return-wide p0
.end method

.method public static K0(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->f0(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static L(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->z(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static L0(JS)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->g0(JS)V

    return-void
.end method

.method public static M(J)S
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->A(J)S

    move-result p0

    return p0
.end method

.method public static M0([BIS)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->h0([BIS)V

    return-void
.end method

.method public static N([BI)S
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->B([BI)S

    move-result p0

    return p0
.end method

.method public static N0(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sub-int v0, p1, v0

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->b0(I)V

    .line 3
    :try_start_0
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->i0(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->t(I)V

    .line 5
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static O([BI)S
    .locals 1

    .line 1
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v0, :cond_0

    .line 2
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    :goto_0
    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0

    .line 3
    :cond_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x8

    goto :goto_0
.end method

.method public static O0(JJB)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->j0(JJB)V

    return-void
.end method

.method public static P()Ljava/lang/ClassLoader;
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->C()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static P0([BIJB)V
    .locals 10

    sget-wide v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->h:J

    int-to-long v2, p1

    add-long v5, v0, v2

    move-object v4, p0

    move-wide v7, p2

    move v9, p4

    invoke-static/range {v4 .. v9}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->k0(Ljava/lang/Object;JJB)V

    return-void
.end method

.method public static Q()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->e:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static Q0()Ljava/util/Random;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->w:Lio/grpc/netty/shaded/io/netty/util/internal/t$g;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t$g;->current()Ljava/util/Random;

    move-result-object v0

    return-object v0
.end method

.method public static R()Z
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static R0(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->l0(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->S0(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static S()Z
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->G()Z

    move-result v0

    return v0
.end method

.method private static S0(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    throw p0
.end method

.method public static T()Z
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->e:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static T0()Ljava/io/File;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->i:Ljava/io/File;

    return-object v0
.end method

.method public static U(Ljava/lang/CharSequence;)I
    .locals 9

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    const/16 v2, 0x8

    const v3, -0x3d4d51cb

    const/16 v4, 0x20

    if-lt v0, v4, :cond_0

    sub-int/2addr v0, v2

    :goto_0
    if-lt v0, v1, :cond_1

    .line 2
    invoke-static {p0, v0, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->W(Ljava/lang/CharSequence;II)I

    move-result v3

    add-int/lit8 v0, v0, -0x8

    goto :goto_0

    :cond_0
    if-lt v0, v2, :cond_1

    add-int/lit8 v2, v0, -0x8

    .line 3
    invoke-static {p0, v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->W(Ljava/lang/CharSequence;II)I

    move-result v3

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    add-int/lit8 v2, v0, -0x10

    .line 4
    invoke-static {p0, v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->W(Ljava/lang/CharSequence;II)I

    move-result v3

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    sub-int/2addr v0, v2

    .line 5
    invoke-static {p0, v0, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->W(Ljava/lang/CharSequence;II)I

    move-result v3

    :cond_1
    if-nez v1, :cond_2

    return v3

    :cond_2
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eq v1, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const/4 v5, 0x4

    if-eq v1, v5, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    and-int/2addr v0, v6

    const/4 v6, 0x6

    if-eq v1, v6, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    and-int/2addr v0, v6

    const v6, -0x3361d2af    # -8.293031E7f

    if-eqz v0, :cond_6

    mul-int v3, v3, v6

    .line 6
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->Y(C)I

    move-result v0

    add-int/2addr v3, v0

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-eq v1, v2, :cond_7

    const/4 v7, 0x1

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    if-eq v1, v5, :cond_8

    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_6
    and-int/2addr v7, v8

    const/4 v8, 0x5

    if-eq v1, v8, :cond_9

    const/4 v8, 0x1

    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    :goto_7
    and-int/2addr v7, v8

    const v8, 0x1b873593

    if-eqz v7, :cond_b

    if-nez v0, :cond_a

    const v7, -0x3361d2af    # -8.293031E7f

    goto :goto_8

    :cond_a
    const v7, 0x1b873593

    :goto_8
    mul-int v3, v3, v7

    .line 7
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a0(Ljava/lang/CharSequence;I)I

    move-result v7

    invoke-static {v7}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->L(I)I

    move-result v7

    add-int/2addr v3, v7

    add-int/lit8 v0, v0, 0x2

    :cond_b
    if-lt v1, v5, :cond_f

    if-nez v0, :cond_c

    const/4 v1, 0x1

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    :goto_9
    const/4 v5, 0x3

    if-ne v0, v5, :cond_d

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    :goto_a
    or-int/2addr v1, v2

    if-eqz v1, :cond_e

    goto :goto_b

    :cond_e
    const v6, 0x1b873593

    :goto_b
    mul-int v3, v3, v6

    .line 8
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->Z(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/2addr v3, p0

    :cond_f
    return v3
.end method

.method private static U0()Ljava/io/File;
    .locals 3

    :try_start_0
    const-string v0, "io.grpc.netty.shaded.io.netty.tmpdir"

    .line 1
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->V0(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "-Dio.netty.tmpdir: {}"

    invoke-interface {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v0, "java.io.tmpdir"

    .line 3
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->V0(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "-Dio.netty.tmpdir: {} (java.io.tmpdir)"

    invoke-interface {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 5
    :cond_1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->j0()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "TEMP"

    .line 6
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->V0(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "-Dio.netty.tmpdir: {} (%TEMP%)"

    invoke-interface {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    const-string v0, "USERPROFILE"

    .line 8
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\AppData\\Local\\Temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->V0(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 10
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "-Dio.netty.tmpdir: {} (%USERPROFILE%\\AppData\\Local\\Temp)"

    invoke-interface {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 11
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\Local Settings\\Temp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->V0(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "-Dio.netty.tmpdir: {} (%USERPROFILE%\\Local Settings\\Temp)"

    invoke-interface {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const-string v0, "TMPDIR"

    .line 13
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->V0(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 14
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "-Dio.netty.tmpdir: {} ($TMPDIR)"

    invoke-interface {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    nop

    .line 15
    :cond_5
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->j0()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    new-instance v0, Ljava/io/File;

    const-string v1, "C:\\Windows\\Temp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_6
    new-instance v0, Ljava/io/File;

    const-string v1, "/tmp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    :goto_0
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Failed to get the temporary directory; falling back to: {}"

    invoke-interface {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static V([BII)I
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->m0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->I([BII)I

    move-result p0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->X([BII)I

    move-result p0

    :goto_1
    return p0
.end method

.method private static V0(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method private static W(Ljava/lang/CharSequence;II)I
    .locals 3

    .line 1
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    const v1, 0x1b873593

    const v2, -0x3361d2af    # -8.293031E7f

    if-eqz v0, :cond_0

    mul-int p2, p2, v2

    add-int/lit8 v0, p1, 0x4

    .line 2
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->Z(Ljava/lang/CharSequence;I)I

    move-result v0

    mul-int v0, v0, v1

    add-int/2addr p2, v0

    .line 3
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->Z(Ljava/lang/CharSequence;I)I

    move-result p0

    :goto_0
    add-int/2addr p2, p0

    return p2

    :cond_0
    mul-int p2, p2, v2

    .line 4
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->Z(Ljava/lang/CharSequence;I)I

    move-result v0

    mul-int v0, v0, v1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x4

    .line 5
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->Z(Ljava/lang/CharSequence;I)I

    move-result p0

    goto :goto_0
.end method

.method private static W0()Ljava/lang/Throwable;
    .locals 4

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "sun.misc.Unsafe: unavailable (Android)"

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "sun.misc.Unsafe: unavailable (IKVM.NET)"

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->D()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :try_start_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->H()Z

    move-result v0

    .line 9
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "sun.misc.Unsafe: {}"

    if-eqz v0, :cond_3

    const-string v3, "available"

    goto :goto_0

    :cond_3
    const-string v3, "unavailable"

    :goto_0
    invoke-interface {v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    .line 10
    :cond_4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->D()Ljava/lang/Throwable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 11
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Could not determine if Unsafe is available"

    invoke-interface {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method static X([BII)I
    .locals 5

    and-int/lit8 v0, p2, 0x7

    add-int v1, p1, v0

    add-int/lit8 v2, p1, -0x8

    add-int/2addr v2, p2

    const p2, -0x3d4d51cb

    :goto_0
    if-lt v2, v1, :cond_0

    .line 1
    invoke-static {p0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->K([BI)J

    move-result-wide v3

    invoke-static {v3, v4, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->J(JI)I

    move-result p2

    add-int/lit8 v2, v2, -0x8

    goto :goto_0

    :cond_0
    const v1, 0x1b873593

    const v2, -0x3361d2af    # -8.293031E7f

    packed-switch v0, :pswitch_data_0

    return p2

    :pswitch_0
    mul-int p2, p2, v2

    .line 2
    aget-byte v0, p0, p1

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->K(B)I

    move-result v0

    add-int/2addr p2, v0

    mul-int p2, p2, v1

    add-int/lit8 v0, p1, 0x1

    .line 3
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->O([BI)S

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->M(S)I

    move-result v0

    add-int/2addr p2, v0

    mul-int p2, p2, v2

    add-int/lit8 p1, p1, 0x3

    .line 4
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->H([BI)I

    move-result p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->L(I)I

    move-result p0

    :goto_1
    add-int/2addr p2, p0

    return p2

    :pswitch_1
    mul-int p2, p2, v2

    .line 5
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->O([BI)S

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->M(S)I

    move-result v0

    add-int/2addr p2, v0

    mul-int p2, p2, v1

    add-int/lit8 p1, p1, 0x2

    .line 6
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->H([BI)I

    move-result p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->L(I)I

    move-result p0

    goto :goto_1

    :pswitch_2
    mul-int p2, p2, v2

    .line 7
    aget-byte v0, p0, p1

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->K(B)I

    move-result v0

    add-int/2addr p2, v0

    mul-int p2, p2, v1

    add-int/lit8 p1, p1, 0x1

    .line 8
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->H([BI)I

    move-result p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->L(I)I

    move-result p0

    goto :goto_1

    :pswitch_3
    mul-int p2, p2, v2

    .line 9
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->H([BI)I

    move-result p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->L(I)I

    move-result p0

    goto :goto_1

    :pswitch_4
    mul-int p2, p2, v2

    .line 10
    aget-byte v0, p0, p1

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->K(B)I

    move-result v0

    add-int/2addr p2, v0

    mul-int p2, p2, v1

    add-int/lit8 p1, p1, 0x1

    .line 11
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->O([BI)S

    move-result p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->M(S)I

    move-result p0

    goto :goto_1

    :pswitch_5
    mul-int p2, p2, v2

    .line 12
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->O([BI)S

    move-result p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->M(S)I

    move-result p0

    goto :goto_1

    :pswitch_6
    mul-int p2, p2, v2

    .line 13
    aget-byte p0, p0, p1

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->K(B)I

    move-result p0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static X0()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->t:Z

    return v0
.end method

.method private static Y(C)I
    .locals 0

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private static Z(Ljava/lang/CharSequence;I)I
    .locals 2

    .line 1
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x3

    .line 2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v1, p1, 0x2

    .line 3
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    .line 4
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 5
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x18

    :goto_0
    or-int/2addr p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, p1, 0x3

    .line 6
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x2

    .line 7
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    .line 8
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 9
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    and-int/lit8 p0, p0, 0x1f

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a0(Ljava/lang/CharSequence;I)I
    .locals 1

    .line 1
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    .line 3
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x8

    :goto_0
    or-int/2addr p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 4
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x8

    .line 5
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    and-int/lit8 p0, p0, 0x1f

    goto :goto_0
.end method

.method static synthetic b(Ljava/util/Set;Ljava/util/Set;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->d(Ljava/util/Set;Ljava/util/Set;[Ljava/lang/String;)V

    return-void
.end method

.method private static b0(I)V
    .locals 9

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->u:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_1

    int-to-long v1, p0

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v3

    .line 3
    sget-wide v5, Lio/grpc/netty/shaded/io/netty/util/internal/t;->v:J

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    goto :goto_0

    :cond_0
    neg-int v7, p0

    int-to-long v7, v7

    .line 4
    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 5
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/OutOfDirectMemoryError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to allocate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " byte(s) of direct memory (used: "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v1

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", max: "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/OutOfDirectMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-object v0
.end method

.method public static c0()Z
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->N()Z

    move-result v0

    return v0
.end method

.method private static varargs d(Ljava/util/Set;Ljava/util/Set;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 2
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static d0()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->r:Z

    return v0
.end method

.method public static e()I
    .locals 1

    sget v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->s:I

    return v0
.end method

.method private static e0()Z
    .locals 2

    const-string v0, "java.vm.name"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IKVM.NET"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static f()I
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->b()I

    move-result v0

    return v0
.end method

.method private static f0()Z
    .locals 2

    const-string v0, "java.vm.name"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ibm j9"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "eclipse openj9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static g(JI)J
    .locals 0

    invoke-static {p0, p1, p2}, Lwg/a;->a(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static g0()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->p:Z

    return v0
.end method

.method public static h(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->c(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->u(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 6
    invoke-static {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->g(JI)J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int p1, v2

    .line 7
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot align direct buffer. Needs either Unsafe or ByteBuffer.alignSlice method available."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot get aligned slice of non-direct byte buffer."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static h0()Z
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l:Ljava/lang/String;

    const-string v1, "osx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Platform: MacOS"

    invoke-interface {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static i(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->b0(I)V

    .line 2
    :try_start_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->d(I)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->t(I)V

    .line 4
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static i0()Z
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->R()Z

    move-result v0

    return v0
.end method

.method public static j(I)[B
    .locals 1

    .line 1
    sget v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->y:I

    if-ltz v0, :cond_1

    if-le v0, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->e(I)[B

    move-result-object p0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    new-array p0, p0, [B

    :goto_1
    return-object p0
.end method

.method public static j0()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->o:Z

    return v0
.end method

.method private static k()I
    .locals 7

    const-string v0, "io.grpc.netty.shaded.io.netty.bitMode"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "-Dio.netty.bitMode: {}"

    invoke-interface {v1, v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_0
    const-string v0, "sun.arch.data.model"

    .line 3
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "-Dio.netty.bitMode: {} (sun.arch.data.model)"

    invoke-interface {v1, v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_1
    const-string v0, "com.ibm.vm.bitmode"

    .line 5
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    .line 6
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "-Dio.netty.bitMode: {} (com.ibm.vm.bitmode)"

    invoke-interface {v1, v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_2
    const-string v1, "os.arch"

    const-string v2, ""

    .line 7
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, "amd64"

    .line 8
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x40

    if-nez v4, :cond_5

    const-string v4, "x86_64"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const-string v4, "i386"

    .line 9
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "i486"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "i586"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "i686"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    const/16 v0, 0x20

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v0, 0x40

    :cond_6
    :goto_1
    if-lez v0, :cond_7

    .line 10
    sget-object v4, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "-Dio.netty.bitMode: {} (os.arch: {})"

    invoke-interface {v4, v6, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    const-string v0, "java.vm.name"

    .line 11
    invoke-static {v0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "([1-9][0-9]+)-?bit"

    .line 12
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_8
    return v5
.end method

.method private static k0()Z
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l:Ljava/lang/String;

    const-string v1, "windows"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Platform: Windows"

    invoke-interface {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static l()J
    .locals 2

    sget-wide v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->h:J

    return-wide v0
.end method

.method public static l0()I
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->S()I

    move-result v0

    return v0
.end method

.method private static m()J
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public static m0()J
    .locals 2

    sget-wide v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->v:J

    return-wide v0
.end method

.method public static n()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->d:Z

    return v0
.end method

.method private static n0()J
    .locals 11

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->P()Ljava/lang/ClassLoader;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v6, "java.vm.name"

    const-string v7, ""

    .line 2
    invoke-static {v6, v7}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ibm j9"

    .line 3
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "eclipse openj9"

    .line 4
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "sun.misc.VM"

    .line 5
    invoke-static {v6, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "maxDirectMemory"

    new-array v8, v4, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-object v5, v0

    :catchall_1
    :cond_0
    move-wide v6, v1

    :goto_0
    cmp-long v8, v6, v1

    if-lez v8, :cond_1

    return-wide v6

    :cond_1
    :try_start_2
    const-string v8, "java.lang.management.ManagementFactory"

    .line 8
    invoke-static {v8, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "java.lang.management.RuntimeMXBean"

    .line 9
    invoke-static {v9, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const-string v9, "getRuntimeMXBean"

    new-array v10, v4, [Ljava/lang/Class;

    .line 10
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v8, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v8, "getInputArguments"

    new-array v9, v4, [Ljava/lang/Class;

    .line 11
    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_1
    if-ltz v5, :cond_6

    .line 13
    sget-object v8, Lio/grpc/netty/shaded/io/netty/util/internal/t;->b:Ljava/util/regex/Pattern;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 14
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_2

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v0, 0x2

    .line 16
    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v3, 0x47

    if-eq v0, v3, :cond_5

    const/16 v3, 0x4b

    if-eq v0, v3, :cond_4

    const/16 v3, 0x4d

    if-eq v0, v3, :cond_3

    const/16 v3, 0x67

    if-eq v0, v3, :cond_5

    const/16 v3, 0x6b

    if-eq v0, v3, :cond_4

    const/16 v3, 0x6d

    if-eq v0, v3, :cond_3

    goto :goto_3

    :cond_3
    const-wide/32 v3, 0x100000

    goto :goto_2

    :cond_4
    const-wide/16 v3, 0x400

    goto :goto_2

    :cond_5
    const-wide/32 v3, 0x40000000

    :goto_2
    mul-long v6, v6, v3

    goto :goto_3

    :catchall_2
    nop

    :cond_6
    :goto_3
    cmp-long v0, v6, v1

    if-gtz v0, :cond_7

    .line 17
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    .line 18
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "maxDirectMemory: {} bytes (maybe)"

    invoke-interface {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 19
    :cond_7
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "maxDirectMemory: {} bytes"

    invoke-interface {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    return-wide v6
.end method

.method public static o(JJJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->g(JJJ)V

    return-void
.end method

.method private static o0()Z
    .locals 2

    const-string v0, "user.name"

    .line 1
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->j0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Administrator"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const-string v1, "root"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "toor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static p(J[BIJ)V
    .locals 12

    sget-wide v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->h:J

    move v2, p3

    int-to-long v2, v2

    add-long v8, v0, v2

    const/4 v4, 0x0

    move-wide v5, p0

    move-object v7, p2

    move-wide/from16 v10, p4

    invoke-static/range {v4 .. v11}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->h(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-void
.end method

.method public static p0()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method public static q([BIJJ)V
    .locals 12

    sget-wide v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->h:J

    move v2, p1

    int-to-long v2, v2

    add-long v5, v0, v2

    const/4 v7, 0x0

    move-object v4, p0

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-static/range {v4 .. v11}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->h(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-void
.end method

.method public static q0(I)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lvg/m;

    invoke-direct {v0, p0}, Lvg/m;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/j;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/j;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method public static r([BI[BIJ)V
    .locals 12

    sget-wide v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->h:J

    move v2, p1

    int-to-long v2, v2

    add-long v5, v0, v2

    move v2, p3

    int-to-long v2, v2

    add-long v8, v0, v2

    move-object v4, p0

    move-object v7, p2

    move-wide/from16 v10, p4

    invoke-static/range {v4 .. v11}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->h(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-void
.end method

.method public static r0()Lio/grpc/netty/shaded/io/netty/util/internal/m;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/l;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/l;-><init>()V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/t$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t$e;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/t$a;)V

    return-object v0
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-lt v0, v2, :cond_1

    if-nez p2, :cond_0

    new-array p2, v1, [Ljava/nio/file/attribute/FileAttribute;

    .line 2
    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    new-array v0, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p2, p0, p1, v0}, Ljava/nio/file/Files;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p2, :cond_2

    .line 4
    invoke-static {p0, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    invoke-static {p0, p1, p2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    return-object p0
.end method

.method public static s0()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t$f;->b()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method private static t(I)V
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->u:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_0

    neg-int p0, p0

    int-to-long v1, p0

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_0
    return-void
.end method

.method public static t0(I)Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t$f;->c(I)Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/nio/ByteBuffer;)J
    .locals 2

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->k(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static u0(II)Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t$f;->a(II)Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method

.method public static v()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->f:Z

    return v0
.end method

.method private static v0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[^a-z0-9]+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static w([BI[BII)Z
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->m0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->l([BI[BII)Z

    move-result p0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->y([BI[BII)Z

    move-result p0

    :goto_1
    return p0
.end method

.method private static w0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->v0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "^(x8664|amd64|ia32e|em64t|x64)$"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "x86_64"

    return-object p0

    :cond_0
    const-string v0, "^(x8632|x86|i[3-6]86|ia32|x32)$"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "x86_32"

    return-object p0

    :cond_1
    const-string v0, "^(ia64|itanium64)$"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "itanium_64"

    return-object p0

    :cond_2
    const-string v0, "^(sparc|sparc32)$"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "sparc_32"

    return-object p0

    :cond_3
    const-string v0, "^(sparcv9|sparc64)$"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "sparc_64"

    return-object p0

    :cond_4
    const-string v0, "^(arm|arm32)$"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "arm_32"

    return-object p0

    :cond_5
    const-string v0, "aarch64"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "aarch_64"

    return-object p0

    :cond_6
    const-string v0, "^(ppc|ppc32)$"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "ppc_32"

    return-object p0

    :cond_7
    const-string v0, "ppc64"

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "ppc_64"

    return-object p0

    :cond_8
    const-string v0, "ppc64le"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "ppcle_64"

    return-object p0

    :cond_9
    const-string v0, "s390"

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "s390_32"

    return-object p0

    :cond_a
    const-string v0, "s390x"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "s390_64"

    return-object p0

    :cond_b
    const-string p0, "unknown"

    return-object p0
.end method

.method public static x([BI[BII)I
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->m0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->m([BI[BII)I

    move-result p0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/util/internal/f;->d([BI[BII)I

    move-result p0

    :goto_1
    return p0
.end method

.method private static x0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->v0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "aix"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "hpux"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "os400"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    return-object v0

    :cond_3
    const-string v0, "linux"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    const-string v0, "macosx"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "osx"

    if-nez v0, :cond_b

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "darwin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const-string v0, "freebsd"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    const-string v0, "openbsd"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    const-string v0, "netbsd"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    const-string v0, "solaris"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "sunos"

    if-nez v0, :cond_b

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    const-string v0, "windows"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    return-object v0

    :cond_a
    const-string p0, "unknown"

    return-object p0

    :cond_b
    :goto_0
    return-object v1
.end method

.method private static y([BI[BII)Z
    .locals 2

    add-int/2addr p4, p1

    :goto_0
    if-ge p1, p4, :cond_1

    aget-byte v0, p0, p1

    aget-byte v1, p2, p3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static y0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[\"\']"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/nio/ByteBuffer;)V
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->x:Lio/grpc/netty/shaded/io/netty/util/internal/c;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/c;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static z0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->k:Ljava/lang/String;

    return-object v0
.end method
