.class public final Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/ChannelId;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MACHINE_ID:[B

.field private static final PROCESS_ID:I

.field private static final PROCESS_ID_LEN:I = 0x4

.field private static final RANDOM_LEN:I = 0x4

.field private static final SEQUENCE_LEN:I = 0x4

.field private static final TIMESTAMP_LEN:I = 0x8

.field private static final logger:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final nextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final serialVersionUID:J = 0x35e702b5ce50b54fL


# instance fields
.field private final data:[B

.field private final hashCode:I

.field private transient longValue:Ljava/lang/String;

.field private transient shortValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;

    .line 2
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->logger:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->nextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "io.grpc.netty.shaded.io.netty.processId"

    .line 4
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 5
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, -0x1

    :goto_0
    if-gez v2, :cond_0

    .line 6
    sget-object v2, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->logger:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v3, "-Dio.netty.processId: {} (malformed)"

    invoke-interface {v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->logger:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "-Dio.netty.processId: {} (user-set)"

    invoke-interface {v0, v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    if-gez v1, :cond_3

    .line 9
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->defaultProcessId()I

    move-result v1

    .line 10
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->logger:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "-Dio.netty.processId: {} (auto-detected)"

    invoke-interface {v0, v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    :cond_3
    sput v1, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->PROCESS_ID:I

    const/4 v0, 0x0

    const-string v1, "io.grpc.netty.shaded.io.netty.machineId"

    .line 13
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 14
    :try_start_1
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/n;->f(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 15
    sget-object v3, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->logger:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v4, "-Dio.netty.machineId: {} (malformed)"

    invoke-interface {v3, v4, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    if-eqz v0, :cond_4

    .line 16
    sget-object v2, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->logger:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v3, "-Dio.netty.machineId: {} (user-set)"

    invoke-interface {v2, v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    if-nez v0, :cond_5

    .line 17
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/n;->d()[B

    move-result-object v0

    .line 18
    sget-object v1, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->logger:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 19
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/n;->e([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-Dio.netty.machineId: {} (auto-detected)"

    invoke-interface {v1, v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    :cond_5
    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->MACHINE_ID:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->MACHINE_ID:[B

    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->data:[B

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    array-length v0, v0

    add-int/2addr v0, v3

    .line 5
    sget v2, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->PROCESS_ID:I

    invoke-direct {p0, v0, v2}, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->writeInt(II)I

    move-result v0

    .line 6
    sget-object v2, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->nextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->writeInt(II)I

    move-result v0

    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->writeLong(IJ)I

    move-result v0

    .line 8
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->Q0()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 9
    invoke-direct {p0, v0, v2}, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->writeInt(II)I

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->hashCode:I

    return-void
.end method

.method private appendHexDumpField(Ljava/lang/StringBuilder;II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->data:[B

    invoke-static {v0, p2, p3}, Lkg/n;->x([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr p2, p3

    return p2
.end method

.method private static defaultProcessId()I
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    const-class v2, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "java.lang.management.ManagementFactory"

    .line 2
    invoke-static {v3, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "java.lang.management.RuntimeMXBean"

    .line 3
    invoke-static {v4, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getRuntimeMXBean"

    .line 4
    sget-object v6, Lio/grpc/netty/shaded/io/netty/util/internal/h;->e:[Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 5
    sget-object v5, Lio/grpc/netty/shaded/io/netty/util/internal/h;->d:[Ljava/lang/Object;

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v7, "getName"

    .line 6
    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v3

    move-object v2, v1

    .line 8
    :goto_0
    sget-object v4, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->logger:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v5, "Could not invoke ManagementFactory.getRuntimeMXBean().getName(); Android?"

    invoke-interface {v4, v5, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_2
    const-string v3, "android.os.Process"

    .line 9
    invoke-static {v3, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "myPid"

    .line 10
    sget-object v3, Lio/grpc/netty/shaded/io/netty/util/internal/h;->e:[Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 11
    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/h;->d:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 12
    sget-object v1, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->logger:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Could not invoke Process.myPid(); not Android?"

    invoke-interface {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, ""

    :goto_1
    const/16 v0, 0x40

    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 15
    :cond_0
    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    const/4 v0, -0x1

    :goto_2
    if-gez v0, :cond_1

    .line 16
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->Q0()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 17
    sget-object v1, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->logger:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Failed to find the current process ID from \'{}\'; using a random value: {}"

    invoke-interface {v1, v4, v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return v0
.end method

.method public static newInstance()Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;-><init>()V

    return-object v0
.end method

.method private newLongValue()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->data:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    sget-object v1, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->MACHINE_ID:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->appendHexDumpField(Ljava/lang/StringBuilder;II)I

    move-result v1

    const/4 v3, 0x4

    .line 3
    invoke-direct {p0, v0, v1, v3}, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->appendHexDumpField(Ljava/lang/StringBuilder;II)I

    move-result v1

    .line 4
    invoke-direct {p0, v0, v1, v3}, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->appendHexDumpField(Ljava/lang/StringBuilder;II)I

    move-result v1

    const/16 v4, 0x8

    .line 5
    invoke-direct {p0, v0, v1, v4}, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->appendHexDumpField(Ljava/lang/StringBuilder;II)I

    move-result v1

    .line 6
    invoke-direct {p0, v0, v1, v3}, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->appendHexDumpField(Ljava/lang/StringBuilder;II)I

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeInt(II)I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->data:[B

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, p1

    add-int/lit8 p1, v1, 0x1

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    .line 2
    aput-byte v2, v0, v1

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    .line 3
    aput-byte v2, v0, p1

    add-int/lit8 p1, v1, 0x1

    int-to-byte p2, p2

    .line 4
    aput-byte p2, v0, v1

    return p1
.end method

.method private writeLong(IJ)I
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->data:[B

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x38

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, p1

    add-int/lit8 p1, v1, 0x1

    const/16 v2, 0x30

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 2
    aput-byte v2, v0, v1

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x28

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 3
    aput-byte v2, v0, p1

    add-int/lit8 p1, v1, 0x1

    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 4
    aput-byte v2, v0, v1

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x18

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 5
    aput-byte v2, v0, p1

    add-int/lit8 p1, v1, 0x1

    const/16 v2, 0x10

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 6
    aput-byte v2, v0, v1

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x8

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 7
    aput-byte v2, v0, p1

    add-int/lit8 p1, v1, 0x1

    long-to-int p3, p2

    int-to-byte p2, p3

    .line 8
    aput-byte p2, v0, v1

    return p1
.end method


# virtual methods
.method public asLongText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->longValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->newLongValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->longValue:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public asShortText()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->shortValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->data:[B

    array-length v1, v0

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    invoke-static {v0, v1, v2}, Lkg/n;->x([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->shortValue:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public compareTo(Lio/grpc/netty/shaded/io/netty/channel/ChannelId;)I
    .locals 6

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 2
    :cond_0
    instance-of v1, p1, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;

    if-eqz v1, :cond_3

    .line 3
    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->data:[B

    .line 4
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->data:[B

    array-length v1, v1

    .line 5
    array-length v2, p1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_2

    .line 7
    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->data:[B

    aget-byte v4, v4, v0

    .line 8
    aget-byte v5, p1, v0

    if-eq v4, v5, :cond_1

    and-int/lit16 p1, v4, 0xff

    and-int/lit16 v0, v5, 0xff

    sub-int/2addr p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v1, v2

    return v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->asLongText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/ChannelId;->asLongText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/ChannelId;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->compareTo(Lio/grpc/netty/shaded/io/netty/channel/ChannelId;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;

    .line 3
    iget v1, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->hashCode:I

    iget v3, p1, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->hashCode:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->data:[B

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->data:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->asShortText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
