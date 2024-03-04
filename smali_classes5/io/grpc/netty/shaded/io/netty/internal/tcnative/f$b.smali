.class Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$b;->b:Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$b;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$b;->b:Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;

    invoke-static {p1, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;->b(Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;I)I

    .line 2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$b;->b:Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;->c(Lio/grpc/netty/shaded/io/netty/internal/tcnative/f;Z)Z

    .line 3
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/f$b;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
