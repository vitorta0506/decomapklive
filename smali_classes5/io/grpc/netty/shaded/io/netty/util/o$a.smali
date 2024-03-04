.class final Lio/grpc/netty/shaded/io/netty/util/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/util/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/net/NetworkInterface;

.field private final b:Ljava/net/InetAddress;


# direct methods
.method constructor <init>(Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/o$a;->a:Ljava/net/NetworkInterface;

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/util/o$a;->b:Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public a()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/o$a;->b:Ljava/net/InetAddress;

    return-object v0
.end method

.method public b()Ljava/net/NetworkInterface;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/o$a;->a:Ljava/net/NetworkInterface;

    return-object v0
.end method
