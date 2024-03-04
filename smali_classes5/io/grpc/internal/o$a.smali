.class Lio/grpc/internal/o$a;
.super Ljava/util/ArrayDeque;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/o;-><init>(Lio/grpc/g0;IJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayDeque<",
        "Lio/grpc/InternalChannelz$ChannelTrace$Event;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lio/grpc/internal/o;


# direct methods
.method constructor <init>(Lio/grpc/internal/o;I)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/o$a;->b:Lio/grpc/internal/o;

    iput p2, p0, Lio/grpc/internal/o$a;->a:I

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/grpc/InternalChannelz$ChannelTrace$Event;

    invoke-virtual {p0, p1}, Lio/grpc/internal/o$a;->d(Lio/grpc/InternalChannelz$ChannelTrace$Event;)Z

    move-result p1

    return p1
.end method

.method public d(Lio/grpc/InternalChannelz$ChannelTrace$Event;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lio/grpc/internal/o$a;->a:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/o$a;->b:Lio/grpc/internal/o;

    invoke-static {v0}, Lio/grpc/internal/o;->a(Lio/grpc/internal/o;)I

    .line 4
    invoke-super {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
