.class final Lio/grpc/netty/shaded/io/netty/util/internal/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/util/internal/a0;->b(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/util/Enumeration<",
        "Ljava/net/InetAddress;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/net/NetworkInterface;


# direct methods
.method constructor <init>(Ljava/net/NetworkInterface;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a0$a;->a:Ljava/net/NetworkInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/a0$a;->a:Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/a0$a;->a()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
