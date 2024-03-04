.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

.field private final b:Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$b;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$b;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;

    return-void
.end method

.method private static b(B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "EC_EC"

    return-object p0

    :pswitch_1
    const-string p0, "EC_RSA"

    return-object p0

    :pswitch_2
    const-string p0, "EC"

    return-object p0

    :cond_0
    const-string p0, "DH_RSA"

    return-object p0

    :cond_1
    const-string p0, "RSA"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static c([B)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1;->X()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p0, v2

    .line 4
    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$b;->b(B)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a(J[B[[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$b;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

    invoke-interface {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;->c(J)Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$b;->c([B)Ljava/util/Set;

    move-result-object p2

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/String;

    .line 3
    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    if-nez p4, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    .line 4
    :cond_1
    array-length v0, p4

    new-array v0, v0, [Ljavax/security/auth/x500/X500Principal;

    .line 5
    :goto_0
    array-length v1, p4

    if-ge p3, v1, :cond_2

    .line 6
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    aget-object v2, p4, p3

    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    move-object p3, v0

    .line 7
    :goto_1
    iget-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$b;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;

    invoke-virtual {p4, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;->d(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;[Ljava/lang/String;[Ljavax/security/auth/x500/X500Principal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 8
    invoke-virtual {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->H(Ljava/lang/Throwable;)V

    .line 9
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_3

    .line 10
    check-cast p2, Ljava/lang/Exception;

    throw p2

    .line 11
    :cond_3
    new-instance p1, Ljavax/net/ssl/SSLException;

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
