.class final Lig/h0$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lig/g0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sslContext"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    iput-object p1, p0, Lig/h0$m;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x1bb

    return v0
.end method

.method public b()Lig/g0;
    .locals 1

    iget-object v0, p0, Lig/h0$m;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    invoke-static {v0}, Lig/h0;->i(Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;)Lig/g0;

    move-result-object v0

    return-object v0
.end method
