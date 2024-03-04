.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljavax/net/ssl/SSLParameters;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/security/AlgorithmConstraints;

    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V

    return-void
.end method
