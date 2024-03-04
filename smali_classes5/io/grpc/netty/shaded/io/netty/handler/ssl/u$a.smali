.class public abstract Lio/grpc/netty/shaded/io/netty/handler/ssl/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLEngine;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;Z)Ljavax/net/ssl/SSLEngine;
    .locals 1

    sget-object v0, Lkg/k;->a:Lkg/k;

    invoke-virtual {p0, p1, v0, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/u$a;->b(Ljavax/net/ssl/SSLEngine;Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;Z)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    return-object p1
.end method

.method abstract b(Ljavax/net/ssl/SSLEngine;Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;Z)Ljavax/net/ssl/SSLEngine;
.end method
