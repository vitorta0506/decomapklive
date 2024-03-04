.class public final Lio/grpc/netty/shaded/io/netty/channel/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/q;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "defaultMaxMessagesPerRead"

    .line 3
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->l(ILjava/lang/String;)I

    .line 4
    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/channel/q;->a:Z

    .line 5
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/channel/q;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/q;->b:I

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/q;->a:Z

    return v0
.end method
