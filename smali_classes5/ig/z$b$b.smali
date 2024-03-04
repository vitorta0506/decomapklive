.class Lig/z$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/z$b;->a(Lio/grpc/internal/q2;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lig/z$b;


# direct methods
.method constructor <init>(Lig/z$b;II)V
    .locals 0

    iput-object p1, p0, Lig/z$b$b;->c:Lig/z$b;

    iput p2, p0, Lig/z$b$b;->a:I

    iput p3, p0, Lig/z$b$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lug/q;->p0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lig/z$b$b;->c:Lig/z$b;

    iget-object p1, p1, Lig/z$b;->a:Lig/z;

    invoke-virtual {p1}, Lig/z;->I()Lig/z$c;

    move-result-object p1

    invoke-virtual {p1}, Lig/z$c;->Z()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lig/z$b$b;->c:Lig/z$b;

    iget-object p1, p1, Lig/z$b;->a:Lig/z;

    invoke-virtual {p1}, Lig/z;->I()Lig/z$c;

    move-result-object p1

    iget v0, p0, Lig/z$b$b;->a:I

    invoke-virtual {p1, v0}, Lio/grpc/internal/d$a;->r(I)V

    .line 3
    iget-object p1, p0, Lig/z$b$b;->c:Lig/z$b;

    iget-object p1, p1, Lig/z$b;->a:Lig/z;

    invoke-static {p1}, Lig/z;->H(Lig/z;)Lio/grpc/internal/p2;

    move-result-object p1

    iget v0, p0, Lig/z$b$b;->b:I

    invoke-virtual {p1, v0}, Lio/grpc/internal/p2;->e(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic e(Lug/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/i;

    invoke-virtual {p0, p1}, Lig/z$b$b;->a(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method
