.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$d;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final q0:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;Ljavax/net/ssl/X509TrustManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;)V

    .line 2
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$d;->q0:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method