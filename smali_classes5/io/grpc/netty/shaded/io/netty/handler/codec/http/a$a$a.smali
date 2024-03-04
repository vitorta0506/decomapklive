.class Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->s0()Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->a0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;)Lpg/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lpg/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->d(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
