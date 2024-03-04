.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "org.bouncycastle.jsse.provider.BouncyCastleJsseProvider"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e;->a:Z

    return-void
.end method

.method static a()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e;->a:Z

    return v0
.end method

.method static b(Ljavax/net/ssl/SSLEngine;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "org.bouncycastle.jsse.provider"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
