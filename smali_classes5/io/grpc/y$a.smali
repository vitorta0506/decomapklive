.class public abstract Lio/grpc/y$a;
.super Lio/grpc/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/y<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lio/grpc/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/y;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/y$a;->a:Lio/grpc/g;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lio/grpc/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lio/grpc/y;->b()V

    return-void
.end method

.method public bridge synthetic c(I)V
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/y;->c(I)V

    return-void
.end method

.method protected f()Lio/grpc/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/y$a;->a:Lio/grpc/g;

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lio/grpc/y;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
