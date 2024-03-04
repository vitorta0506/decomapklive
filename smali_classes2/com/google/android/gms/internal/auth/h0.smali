.class final Lcom/google/android/gms/internal/auth/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lsun/misc/Unsafe;

.field private static final b:Ljava/lang/Class;

.field private static final c:Z

.field private static final d:Lcom/google/android/gms/internal/auth/g0;

.field private static final e:Z

.field private static final f:Z

.field static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const-class v0, [Ljava/lang/Object;

    const-class v1, [D

    const-class v2, [F

    const-class v3, [J

    const-class v4, [I

    const-class v5, [Z

    const-class v6, Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/auth/h0;->a()Lsun/misc/Unsafe;

    move-result-object v7

    sput-object v7, Lcom/google/android/gms/internal/auth/h0;->a:Lsun/misc/Unsafe;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/auth/m;->a()Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lcom/google/android/gms/internal/auth/h0;->b:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 3
    invoke-static {v8}, Lcom/google/android/gms/internal/auth/h0;->c(Ljava/lang/Class;)Z

    move-result v9

    sput-boolean v9, Lcom/google/android/gms/internal/auth/h0;->c:Z

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 4
    invoke-static {v10}, Lcom/google/android/gms/internal/auth/h0;->c(Ljava/lang/Class;)Z

    move-result v10

    const/4 v11, 0x0

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v9, :cond_1

    .line 5
    new-instance v11, Lcom/google/android/gms/internal/auth/f0;

    invoke-direct {v11, v7}, Lcom/google/android/gms/internal/auth/f0;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    if-eqz v10, :cond_2

    new-instance v11, Lcom/google/android/gms/internal/auth/e0;

    invoke-direct {v11, v7}, Lcom/google/android/gms/internal/auth/e0;-><init>(Lsun/misc/Unsafe;)V

    .line 6
    :cond_2
    :goto_0
    sput-object v11, Lcom/google/android/gms/internal/auth/h0;->d:Lcom/google/android/gms/internal/auth/g0;

    const-string v7, "getLong"

    const-string v9, "objectFieldOffset"

    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v11, :cond_3

    :goto_1
    const/4 v8, 0x0

    goto :goto_2

    .line 7
    :cond_3
    iget-object v11, v11, Lcom/google/android/gms/internal/auth/g0;->a:Lsun/misc/Unsafe;

    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    new-array v14, v12, [Ljava/lang/Class;

    const-class v15, Ljava/lang/reflect/Field;

    aput-object v15, v14, v13

    .line 8
    invoke-virtual {v11, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v14, v10, [Ljava/lang/Class;

    aput-object v6, v14, v13

    aput-object v8, v14, v12

    .line 9
    invoke-virtual {v11, v7, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/auth/h0;->h()Ljava/lang/reflect/Field;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    goto :goto_2

    :catchall_0
    move-exception v8

    .line 11
    invoke-static {v8}, Lcom/google/android/gms/internal/auth/h0;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 12
    :goto_2
    sput-boolean v8, Lcom/google/android/gms/internal/auth/h0;->e:Z

    sget-object v8, Lcom/google/android/gms/internal/auth/h0;->d:Lcom/google/android/gms/internal/auth/g0;

    if-nez v8, :cond_5

    :goto_3
    const/4 v6, 0x0

    goto :goto_4

    .line 13
    :cond_5
    iget-object v8, v8, Lcom/google/android/gms/internal/auth/g0;->a:Lsun/misc/Unsafe;

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    new-array v11, v12, [Ljava/lang/Class;

    const-class v14, Ljava/lang/reflect/Field;

    aput-object v14, v11, v13

    .line 14
    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v9, v12, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Class;

    aput-object v11, v9, v13

    const-string v11, "arrayBaseOffset"

    .line 15
    invoke-virtual {v8, v11, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v9, v12, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Class;

    aput-object v11, v9, v13

    const-string v11, "arrayIndexScale"

    .line 16
    invoke-virtual {v8, v11, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v9, v10, [Ljava/lang/Class;

    aput-object v6, v9, v13

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v12

    const-string v14, "getInt"

    .line 17
    invoke-virtual {v8, v14, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v9, 0x3

    new-array v14, v9, [Ljava/lang/Class;

    aput-object v6, v14, v13

    aput-object v11, v14, v12

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v14, v10

    const-string v15, "putInt"

    .line 18
    invoke-virtual {v8, v15, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v14, v10, [Ljava/lang/Class;

    aput-object v6, v14, v13

    aput-object v11, v14, v12

    .line 19
    invoke-virtual {v8, v7, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v9, [Ljava/lang/Class;

    aput-object v6, v7, v13

    aput-object v11, v7, v12

    aput-object v11, v7, v10

    const-string v14, "putLong"

    .line 20
    invoke-virtual {v8, v14, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v10, [Ljava/lang/Class;

    aput-object v6, v7, v13

    aput-object v11, v7, v12

    const-string v14, "getObject"

    .line 21
    invoke-virtual {v8, v14, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v9, [Ljava/lang/Class;

    aput-object v6, v7, v13

    aput-object v11, v7, v12

    aput-object v6, v7, v10

    const-string v6, "putObject"

    .line 22
    invoke-virtual {v8, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x1

    goto :goto_4

    :catchall_1
    move-exception v6

    .line 23
    invoke-static {v6}, Lcom/google/android/gms/internal/auth/h0;->b(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 24
    :goto_4
    sput-boolean v6, Lcom/google/android/gms/internal/auth/h0;->f:Z

    const-class v6, [B

    .line 25
    invoke-static {v6}, Lcom/google/android/gms/internal/auth/h0;->f(Ljava/lang/Class;)I

    .line 26
    invoke-static {v5}, Lcom/google/android/gms/internal/auth/h0;->f(Ljava/lang/Class;)I

    .line 27
    invoke-static {v5}, Lcom/google/android/gms/internal/auth/h0;->g(Ljava/lang/Class;)I

    .line 28
    invoke-static {v4}, Lcom/google/android/gms/internal/auth/h0;->f(Ljava/lang/Class;)I

    .line 29
    invoke-static {v4}, Lcom/google/android/gms/internal/auth/h0;->g(Ljava/lang/Class;)I

    .line 30
    invoke-static {v3}, Lcom/google/android/gms/internal/auth/h0;->f(Ljava/lang/Class;)I

    .line 31
    invoke-static {v3}, Lcom/google/android/gms/internal/auth/h0;->g(Ljava/lang/Class;)I

    .line 32
    invoke-static {v2}, Lcom/google/android/gms/internal/auth/h0;->f(Ljava/lang/Class;)I

    .line 33
    invoke-static {v2}, Lcom/google/android/gms/internal/auth/h0;->g(Ljava/lang/Class;)I

    .line 34
    invoke-static {v1}, Lcom/google/android/gms/internal/auth/h0;->f(Ljava/lang/Class;)I

    .line 35
    invoke-static {v1}, Lcom/google/android/gms/internal/auth/h0;->g(Ljava/lang/Class;)I

    .line 36
    invoke-static {v0}, Lcom/google/android/gms/internal/auth/h0;->f(Ljava/lang/Class;)I

    .line 37
    invoke-static {v0}, Lcom/google/android/gms/internal/auth/h0;->g(Ljava/lang/Class;)I

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/auth/h0;->h()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/auth/h0;->d:Lcom/google/android/gms/internal/auth/g0;

    if-eqz v1, :cond_6

    .line 39
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/auth/g0;->c(Ljava/lang/reflect/Field;)J

    .line 40
    :cond_6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v12, 0x0

    :goto_5
    sput-boolean v12, Lcom/google/android/gms/internal/auth/h0;->g:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/auth/d0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/d0;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static bridge synthetic b(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/auth/h0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.google.protobuf.UnsafeUtil"

    const-string v3, "logMissingMethod"

    .line 2
    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static c(Ljava/lang/Class;)Z
    .locals 10

    .line 1
    const-class v0, [B

    sget v1, Lcom/google/android/gms/internal/auth/m;->a:I

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/auth/h0;->b:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object p0, v4, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v7, "peekLong"

    .line 2
    invoke-virtual {v2, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/Class;

    aput-object p0, v7, v1

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v5, v7, v3

    const-string v8, "pokeLong"

    .line 3
    invoke-virtual {v2, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v4, [Ljava/lang/Class;

    aput-object p0, v7, v1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v5, v7, v3

    const-string v9, "pokeInt"

    .line 4
    invoke-virtual {v2, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object p0, v7, v1

    aput-object v5, v7, v6

    const-string v5, "peekInt"

    .line 5
    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const-string v7, "pokeByte"

    .line 6
    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Class;

    aput-object p0, v5, v1

    const-string v7, "peekByte"

    .line 7
    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x4

    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v1

    aput-object v0, v7, v6

    aput-object v8, v7, v3

    aput-object v8, v7, v4

    const-string v9, "pokeByteArray"

    .line 8
    invoke-virtual {v2, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Class;

    aput-object p0, v5, v1

    aput-object v0, v5, v6

    aput-object v8, v5, v3

    aput-object v8, v5, v4

    const-string p0, "peekByteArray"

    .line 9
    invoke-virtual {v2, p0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    return v1
.end method

.method static d()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/auth/h0;->f:Z

    return v0
.end method

.method static e()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/auth/h0;->e:Z

    return v0
.end method

.method private static f(Ljava/lang/Class;)I
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/auth/h0;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/auth/h0;->d:Lcom/google/android/gms/internal/auth/g0;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/auth/g0;->a(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static g(Ljava/lang/Class;)I
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/auth/h0;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/auth/h0;->d:Lcom/google/android/gms/internal/auth/g0;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/auth/g0;->b(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static h()Ljava/lang/reflect/Field;
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/auth/m;->a:I

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/auth/h0;->i(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_1

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/auth/h0;->i(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private static i(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
