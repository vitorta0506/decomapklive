.class public abstract Lio/grpc/z$a;
.super Lio/grpc/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/z<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/g$a<",
            "TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lio/grpc/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g$a<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/z;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/z$a;->a:Lio/grpc/g$a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/grpc/Status;Lio/grpc/s0;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lio/grpc/z;->a(Lio/grpc/Status;Lio/grpc/s0;)V

    return-void
.end method

.method public bridge synthetic b(Lio/grpc/s0;)V
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/z;->b(Lio/grpc/s0;)V

    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    invoke-super {p0}, Lio/grpc/z;->d()V

    return-void
.end method

.method protected e()Lio/grpc/g$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/g$a<",
            "TRespT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/z$a;->a:Lio/grpc/g$a;

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lio/grpc/z;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
