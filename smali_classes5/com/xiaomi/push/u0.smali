.class public Lcom/xiaomi/push/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/nio/ByteBuffer;

.field private b:Ljava/nio/ByteBuffer;

.field private c:Ljava/util/zip/Adler32;

.field private d:Lcom/xiaomi/push/y0;

.field private e:Ljava/io/OutputStream;

.field private f:I

.field private g:I

.field private h:[B


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/xiaomi/push/y0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/u0;->a:Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/u0;->b:Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/u0;->c:Ljava/util/zip/Adler32;

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/xiaomi/push/u0;->e:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/xiaomi/push/u0;->d:Lcom/xiaomi/push/y0;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p2

    const v0, 0x36ee80

    div-int/2addr p2, v0

    iput p2, p0, Lcom/xiaomi/push/u0;->f:I

    invoke-virtual {p1}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result p1

    iput p1, p0, Lcom/xiaomi/push/u0;->g:I

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/r0;)I
    .locals 7

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->s()I

    move-result v0

    const v1, 0x8000

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blob size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " should be less than "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Drop blob chid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltf/c;->l(Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/u0;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    add-int/lit8 v1, v0, 0x8

    const/4 v3, 0x4

    add-int/2addr v1, v3

    iget-object v4, p0, Lcom/xiaomi/push/u0;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-gt v1, v4, :cond_1

    iget-object v4, p0, Lcom/xiaomi/push/u0;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    const/16 v5, 0x1000

    if-le v4, v5, :cond_2

    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/push/u0;->a:Ljava/nio/ByteBuffer;

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/push/u0;->a:Ljava/nio/ByteBuffer;

    const/16 v4, -0x3d02

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/xiaomi/push/u0;->a:Ljava/nio/ByteBuffer;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/xiaomi/push/u0;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/xiaomi/push/u0;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v4, p0, Lcom/xiaomi/push/u0;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4}, Lcom/xiaomi/push/r0;->e(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/push/u0;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CONN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/xiaomi/push/u0;->h:[B

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/xiaomi/push/u0;->d:Lcom/xiaomi/push/y0;

    invoke-virtual {v4}, Lcom/xiaomi/push/y0;->S()[B

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/push/u0;->h:[B

    :cond_3
    iget-object v4, p0, Lcom/xiaomi/push/u0;->h:[B

    iget-object v5, p0, Lcom/xiaomi/push/u0;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v1, v0}, Lcom/xiaomi/push/service/i0;->j([B[BZII)[B

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/push/u0;->c:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    iget-object v0, p0, Lcom/xiaomi/push/u0;->c:Ljava/util/zip/Adler32;

    iget-object v1, p0, Lcom/xiaomi/push/u0;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v4, p0, Lcom/xiaomi/push/u0;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/zip/Adler32;->update([BII)V

    iget-object v0, p0, Lcom/xiaomi/push/u0;->c:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lcom/xiaomi/push/u0;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/xiaomi/push/u0;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/xiaomi/push/u0;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v4, p0, Lcom/xiaomi/push/u0;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/xiaomi/push/u0;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/xiaomi/push/u0;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/xiaomi/push/u0;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lcom/xiaomi/push/u0;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Slim] Wrote {cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";chid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/push/r0;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";len="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltf/c;->t(Ljava/lang/String;)V

    return v0
.end method

.method public b()V
    .locals 8

    new-instance v0, Lcom/xiaomi/push/a0;

    invoke-direct {v0}, Lcom/xiaomi/push/a0;-><init>()V

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/a0;->k(I)Lcom/xiaomi/push/a0;

    invoke-static {}, Lcom/xiaomi/push/service/o0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/a0;->w(Ljava/lang/String;)Lcom/xiaomi/push/a0;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/a0;->q(I)Lcom/xiaomi/push/a0;

    iget-object v2, p0, Lcom/xiaomi/push/u0;->d:Lcom/xiaomi/push/y0;

    invoke-virtual {v2}, Lcom/xiaomi/push/c1;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/a0;->A(Ljava/lang/String;)Lcom/xiaomi/push/a0;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/a0;->v(I)Lcom/xiaomi/push/a0;

    iget-object v3, p0, Lcom/xiaomi/push/u0;->d:Lcom/xiaomi/push/y0;

    invoke-virtual {v3}, Lcom/xiaomi/push/c1;->b()Lcom/xiaomi/push/d1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/push/d1;->h()[B

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/xiaomi/push/x;->m([B)Lcom/xiaomi/push/x;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/push/a0;->l(Lcom/xiaomi/push/x;)Lcom/xiaomi/push/a0;

    :cond_0
    new-instance v3, Lcom/xiaomi/push/r0;

    invoke-direct {v3}, Lcom/xiaomi/push/r0;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/r0;->g(I)V

    const-string v4, "CONN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/push/r0;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    const-string v4, "xiaomi.com"

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/xiaomi/push/r0;->h(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/push/g2;->h()[B

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lcom/xiaomi/push/r0;->l([BLjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/push/u0;->a(Lcom/xiaomi/push/r0;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[slim] open conn: andver="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sdk="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/push/u0;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/push/u0;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltf/c;->l(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 3

    new-instance v0, Lcom/xiaomi/push/r0;

    invoke-direct {v0}, Lcom/xiaomi/push/r0;-><init>()V

    const-string v1, "CLOSE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/r0;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/u0;->a(Lcom/xiaomi/push/r0;)I

    iget-object v0, p0, Lcom/xiaomi/push/u0;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method
