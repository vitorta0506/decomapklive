.class public final Lio/grpc/netty/shaded/io/netty/util/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/util/internal/n;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/n;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()[B
    .locals 9

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/h;->b:[B

    .line 2
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/n;->a:Ljava/net/Inet4Address;

    .line 3
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 7
    invoke-static {v4}, Lio/grpc/netty/shaded/io/netty/util/internal/a0;->b(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v5

    .line 8
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 10
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_0

    .line 11
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 12
    sget-object v4, Lio/grpc/netty/shaded/io/netty/util/internal/n;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v5, "Failed to retrieve the list of available network interfaces"

    invoke-interface {v4, v5, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 15
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 16
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->isVirtual()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    :try_start_1
    invoke-static {v5}, Lio/grpc/netty/shaded/io/netty/util/internal/a0;->g(Ljava/net/NetworkInterface;)[B

    move-result-object v5
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    invoke-static {v0, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/n;->c([B[B)I

    move-result v6

    const/4 v7, 0x1

    if-gez v6, :cond_4

    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    if-nez v6, :cond_6

    .line 19
    invoke-static {v1, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/n;->b(Ljava/net/InetAddress;Ljava/net/InetAddress;)I

    move-result v6

    if-gez v6, :cond_5

    goto :goto_2

    :cond_5
    if-nez v6, :cond_6

    .line 20
    array-length v6, v0

    array-length v8, v5

    if-ge v6, v8, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    if-eqz v4, :cond_2

    move-object v1, v3

    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception v3

    .line 21
    sget-object v4, Lio/grpc/netty/shaded/io/netty/util/internal/n;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v6, "Failed to get the hardware address of a network interface: {}"

    invoke-interface {v4, v6, v5, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 22
    :cond_7
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/h;->b:[B

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 23
    :cond_8
    array-length v1, v0

    const/4 v2, 0x6

    const/16 v3, 0x8

    if-eq v1, v2, :cond_9

    .line 24
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_4

    :cond_9
    new-array v1, v3, [B

    const/4 v2, 0x3

    .line 25
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    const/4 v3, 0x4

    const/4 v4, -0x2

    aput-byte v4, v1, v3

    const/4 v3, 0x5

    .line 26
    invoke-static {v0, v2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :goto_4
    return-object v0
.end method

.method private static b(Ljava/net/InetAddress;Ljava/net/InetAddress;)I
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/n;->g(Ljava/net/InetAddress;)I

    move-result p0

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/n;->g(Ljava/net/InetAddress;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method static c([B[B)I
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    .line 1
    array-length v1, p1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-byte v4, p1, v3

    if-eqz v4, :cond_1

    if-eq v4, v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    return v0

    .line 3
    :cond_3
    aget-byte v1, p1, v2

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    return v0

    .line 4
    :cond_4
    aget-byte p1, p1, v2

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6

    .line 5
    array-length p1, p0

    if-eqz p1, :cond_5

    aget-byte p0, p0, v2

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_5

    return v2

    :cond_5
    const/4 p0, -0x1

    return p0

    .line 6
    :cond_6
    array-length p1, p0

    if-eqz p1, :cond_7

    aget-byte p0, p0, v2

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_7

    return v0

    :cond_7
    return v2

    :cond_8
    :goto_2
    return v0
.end method

.method public static d()[B
    .locals 4

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/n;->a()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->Q0()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 3
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/n;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 4
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/n;->e([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to find a usable hardware address from the network interfaces; using random bytes: {}"

    .line 5
    invoke-interface {v1, v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static e([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_0

    aget-byte v5, p0, v3

    new-array v4, v4, [Ljava/lang/Object;

    and-int/lit16 v5, v5, 0xff

    .line 3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%02x:"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v0, v2, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)[B
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/n;->h(C)V

    const/16 v1, 0x8

    new-array v1, v1, [B

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "value is not supported [MAC-48, EUI-48, EUI-64]"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 6
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/n;->h(C)V

    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 7
    :goto_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    add-int/lit8 v5, v4, 0x2

    .line 8
    invoke-static {p0, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->b(Ljava/lang/CharSequence;I)B

    move-result v6

    aput-byte v6, v1, v3

    .line 9
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x3

    goto :goto_1

    .line 10
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected separator \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " but got \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' at index: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_3
    invoke-static {p0, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->b(Ljava/lang/CharSequence;I)B

    move-result p0

    aput-byte p0, v1, v2

    return-object v1
.end method

.method private static g(Ljava/net/InetAddress;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 4
    :cond_2
    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static h(C)V
    .locals 3

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported separator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " (expected: [:-])"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
