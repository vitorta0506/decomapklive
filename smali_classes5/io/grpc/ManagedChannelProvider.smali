.class public abstract Lio/grpc/ManagedChannelProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ManagedChannelProvider$ProviderNotFoundException;,
        Lio/grpc/ManagedChannelProvider$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lio/grpc/ManagedChannelProvider;
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/ManagedChannelRegistry;->b()Lio/grpc/ManagedChannelRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelRegistry;->e()Lio/grpc/ManagedChannelProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lio/grpc/ManagedChannelProvider$ProviderNotFoundException;

    const-string v1, "No functional channel service provider found. Try adding a dependency on the grpc-okhttp, grpc-netty, or grpc-netty-shaded artifact"

    invoke-direct {v0, v1}, Lio/grpc/ManagedChannelProvider$ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;I)Lio/grpc/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/grpc/r0<",
            "*>;"
        }
    .end annotation
.end method

.method protected abstract b()Z
.end method

.method protected c(Ljava/lang/String;Lio/grpc/e;)Lio/grpc/ManagedChannelProvider$a;
    .locals 0

    const-string p1, "ChannelCredentials are unsupported"

    invoke-static {p1}, Lio/grpc/ManagedChannelProvider$a;->b(Ljava/lang/String;)Lio/grpc/ManagedChannelProvider$a;

    move-result-object p1

    return-object p1
.end method

.method protected abstract d()I
.end method
