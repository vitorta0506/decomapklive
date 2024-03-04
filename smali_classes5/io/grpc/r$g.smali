.class public abstract Lio/grpc/r$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/r;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Deprecated. Do not call."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract b()Lio/grpc/r;
.end method

.method public abstract c(Lio/grpc/r;Lio/grpc/r;)V
.end method

.method public d(Lio/grpc/r;)Lio/grpc/r;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/r$g;->b()Lio/grpc/r;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/r$g;->a(Lio/grpc/r;)V

    return-object v0
.end method
