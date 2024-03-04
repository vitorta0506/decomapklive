.class public final Lvj/r;
.super Lvj/a;
.source "SourceFile"


# instance fields
.field private final b:[B

.field private c:Lvj/s;


# direct methods
.method public constructor <init>([BI)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lvj/a;-><init>(Z)V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lvj/r;->b:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public b()Lvj/s;
    .locals 4

    iget-object v0, p0, Lvj/r;->b:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lvj/r;->c:Lvj/s;

    if-nez v1, :cond_0

    const/16 v1, 0x20

    new-array v1, v1, [B

    iget-object v2, p0, Lvj/r;->b:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Llk/a;->h([BI[BI)V

    new-instance v2, Lvj/s;

    invoke-direct {v2, v1, v3}, Lvj/s;-><init>([BI)V

    iput-object v2, p0, Lvj/r;->c:Lvj/s;

    :cond_0
    iget-object v1, p0, Lvj/r;->c:Lvj/s;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lvj/r;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method
