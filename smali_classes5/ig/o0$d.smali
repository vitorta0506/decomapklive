.class Lig/o0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lig/o0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Lqh/b;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lqh/c;->f()Lqh/b;

    move-result-object v0

    iput-object v0, p0, Lig/o0$d;->b:Lqh/b;

    .line 3
    iput-object p1, p0, Lig/o0$d;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final e(Lio/grpc/netty/shaded/io/netty/channel/e;)V
    .locals 0

    iget-object p1, p0, Lig/o0$d;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
