.class final Lio/grpc/netty/shaded/io/netty/util/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/util/o$a;
    }
.end annotation


# static fields
.field private static final a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/util/o;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/o;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/net/Inet4Address;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    :try_start_0
    const-string v1, "localhost"

    .line 2
    invoke-static {v1, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    nop

    :array_0
    .array-data 1
        0x7ft
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method static b()Ljava/net/Inet6Address;
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    :try_start_0
    const-string v1, "localhost"

    .line 2
    invoke-static {v1, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method static c(Ljava/net/Inet4Address;Ljava/net/Inet6Address;)Lio/grpc/netty/shaded/io/netty/util/o$a;
    .locals 8

    const-string v0, "Failed to find the loopback interface"

    const-string v1, "Using hard-coded IPv4 localhost address: {}"

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 5
    invoke-static {v4}, Lio/grpc/netty/shaded/io/netty/util/internal/a0;->b(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 7
    sget-object v4, Lio/grpc/netty/shaded/io/netty/util/o;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v5, "Failed to retrieve the list of available network interfaces"

    invoke-interface {v4, v5, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/net/NetworkInterface;

    .line 9
    invoke-static {v5}, Lio/grpc/netty/shaded/io/netty/util/internal/a0;->b(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 10
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 11
    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_4
    move-object v6, v5

    :goto_1
    if-nez v5, :cond_7

    .line 12
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 13
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 14
    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/util/internal/a0;->b(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v4

    .line 15
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v7, :cond_5

    .line 16
    :try_start_2
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v6, v2

    move-object v5, v3

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v5, v3

    goto :goto_3

    :cond_6
    :goto_2
    if-nez v5, :cond_7

    .line 17
    :try_start_3
    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/o;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    .line 18
    :goto_3
    sget-object v3, Lio/grpc/netty/shaded/io/netty/util/o;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v3, v0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    if-eqz v5, :cond_8

    .line 19
    sget-object p0, Lio/grpc/netty/shaded/io/netty/util/o;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 20
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x2

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "Loopback interface: {} ({}, {})"

    .line 21
    invoke-interface {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_8
    if-nez v6, :cond_c

    .line 22
    :try_start_4
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 23
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/o;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Using hard-coded IPv6 localhost address: {}"

    invoke-interface {v0, v2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :cond_9
    move-object p1, v6

    :goto_5
    if-nez p1, :cond_a

    goto :goto_6

    :cond_a
    move-object p0, p1

    goto :goto_8

    :catchall_0
    move-exception p1

    if-nez v6, :cond_b

    .line 24
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/o;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v0, v1, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    :cond_b
    throw p1

    :catch_3
    nop

    if-nez v6, :cond_c

    .line 26
    :goto_6
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/o;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {p1, v1, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_c
    :goto_7
    move-object p0, v6

    .line 27
    :goto_8
    new-instance p1, Lio/grpc/netty/shaded/io/netty/util/o$a;

    invoke-direct {p1, v5, p0}, Lio/grpc/netty/shaded/io/netty/util/o$a;-><init>(Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V

    return-object p1
.end method
