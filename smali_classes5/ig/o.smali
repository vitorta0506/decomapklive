.class public Lig/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lig/o$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

.field private static final d:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

.field private static final e:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lig/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lig/o;->a:Ljava/util/logging/Logger;

    const-string v0, "h2"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lig/o;->b:Ljava/util/List;

    .line 4
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->ALPN:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;->NO_ADVERTISE:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    sget-object v4, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->ACCEPT:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    invoke-direct {v1, v2, v3, v4, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/Iterable;)V

    sput-object v1, Lig/o;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    .line 5
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->NPN:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    invoke-direct {v1, v2, v3, v4, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/Iterable;)V

    sput-object v1, Lig/o;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    .line 6
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->NPN_AND_ALPN:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    invoke-direct {v1, v2, v3, v4, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/Iterable;)V

    sput-object v1, Lig/o;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;
    .locals 1

    invoke-static {}, Lig/o;->d()Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    move-result-object v0

    invoke-static {p0, v0}, Lig/o;->b(Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;
    .locals 2

    .line 1
    sget-object v0, Lig/o$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lig/o;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lig/o;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    .line 5
    :goto_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;->OPENSSL:Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    .line 6
    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->j(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    move-result-object p0

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w0;->a:Ljava/util/List;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/w1;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/w1;

    .line 7
    invoke-virtual {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->c(Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->a(Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    invoke-static {}, Lig/o;->e()Ljava/security/Provider;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    invoke-static {p0, p1}, Lig/o;->c(Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;Ljava/security/Provider;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    move-result-object p0

    return-object p0

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not find Jetty NPN/ALPN or Conscrypt as installed JDK providers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;Ljava/security/Provider;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SunJSSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lig/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lig/o;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-static {}, Lig/u;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lig/o;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {}, Lig/u;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Lig/o;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    goto :goto_1

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " selected, but Java 9+ and Jetty NPN/ALPN unavailable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IBMJSSE2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 11
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenJSSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {p1}, Lio/grpc/internal/w;->a(Ljava/security/Provider;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    sget-object v0, Lig/o;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    const-string v1, "TLSv1.2"

    .line 14
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->h([Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    goto :goto_1

    .line 15
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown provider; can\'t configure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_6
    :goto_0
    invoke-static {}, Lig/u;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    sget-object v0, Lig/o;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;

    .line 18
    :goto_1
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;->JDK:Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    .line 19
    invoke-virtual {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->j(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    move-result-object p0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w0;->a:Ljava/util/List;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/w1;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/w1;

    .line 20
    invoke-virtual {p0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->c(Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    move-result-object p0

    .line 21
    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->a(Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->i(Ljava/security/Provider;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    move-result-object p0

    return-object p0

    .line 23
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " selected, but Java 9+ ALPN unavailable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d()Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;
    .locals 4

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lig/o;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Selecting OPENSSL"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;->OPENSSL:Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lig/o;->e()Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v1, Lig/o;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Selecting JDK with provider {0}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;->JDK:Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    return-object v0

    .line 7
    :cond_1
    sget-object v0, Lig/o;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Java 9 ALPN API unavailable (this may be normal)"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 8
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 9
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->q()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "netty-tcnative unavailable (this may be normal)"

    .line 10
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    sget-object v2, Lig/o$b;->b:Ljava/lang/Throwable;

    const-string v3, "Conscrypt not found (this may be normal)"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 13
    invoke-static {}, Lig/u;->b()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "Jetty ALPN unavailable (this may be normal)"

    .line 14
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find TLS ALPN provider; no working netty-tcnative, Conscrypt, or Jetty NPN/ALPN available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static e()Ljava/security/Provider;
    .locals 6

    const-string v0, "SSLContext.TLS"

    .line 1
    invoke-static {v0}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SunJSSE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    invoke-static {}, Lig/u;->d()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    invoke-static {}, Lig/u;->e()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-static {}, Lig/u;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    return-object v3

    .line 6
    :cond_1
    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IBMJSSE2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 7
    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OpenJSSE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {v3}, Lio/grpc/internal/w;->a(Ljava/security/Provider;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v3

    .line 9
    :cond_3
    :goto_1
    invoke-static {}, Lig/u;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_5
    sget-object v0, Lig/o$b;->a:Ljava/security/Provider;

    if-eqz v0, :cond_6

    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public static f()Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;->d()Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    move-result-object v0

    invoke-static {v0}, Lig/o;->a(Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q1;

    move-result-object v0

    return-object v0
.end method
