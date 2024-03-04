.class final Lio/grpc/netty/shaded/io/netty/channel/h0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/r0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/h0$b;->a:I

    return-void
.end method

.method synthetic constructor <init>(ILio/grpc/netty/shaded/io/netty/channel/h0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/h0$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public size(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lkg/j;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lkg/j;

    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result p1

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Lkg/l;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lkg/l;

    invoke-interface {p1}, Lkg/l;->content()Lkg/j;

    move-result-object p1

    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result p1

    return p1

    .line 5
    :cond_1
    instance-of p1, p1, Lio/grpc/netty/shaded/io/netty/channel/p0;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_2
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/channel/h0$b;->a:I

    return p1
.end method
