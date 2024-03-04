.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

.field private final b:J

.field private final c:I

.field private final d:Z

.field private e:J

.field private f:Z

.field private g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;

.field private h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;


# direct methods
.method constructor <init>(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    .line 3
    iput-wide p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->b:J

    .line 4
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->c:I

    .line 5
    iput-boolean p5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->d:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->e:J

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->e:J

    .line 2
    iget-boolean v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->f:Z

    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->b:J

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->f:Z

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    if-eqz v0, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->d:Z

    if-eqz v0, :cond_2

    .line 5
    :try_start_0
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->c:I

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;

    invoke-static {v0, p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->a(ILjava/lang/CharSequence;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$b;
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    return-void

    .line 7
    :cond_2
    :goto_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    invoke-interface {v0, p1, p2}, Lpg/i;->Z0(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;

    :cond_3
    :goto_2
    return-void
.end method

.method public b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->c:I

    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->b:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->d(IJZ)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n$c;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 4
    :cond_1
    throw v0
.end method
