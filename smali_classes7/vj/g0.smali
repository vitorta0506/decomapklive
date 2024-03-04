.class public final Lvj/g0;
.super Lvj/a;
.source "SourceFile"


# instance fields
.field private final b:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lvj/a;-><init>(Z)V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lvj/g0;->b:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public b()Lvj/h0;
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lvj/g0;->b:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lkk/a;->a([BI[BI)V

    new-instance v1, Lvj/h0;

    invoke-direct {v1, v0, v2}, Lvj/h0;-><init>([BI)V

    return-object v1
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lvj/g0;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method
