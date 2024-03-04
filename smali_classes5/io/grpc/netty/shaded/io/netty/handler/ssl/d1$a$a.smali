.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a$a;
    }
.end annotation


# instance fields
.field private final a:Ljavax/net/ssl/X509KeyManager;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/X509KeyManager;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;->a:Ljavax/net/ssl/X509KeyManager;

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;->c:Ljava/lang/Iterable;

    return-void
.end method

.method static synthetic a(Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;)Ljavax/net/ssl/X509KeyManager;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;->a:Ljavax/net/ssl/X509KeyManager;

    return-object p0
.end method


# virtual methods
.method b()Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;
    .locals 4

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a$a;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;->a:Ljavax/net/ssl/X509KeyManager;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a;->c:Ljava/lang/Iterable;

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1$a$a$a;-><init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;Ljava/lang/Iterable;)V

    return-object v0
.end method
