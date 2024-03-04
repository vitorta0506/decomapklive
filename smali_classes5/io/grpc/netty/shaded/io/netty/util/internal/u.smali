.class final Lio/grpc/netty/shaded/io/netty/util/internal/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final b:J

.field private static final c:J

.field private static final d:J

.field private static final e:J

.field private static final f:J

.field private static final g:J

.field private static final h:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final i:Ljava/lang/Throwable;

.field private static final j:Ljava/lang/reflect/Method;

.field private static final k:Ljava/lang/reflect/Method;

.field private static final l:I

.field private static final m:Z

.field private static final n:Ljava/lang/Throwable;

.field private static final o:Ljava/lang/Object;

.field private static final p:Z

.field private static final q:Z

.field static final r:Lsun/misc/Unsafe;

.field private static final s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    const-class v0, [J

    const-class v1, [I

    const-class v2, [B

    const-class v3, Lio/grpc/netty/shaded/io/netty/util/internal/u;

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v3

    sput-object v3, Lio/grpc/netty/shaded/io/netty/util/internal/u;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->n()Ljava/lang/Throwable;

    move-result-object v4

    sput-object v4, Lio/grpc/netty/shaded/io/netty/util/internal/u;->i:Ljava/lang/Throwable;

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->T()I

    move-result v5

    sput v5, Lio/grpc/netty/shaded/io/netty/util/internal/u;->l:I

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->O()Z

    move-result v5

    sput-boolean v5, Lio/grpc/netty/shaded/io/netty/util/internal/u;->m:Z

    .line 5
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->o()Z

    move-result v5

    sput-boolean v5, Lio/grpc/netty/shaded/io/netty/util/internal/u;->p:Z

    const-string v5, "org.graalvm.nativeimage.imagecode"

    .line 6
    invoke-static {v5}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->a(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lio/grpc/netty/shaded/io/netty/util/internal/u;->q:Z

    const-wide/16 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    goto/16 :goto_6

    .line 7
    :cond_0
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 8
    new-instance v10, Lio/grpc/netty/shaded/io/netty/util/internal/u$b;

    invoke-direct {v10}, Lio/grpc/netty/shaded/io/netty/util/internal/u$b;-><init>()V

    invoke-static {v10}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v10

    .line 9
    instance-of v11, v10, Ljava/lang/Throwable;

    if-eqz v11, :cond_2

    .line 10
    move-object v4, v10

    check-cast v4, Ljava/lang/Throwable;

    .line 11
    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isTraceEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "sun.misc.Unsafe.theUnsafe: unavailable"

    .line 12
    invoke-interface {v3, v10, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    const-string v11, "sun.misc.Unsafe.theUnsafe: unavailable: {}"

    invoke-interface {v3, v11, v10}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    move-object v10, v8

    goto :goto_1

    .line 14
    :cond_2
    check-cast v10, Lsun/misc/Unsafe;

    const-string v11, "sun.misc.Unsafe.theUnsafe: available"

    .line 15
    invoke-interface {v3, v11}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    :goto_1
    if-eqz v10, :cond_5

    .line 16
    new-instance v11, Lio/grpc/netty/shaded/io/netty/util/internal/u$c;

    invoke-direct {v11, v10}, Lio/grpc/netty/shaded/io/netty/util/internal/u$c;-><init>(Lsun/misc/Unsafe;)V

    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_3

    const-string v11, "sun.misc.Unsafe.copyMemory: available"

    .line 17
    invoke-interface {v3, v11}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 18
    :cond_3
    move-object v4, v11

    check-cast v4, Ljava/lang/Throwable;

    .line 19
    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isTraceEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "sun.misc.Unsafe.copyMemory: unavailable"

    .line 20
    invoke-interface {v3, v10, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 21
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    const-string v11, "sun.misc.Unsafe.copyMemory: unavailable: {}"

    .line 22
    invoke-interface {v3, v11, v10}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    move-object v10, v8

    :cond_5
    :goto_3
    if-eqz v10, :cond_8

    .line 23
    new-instance v11, Lio/grpc/netty/shaded/io/netty/util/internal/u$d;

    invoke-direct {v11, v10, v9}, Lio/grpc/netty/shaded/io/netty/util/internal/u$d;-><init>(Lsun/misc/Unsafe;Ljava/nio/ByteBuffer;)V

    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v11

    .line 24
    instance-of v12, v11, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_6

    .line 25
    check-cast v11, Ljava/lang/reflect/Field;

    const-string v12, "java.nio.Buffer.address: available"

    .line 26
    invoke-interface {v3, v12}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 27
    :cond_6
    check-cast v11, Ljava/lang/Throwable;

    .line 28
    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "java.nio.Buffer.address: unavailable"

    .line 29
    invoke-interface {v3, v4, v11}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 30
    :cond_7
    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v10, "java.nio.Buffer.address: unavailable: {}"

    .line 31
    invoke-interface {v3, v10, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    move-object v10, v8

    move-object v4, v11

    move-object v11, v10

    goto :goto_5

    :cond_8
    move-object v11, v8

    :goto_5
    if-eqz v10, :cond_9

    .line 32
    invoke-virtual {v10, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v12

    int-to-long v12, v12

    cmp-long v14, v12, v5

    if-eqz v14, :cond_9

    .line 33
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v10, "unsafe.arrayIndexScale is {} (expected: 1). Not using unsafe."

    invoke-interface {v3, v10, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v10, "Unexpected unsafe.arrayIndexScale"

    invoke-direct {v4, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    move-object v10, v8

    .line 35
    :cond_9
    :goto_6
    sput-object v4, Lio/grpc/netty/shaded/io/netty/util/internal/u;->n:Ljava/lang/Throwable;

    .line 36
    sput-object v10, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    const/16 v4, 0x9

    const/4 v12, 0x0

    const-wide/16 v13, -0x1

    if-nez v10, :cond_a

    .line 37
    sput-wide v13, Lio/grpc/netty/shaded/io/netty/util/internal/u;->b:J

    .line 38
    sput-wide v13, Lio/grpc/netty/shaded/io/netty/util/internal/u;->c:J

    .line 39
    sput-wide v13, Lio/grpc/netty/shaded/io/netty/util/internal/u;->f:J

    .line 40
    sput-wide v13, Lio/grpc/netty/shaded/io/netty/util/internal/u;->g:J

    .line 41
    sput-wide v13, Lio/grpc/netty/shaded/io/netty/util/internal/u;->d:J

    .line 42
    sput-wide v13, Lio/grpc/netty/shaded/io/netty/util/internal/u;->e:J

    .line 43
    sput-boolean v12, Lio/grpc/netty/shaded/io/netty/util/internal/u;->s:Z

    .line 44
    sput-object v8, Lio/grpc/netty/shaded/io/netty/util/internal/u;->h:Ljava/lang/reflect/Constructor;

    .line 45
    sput-object v8, Lio/grpc/netty/shaded/io/netty/util/internal/u;->j:Ljava/lang/reflect/Method;

    move-object v0, v8

    goto/16 :goto_10

    .line 46
    :cond_a
    :try_start_0
    new-instance v15, Lio/grpc/netty/shaded/io/netty/util/internal/u$e;

    invoke-direct {v15, v9}, Lio/grpc/netty/shaded/io/netty/util/internal/u$e;-><init>(Ljava/nio/ByteBuffer;)V

    .line 47
    invoke-static {v15}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v9

    .line 48
    instance-of v15, v9, Ljava/lang/reflect/Constructor;

    const/4 v8, 0x2

    if-eqz v15, :cond_b

    .line 49
    invoke-virtual {v10, v5, v6}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    move-object v10, v9

    check-cast v10, Ljava/lang/reflect/Constructor;

    new-array v15, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v7

    invoke-virtual {v10, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    check-cast v9, Ljava/lang/reflect/Constructor;

    const-string v10, "direct buffer constructor: available"

    .line 52
    invoke-interface {v3, v10}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :catch_0
    :goto_7
    const/4 v9, 0x0

    goto :goto_9

    .line 53
    :cond_b
    :try_start_2
    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "direct buffer constructor: unavailable"

    .line 54
    check-cast v9, Ljava/lang/Throwable;

    invoke-interface {v3, v5, v9}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_c
    const-string v5, "direct buffer constructor: unavailable: {}"

    .line 55
    check-cast v9, Ljava/lang/Throwable;

    .line 56
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 57
    invoke-interface {v3, v5, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_8
    move-wide v5, v13

    goto :goto_7

    :goto_9
    cmp-long v3, v5, v13

    if-eqz v3, :cond_d

    .line 58
    sget-object v3, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v3, v5, v6}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 59
    :cond_d
    sput-object v9, Lio/grpc/netty/shaded/io/netty/util/internal/u;->h:Ljava/lang/reflect/Constructor;

    .line 60
    invoke-static {v11}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->X(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    sput-wide v5, Lio/grpc/netty/shaded/io/netty/util/internal/u;->b:J

    .line 61
    sget-object v3, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v3, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    int-to-long v5, v2

    sput-wide v5, Lio/grpc/netty/shaded/io/netty/util/internal/u;->c:J

    .line 62
    invoke-virtual {v3, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    int-to-long v5, v2

    sput-wide v5, Lio/grpc/netty/shaded/io/netty/util/internal/u;->d:J

    .line 63
    invoke-virtual {v3, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->e:J

    .line 64
    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->f:J

    .line 65
    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->g:J

    .line 66
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/u$f;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/u$f;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    .line 68
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 69
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "java.nio.Bits.unaligned: available, {}"

    invoke-interface {v1, v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b

    :cond_e
    const-string v1, "os.arch"

    const-string v2, ""

    .line 70
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "^(i[3-6]86|x86(_64)?|x64|amd64)$"

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 72
    check-cast v0, Ljava/lang/Throwable;

    .line 73
    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/u;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 74
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "java.nio.Bits.unaligned: unavailable, {}"

    invoke-interface {v2, v5, v3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 75
    :cond_f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v5, "java.nio.Bits.unaligned: unavailable, {}, {}"

    invoke-interface {v2, v5, v3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_a
    move v0, v1

    .line 76
    :goto_b
    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->s:Z

    .line 77
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->S()I

    move-result v0

    if-lt v0, v4, :cond_14

    .line 78
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/u$g;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/u$g;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    instance-of v0, v1, Ljava/lang/Throwable;

    if-nez v0, :cond_11

    .line 80
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/u$h;

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/u$h;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    instance-of v2, v0, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_10

    .line 82
    :try_start_3
    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/Method;

    new-array v3, v8, [Ljava/lang/Object;

    .line 83
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v12

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    :cond_10
    :goto_c
    const/4 v2, 0x0

    :goto_d
    move-object/from16 v17, v1

    move-object v1, v0

    move-object/from16 v0, v17

    goto :goto_e

    :cond_11
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 84
    :goto_e
    instance-of v3, v1, Ljava/lang/Throwable;

    if-eqz v3, :cond_13

    .line 85
    sget-object v3, Lio/grpc/netty/shaded/io/netty/util/internal/u;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 86
    check-cast v1, Ljava/lang/Throwable;

    const-string v5, "jdk.internal.misc.Unsafe.allocateUninitializedArray(int): unavailable"

    invoke-interface {v3, v5, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 87
    :cond_12
    check-cast v1, Ljava/lang/Throwable;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v5, "jdk.internal.misc.Unsafe.allocateUninitializedArray(int): unavailable: {}"

    .line 89
    invoke-interface {v3, v5, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f

    .line 90
    :cond_13
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v3, "jdk.internal.misc.Unsafe.allocateUninitializedArray(int): available"

    invoke-interface {v1, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    goto :goto_f

    .line 91
    :cond_14
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "jdk.internal.misc.Unsafe.allocateUninitializedArray(int): unavailable prior to Java9"

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 92
    :goto_f
    sput-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/u;->j:Ljava/lang/reflect/Method;

    .line 93
    :goto_10
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->S()I

    move-result v1

    if-le v1, v4, :cond_15

    .line 94
    new-instance v1, Lio/grpc/netty/shaded/io/netty/util/internal/u$i;

    invoke-direct {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/u$i;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->k:Ljava/lang/reflect/Method;

    goto :goto_11

    :cond_15
    const/4 v1, 0x0

    .line 95
    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->k:Ljava/lang/reflect/Method;

    .line 96
    :goto_11
    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->o:Ljava/lang/Object;

    .line 97
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->h:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_16

    const-string v1, "available"

    goto :goto_12

    :cond_16
    const-string v1, "unavailable"

    :goto_12
    const-string v2, "java.nio.DirectByteBuffer.<init>(long, int): {}"

    invoke-interface {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception v0

    move-wide v5, v13

    :goto_13
    cmp-long v1, v5, v13

    if-eqz v1, :cond_17

    .line 98
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v1, v5, v6}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 99
    :cond_17
    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static A(J)S
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getShort(J)S

    move-result p0

    return p0
.end method

.method static B([BI)S
    .locals 5

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    sget-wide v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->c:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result p0

    return p0
.end method

.method static C()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/u$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/u$a;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static D()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->n:Ljava/lang/Throwable;

    return-object v0
.end method

.method static E()Z
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->k:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static F()Z
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->j:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static G()Z
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->h:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static H()Z
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static I([BII)I
    .locals 10

    .line 1
    sget-wide v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->c:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    and-int/lit8 p1, p2, 0x7

    int-to-long v2, p1

    add-long/2addr v2, v0

    const-wide/16 v4, 0x8

    sub-long v6, v0, v4

    int-to-long v8, p2

    add-long/2addr v6, v8

    const p2, -0x3d4d51cb

    :goto_0
    cmp-long v8, v6, v2

    if-ltz v8, :cond_0

    .line 2
    sget-object v8, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v8, p0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->J(JI)I

    move-result p2

    sub-long/2addr v6, v4

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return p2

    :cond_1
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/4 v5, 0x4

    if-eq p1, v5, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    and-int/2addr v2, v6

    const/4 v6, 0x6

    if-eq p1, v6, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    and-int/2addr v2, v6

    const v6, 0x1b873593

    const v7, -0x3361d2af    # -8.293031E7f

    if-eqz v2, :cond_5

    mul-int p2, p2, v7

    .line 3
    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v2

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->K(B)I

    move-result v2

    add-int/2addr p2, v2

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    const v2, 0x1b873593

    goto :goto_4

    :cond_5
    const v2, -0x3361d2af    # -8.293031E7f

    :goto_4
    if-eq p1, v4, :cond_6

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_5
    if-eq p1, v5, :cond_7

    const/4 v9, 0x1

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    :goto_6
    and-int/2addr v8, v9

    const/4 v9, 0x5

    if-eq p1, v9, :cond_8

    const/4 v3, 0x1

    :cond_8
    and-int/2addr v3, v8

    if-eqz v3, :cond_a

    mul-int p2, p2, v2

    .line 4
    sget-object v3, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v3, p0, v0, v1}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v3

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->M(S)I

    move-result v3

    add-int/2addr p2, v3

    if-ne v2, v7, :cond_9

    goto :goto_7

    :cond_9
    const v6, -0x3361d2af    # -8.293031E7f

    :goto_7
    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    move v2, v6

    :cond_a
    if-lt p1, v5, :cond_b

    mul-int p2, p2, v2

    .line 5
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {p1, p0, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->L(I)I

    move-result p0

    add-int/2addr p2, p0

    :cond_b
    return p2
.end method

.method static J(JI)I
    .locals 2

    const v0, -0x3361d2af    # -8.293031E7f

    mul-int p2, p2, v0

    long-to-int v0, p0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->L(I)I

    move-result v0

    const v1, 0x1b873593

    mul-int v0, v0, v1

    add-int/2addr p2, v0

    const-wide v0, 0x1f1f1f1f00000000L    # 8.854494059669966E-159

    and-long/2addr p0, v0

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    add-int/2addr p2, p1

    return p2
.end method

.method static K(B)I
    .locals 0

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method static L(I)I
    .locals 1

    const v0, 0x1f1f1f1f

    and-int/2addr p0, v0

    return p0
.end method

.method static M(S)I
    .locals 0

    and-int/lit16 p0, p0, 0x1f1f

    return p0
.end method

.method static N()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->m:Z

    return v0
.end method

.method private static O()Z
    .locals 3

    const-string v0, "java.vm.name"

    .line 1
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dalvik"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Platform: Android"

    invoke-interface {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method static P()Z
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->i:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static Q()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->p:Z

    return v0
.end method

.method static R()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->s:Z

    return v0
.end method

.method static S()I
    .locals 1

    sget v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->l:I

    return v0
.end method

.method private static T()I
    .locals 4

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->V()I

    move-result v0

    .line 3
    :goto_0
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Java version: {}"

    invoke-interface {v1, v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method static U(Ljava/lang/String;)I
    .locals 4

    const-string v0, "\\."

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 4
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    aget p0, v0, v1

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 6
    aget p0, v0, v2

    return p0

    .line 7
    :cond_1
    aget p0, v0, v1

    return p0
.end method

.method static V()I
    .locals 2

    const-string v0, "java.specification.version"

    const-string v1, "1.6"

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->U(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static W(JI)Ljava/nio/ByteBuffer;
    .locals 3

    const-string v0, "capacity"

    .line 1
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    .line 2
    :try_start_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->h:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 4
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static X(Ljava/lang/reflect/Field;)J
    .locals 2

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method static Y(JB)V
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putByte(JB)V

    return-void
.end method

.method static Z(Ljava/lang/Object;JB)V
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->n0()Z

    move-result v0

    return v0
.end method

.method static a0([BIB)V
    .locals 5

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    sget-wide v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->c:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method static b()I
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->addressSize()I

    move-result v0

    return v0
.end method

.method static b0(JI)V
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putInt(JI)V

    return-void
.end method

.method static c(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->k:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static c0([BII)V
    .locals 5

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    sget-wide v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->c:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method static d(I)Ljava/nio/ByteBuffer;
    .locals 3

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    const/4 v1, 0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->W(JI)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static d0(JJ)V
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putLong(JJ)V

    return-void
.end method

.method static e(I)[B
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->j:Ljava/lang/reflect/Method;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->o:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static e0([BIJ)V
    .locals 6

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    sget-wide v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->c:J

    int-to-long v3, p1

    add-long v2, v1, v3

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static f()J
    .locals 2

    sget-wide v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->c:J

    return-wide v0
.end method

.method static f0(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static g(JJJ)V
    .locals 9

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->S()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 2
    invoke-static/range {p0 .. p5}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->i(JJJ)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    move-wide v3, p0

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v2 .. v8}, Lsun/misc/Unsafe;->copyMemory(JJJ)V

    :goto_0
    return-void
.end method

.method static g0(JS)V
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putShort(JS)V

    return-void
.end method

.method static h(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .locals 11

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->S()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 2
    invoke-static/range {p0 .. p7}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->j(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v2 .. v10}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    :goto_0
    return-void
.end method

.method static h0([BIS)V
    .locals 5

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    sget-wide v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->c:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    return-void
.end method

.method private static i(JJJ)V
    .locals 9

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_0

    const-wide/32 v0, 0x100000

    .line 1
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, v7

    invoke-virtual/range {v0 .. v6}, Lsun/misc/Unsafe;->copyMemory(JJJ)V

    sub-long/2addr p4, v7

    add-long/2addr p0, v7

    add-long/2addr p2, v7

    goto :goto_0

    :cond_0
    return-void
.end method

.method static i0(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 5

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->k(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    int-to-long v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->reallocateMemory(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->W(JI)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static j(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .locals 17

    move-wide/from16 v9, p1

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, v13, v0

    if-lez v2, :cond_0

    const-wide/32 v0, 0x100000

    .line 1
    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    move-object/from16 v1, p0

    move-wide v2, v9

    move-object/from16 v4, p3

    move-wide v5, v11

    move-wide v7, v15

    invoke-virtual/range {v0 .. v8}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    sub-long/2addr v13, v15

    add-long/2addr v9, v15

    add-long/2addr v11, v15

    goto :goto_0

    :cond_0
    return-void
.end method

.method static j0(JJB)V
    .locals 6

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->setMemory(JJB)V

    return-void
.end method

.method static k(Ljava/nio/ByteBuffer;)J
    .locals 2

    sget-wide v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->b:J

    invoke-static {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->x(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static k0(Ljava/lang/Object;JJB)V
    .locals 7

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lsun/misc/Unsafe;->setMemory(Ljava/lang/Object;JJB)V

    return-void
.end method

.method static l([BI[BII)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    and-int/lit8 v4, v3, 0x7

    .line 1
    sget-wide v5, Lio/grpc/netty/shaded/io/netty/util/internal/u;->c:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    sub-int v1, p3, v1

    int-to-long v7, v1

    const/4 v1, 0x0

    const/16 v9, 0x8

    if-lt v3, v9, :cond_1

    int-to-long v9, v4

    add-long/2addr v9, v5

    const-wide/16 v11, 0x8

    sub-long v13, v5, v11

    int-to-long v11, v3

    add-long/2addr v13, v11

    :goto_0
    cmp-long v3, v13, v9

    if-ltz v3, :cond_1

    .line 2
    sget-object v3, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v3, v0, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    move-wide v15, v9

    add-long v9, v13, v7

    invoke-virtual {v3, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    cmp-long v3, v11, v9

    if-eqz v3, :cond_0

    return v1

    :cond_0
    const-wide/16 v9, 0x8

    sub-long/2addr v13, v9

    move-wide v9, v15

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-lt v4, v3, :cond_2

    add-int/lit8 v4, v4, -0x4

    int-to-long v9, v4

    add-long/2addr v9, v5

    .line 3
    sget-object v3, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v3, v0, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    add-long/2addr v9, v7

    invoke-virtual {v3, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-eq v11, v3, :cond_2

    return v1

    :cond_2
    add-long/2addr v7, v5

    const/4 v3, 0x1

    const/4 v9, 0x2

    if-lt v4, v9, :cond_5

    .line 4
    sget-object v10, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v10, v0, v5, v6}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v11

    invoke-virtual {v10, v2, v7, v8}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v12

    if-ne v11, v12, :cond_4

    if-eq v4, v9, :cond_3

    const-wide/16 v11, 0x2

    add-long/2addr v5, v11

    .line 5
    invoke-virtual {v10, v0, v5, v6}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    add-long/2addr v7, v11

    invoke-virtual {v10, v2, v7, v8}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v2

    if-ne v0, v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    if-eqz v4, :cond_6

    .line 6
    sget-object v4, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    .line 7
    invoke-virtual {v4, v0, v5, v6}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    invoke-virtual {v4, v2, v7, v8}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v2

    if-ne v0, v2, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method static l0(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    const-string v1, "cause"

    invoke-static {p0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->throwException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static m([BI[BII)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    and-int/lit8 v4, v3, 0x7

    int-to-long v4, v4

    .line 1
    sget-wide v6, Lio/grpc/netty/shaded/io/netty/util/internal/u;->c:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    add-long v8, v6, v4

    sub-int v1, p3, v1

    int-to-long v10, v1

    const-wide/16 v12, 0x8

    sub-long v14, v6, v12

    int-to-long v12, v3

    add-long/2addr v14, v12

    const-wide/16 v16, 0x0

    :goto_0
    cmp-long v1, v14, v8

    if-ltz v1, :cond_0

    .line 2
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v18

    add-long v12, v14, v10

    invoke-virtual {v1, v2, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    xor-long v12, v18, v12

    or-long v16, v16, v12

    const-wide/16 v12, 0x8

    sub-long/2addr v14, v12

    goto :goto_0

    :cond_0
    const-wide/16 v12, 0x4

    cmp-long v1, v4, v12

    if-ltz v1, :cond_1

    .line 3
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    add-long/2addr v6, v10

    invoke-virtual {v1, v2, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    xor-int/2addr v1, v3

    int-to-long v6, v1

    or-long v16, v16, v6

    sub-long/2addr v4, v12

    :cond_1
    const-wide/16 v6, 0x2

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2

    sub-long v12, v8, v4

    .line 4
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v12, v13}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v3

    add-long/2addr v12, v10

    invoke-virtual {v1, v2, v12, v13}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v1

    xor-int/2addr v1, v3

    int-to-long v12, v1

    or-long v16, v16, v12

    sub-long/2addr v4, v6

    :cond_2
    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    sub-long/2addr v8, v6

    .line 5
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v8, v9}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    add-long/2addr v8, v10

    invoke-virtual {v1, v2, v8, v9}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v1

    xor-int/2addr v0, v1

    int-to-long v0, v0

    or-long v16, v16, v0

    :cond_3
    move-wide/from16 v0, v16

    const-wide/16 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/f;->b(JJ)I

    move-result v0

    return v0
.end method

.method static m0()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->s:Z

    return v0
.end method

.method private static n()Ljava/lang/Throwable;
    .locals 4

    const-string v0, "io.grpc.netty.shaded.io.netty.noUnsafe"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v0

    .line 2
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "-Dio.netty.noUnsafe: {}"

    invoke-interface {v1, v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    const-string v0, "sun.misc.Unsafe: unavailable (io.netty.noUnsafe)"

    .line 3
    invoke-interface {v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "io.grpc.netty.shaded.io.netty.tryUnsafe"

    .line 5
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "org.jboss.netty.tryUnsafe"

    :goto_0
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sun.misc.Unsafe: unavailable ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-interface {v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static n0()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->q:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static o()Z
    .locals 2

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/u;->S()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "io.grpc.netty.shaded.io.netty.tryReflectionSetAccessible"

    invoke-static {v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static p(J)V
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->freeMemory(J)V

    return-void
.end method

.method static q(J)B
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    return p0
.end method

.method static r([BI)B
    .locals 5

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    sget-wide v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->c:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static s(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/u$j;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/u$j;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0
.end method

.method static t(J)I
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getInt(J)I

    move-result p0

    return p0
.end method

.method static u(Ljava/lang/Object;J)I
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static v([BI)I
    .locals 5

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    sget-wide v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->c:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static w(J)J
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static x(Ljava/lang/Object;J)J
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static y([BI)J
    .locals 5

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    sget-wide v1, Lio/grpc/netty/shaded/io/netty/util/internal/u;->c:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static z(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/u;->r:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
