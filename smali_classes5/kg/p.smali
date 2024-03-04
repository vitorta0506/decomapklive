.class public Lkg/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkg/l;


# instance fields
.field private final a:Lkg/j;


# direct methods
.method public constructor <init>(Lkg/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "data"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkg/j;

    iput-object p1, p0, Lkg/p;->a:Lkg/j;

    return-void
.end method


# virtual methods
.method public content()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/p;->a:Lkg/j;

    invoke-static {v0}, Lkg/n;->l(Lkg/j;)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public h()Lkg/l;
    .locals 1

    iget-object v0, p0, Lkg/p;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->T1()Lkg/j;

    return-object p0
.end method

.method public i(Ljava/lang/Object;)Lkg/l;
    .locals 1

    iget-object v0, p0, Lkg/p;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->r2(Ljava/lang/Object;)Lkg/j;

    return-object p0
.end method

.method public refCnt()I
    .locals 1

    iget-object v0, p0, Lkg/p;->a:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    iget-object v0, p0, Lkg/p;->a:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    move-result v0

    return v0
.end method
