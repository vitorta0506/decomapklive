.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/SSLSessionBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final a:Ljavax/net/ssl/SSLSessionBindingListener;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/ssl/m;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/m;Ljavax/net/ssl/SSLSessionBindingListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/m$a;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/m$a;->a:Ljavax/net/ssl/SSLSessionBindingListener;

    return-void
.end method


# virtual methods
.method public valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/m$a;->a:Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/m$a;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/m;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSessionBindingEvent;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    return-void
.end method

.method public valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/m$a;->a:Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/m$a;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/m;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSessionBindingEvent;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    return-void
.end method
