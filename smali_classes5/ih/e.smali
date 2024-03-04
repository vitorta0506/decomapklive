.class public abstract Lih/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih/b;


# instance fields
.field protected final a:Leh/b1;


# virtual methods
.method public a()Leh/e1;
    .locals 2

    .line 1
    iget-object v0, p0, Lih/e;->a:Leh/b1;

    instance-of v0, v0, Leh/e1;

    const-string v1, "expected DownstreamTlsContext"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lih/e;->a:Leh/b1;

    check-cast v0, Leh/e1;

    return-object v0
.end method

.method public c()Leh/i1;
    .locals 2

    .line 1
    iget-object v0, p0, Lih/e;->a:Leh/b1;

    instance-of v0, v0, Leh/i1;

    const-string v1, "expected UpstreamTlsContext"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lih/e;->a:Leh/b1;

    check-cast v0, Leh/i1;

    return-object v0
.end method
