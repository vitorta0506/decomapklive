.class final Lio/grpc/internal/y0$m;
.super Lio/grpc/ChannelLogger;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation


# instance fields
.field a:Lio/grpc/g0;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/ChannelLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/y0$m;->a:Lio/grpc/g0;

    invoke-static {v0, p1, p2}, Lio/grpc/internal/n;->d(Lio/grpc/g0;Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public varargs b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/y0$m;->a:Lio/grpc/g0;

    invoke-static {v0, p1, p2, p3}, Lio/grpc/internal/n;->e(Lio/grpc/g0;Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
