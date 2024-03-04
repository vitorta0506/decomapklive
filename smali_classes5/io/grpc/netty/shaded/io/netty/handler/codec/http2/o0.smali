.class public interface abstract Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$c;
    }
.end annotation


# static fields
.field public static final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;

.field public static final b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$a;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$b;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$b;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;

    return-void
.end method


# virtual methods
.method public abstract c(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Lkg/j;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation
.end method

.method public abstract configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$c;
.end method
