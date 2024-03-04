.class final Lkg/v$c;
.super Lkg/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkg/v<",
        "[B>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lkg/d0;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lkg/v;-><init>(Lkg/d0;IIII)V

    return-void
.end method

.method private static L(I)[B
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->j(I)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected A(I)Lkg/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkg/c0<",
            "[B>;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lkg/v;->G:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lkg/k0;->R3(I)Lkg/k0;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lkg/h0;->P3(I)Lkg/h0;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected B(IIII)Lkg/w;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lkg/w<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v8, Lkg/w;

    .line 2
    invoke-static {p4}, Lkg/v$c;->L(I)[B

    move-result-object v3

    const/4 v2, 0x0

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move v5, p3

    move v6, p4

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lkg/w;-><init>(Lkg/v;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    return-object v8
.end method

.method protected E(I)Lkg/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkg/w<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Lkg/w;

    invoke-static {p1}, Lkg/v$c;->L(I)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lkg/w;-><init>(Lkg/v;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method

.method protected K([BILkg/c0;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lkg/c0<",
            "[B>;I)V"
        }
    .end annotation

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object v0, p3, Lkg/c0;->q:Ljava/lang/Object;

    iget p3, p3, Lkg/c0;->r:I

    invoke-static {p1, p2, v0, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected r(Lkg/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "[B>;)V"
        }
    .end annotation

    return-void
.end method

.method y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic z(Ljava/lang/Object;ILkg/c0;I)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lkg/v$c;->K([BILkg/c0;I)V

    return-void
.end method
