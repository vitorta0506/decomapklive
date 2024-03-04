.class Lm5/j$d$a;
.super Lio/grpc/z$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm5/j$d;->e(Lio/grpc/g$a;Lio/grpc/s0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/z$a<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lm5/j$d;


# direct methods
.method constructor <init>(Lm5/j$d;Lio/grpc/g$a;)V
    .locals 0

    iput-object p1, p0, Lm5/j$d$a;->b:Lm5/j$d;

    invoke-direct {p0, p2}, Lio/grpc/z$a;-><init>(Lio/grpc/g$a;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/Status;Lio/grpc/s0;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Lio/grpc/z$a;->a(Lio/grpc/Status;Lio/grpc/s0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object p1, p0, Lm5/j$d$a;->b:Lm5/j$d;

    iget-object p1, p1, Lm5/j$d;->b:Lm5/j$c;

    invoke-static {p1}, Lm5/j$c;->d(Lm5/j$c;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lm5/j$d$a;->b:Lm5/j$d;

    iget-object p2, p2, Lm5/j$d;->b:Lm5/j$c;

    invoke-static {p2}, Lm5/j$c;->d(Lm5/j$c;)V

    .line 3
    throw p1
.end method
