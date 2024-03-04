.class final Lig/n0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lio/grpc/netty/shaded/io/netty/channel/y;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lig/n0$c;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lig/n0$c;->b:Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void
.end method
