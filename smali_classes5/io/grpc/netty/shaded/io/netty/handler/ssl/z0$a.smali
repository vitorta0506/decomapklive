.class Lio/grpc/netty/shaded/io/netty/handler/ssl/z0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->getIds()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0$a;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->a(Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;)Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0$a;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public hasMoreElements()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0$a;->a()[B

    move-result-object v0

    return-object v0
.end method
