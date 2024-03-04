.class public abstract Lcom/xiaomi/push/g2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Lcom/xiaomi/push/l0;)Lcom/xiaomi/push/g2;
.end method

.method public c([B)Lcom/xiaomi/push/g2;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaomi/push/g2;->d([BII)Lcom/xiaomi/push/g2;

    move-result-object p1

    return-object p1
.end method

.method public d([BII)Lcom/xiaomi/push/g2;
    .locals 0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/xiaomi/push/l0;->g([BII)Lcom/xiaomi/push/l0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/g2;->b(Lcom/xiaomi/push/l0;)Lcom/xiaomi/push/g2;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaomi/push/l0;->j(I)V
    :try_end_0
    .catch Lcom/xiaomi/push/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    throw p1
.end method

.method public abstract e(Lcom/xiaomi/push/c;)V
.end method

.method public f([BII)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/xiaomi/push/c;->p([BII)Lcom/xiaomi/push/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/g2;->e(Lcom/xiaomi/push/c;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/c;->J()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected g(Lcom/xiaomi/push/l0;I)Z
    .locals 0

    invoke-virtual {p1, p2}, Lcom/xiaomi/push/l0;->m(I)Z

    move-result p1

    return p1
.end method

.method public h()[B
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/push/g2;->i()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/xiaomi/push/g2;->f([BII)V

    return-object v1
.end method

.method public abstract i()I
.end method
