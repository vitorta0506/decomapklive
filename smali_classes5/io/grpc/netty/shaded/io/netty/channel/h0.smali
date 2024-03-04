.class public final Lio/grpc/netty/shaded/io/netty/channel/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/r0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/channel/h0$b;
    }
.end annotation


# static fields
.field public static final b:Lio/grpc/netty/shaded/io/netty/channel/r0;


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/channel/r0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/h0;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/h0;-><init>(I)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/h0;->b:Lio/grpc/netty/shaded/io/netty/channel/r0;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknownSize"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/h0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/netty/shaded/io/netty/channel/h0$b;-><init>(ILio/grpc/netty/shaded/io/netty/channel/h0$a;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/h0;->a:Lio/grpc/netty/shaded/io/netty/channel/r0$a;

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/netty/shaded/io/netty/channel/r0$a;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/h0;->a:Lio/grpc/netty/shaded/io/netty/channel/r0$a;

    return-object v0
.end method
