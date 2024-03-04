.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http/j$a;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final e:Lpg/g$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/g$d<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j$a$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j$a$a;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j$a;->e:Lpg/g$d;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j$a;->e:Lpg/g$d;

    goto :goto_0

    :cond_0
    sget-object v0, Lpg/g$d;->a:Lpg/g$d;

    :goto_0
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;-><init>(ZLpg/g$d;)V

    return-void
.end method
