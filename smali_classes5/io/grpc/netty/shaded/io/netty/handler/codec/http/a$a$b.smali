.class Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->m0()Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$b;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$b;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->d(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
