.class public final Lig/x;
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

    invoke-virtual {p0, p1, p2}, Lig/x;->f(Ljava/lang/String;I)Lig/v;

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
    invoke-static {p2}, Lig/h0;->b(Lio/grpc/e;)Lig/h0$d;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lig/h0$d;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lio/grpc/ManagedChannelProvider$a;->b(Ljava/lang/String;)Lio/grpc/ManagedChannelProvider$a;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v1, Lig/v;

    iget-object v2, v0, Lig/h0$d;->b:Lio/grpc/b;

    iget-object v0, v0, Lig/h0$d;->a:Lig/g0$a;

    invoke-direct {v1, p1, p2, v2, v0}, Lig/v;-><init>(Ljava/lang/String;Lio/grpc/e;Lio/grpc/b;Lig/g0$a;)V

    invoke-static {v1}, Lio/grpc/ManagedChannelProvider$a;->a(Lio/grpc/r0;)Lio/grpc/ManagedChannelProvider$a;

    move-result-object p1

    return-object p1
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public f(Ljava/lang/String;I)Lig/v;
    .locals 0

    invoke-static {p1, p2}, Lig/v;->H(Ljava/lang/String;I)Lig/v;

    move-result-object p1

    return-object p1
.end method
