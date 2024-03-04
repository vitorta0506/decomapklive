.class public final Lxg/e;
.super Lio/grpc/ManagedChannelProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/ManagedChannelProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;I)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lxg/e;->f(Ljava/lang/String;I)Lxg/d;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/String;Lio/grpc/e;)Lio/grpc/ManagedChannelProvider$a;
    .locals 3

    .line 1
    invoke-static {p2}, Lxg/d;->J(Lio/grpc/e;)Lxg/d$g;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lxg/d$g;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lio/grpc/ManagedChannelProvider$a;->b(Ljava/lang/String;)Lio/grpc/ManagedChannelProvider$a;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v1, Lxg/d;

    iget-object v2, v0, Lxg/d$g;->b:Lio/grpc/b;

    iget-object v0, v0, Lxg/d$g;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v1, p1, p2, v2, v0}, Lxg/d;-><init>(Ljava/lang/String;Lio/grpc/e;Lio/grpc/b;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-static {v1}, Lio/grpc/ManagedChannelProvider$a;->a(Lio/grpc/r0;)Lio/grpc/ManagedChannelProvider$a;

    move-result-object p1

    return-object p1
.end method

.method public d()I
    .locals 1

    const-class v0, Lxg/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/j0;->a(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public f(Ljava/lang/String;I)Lxg/d;
    .locals 0

    invoke-static {p1, p2}, Lxg/d;->C(Ljava/lang/String;I)Lxg/d;

    move-result-object p1

    return-object p1
.end method
