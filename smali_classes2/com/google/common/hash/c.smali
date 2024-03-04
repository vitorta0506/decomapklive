.class abstract Lcom/google/common/hash/c;
.super Lcom/google/common/hash/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private final b:I

.field private final c:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1}, Lcom/google/common/hash/c;-><init>(II)V

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/common/hash/b;-><init>()V

    .line 3
    rem-int v0, p2, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    add-int/lit8 v0, p2, 0x7

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    .line 5
    iput p2, p0, Lcom/google/common/hash/c;->b:I

    .line 6
    iput p1, p0, Lcom/google/common/hash/c;->c:I

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/hash/l;->a(Ljava/nio/Buffer;)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/c;->c:I

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/common/hash/c;->e(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/common/hash/h;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/c;->d()V

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/hash/l;->a(Ljava/nio/Buffer;)V

    .line 3
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/common/hash/c;->f(Ljava/nio/ByteBuffer;)V

    .line 5
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/hash/l;->b(Ljava/nio/Buffer;I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/hash/c;->c()Lcom/google/common/hash/h;

    move-result-object v0

    return-object v0
.end method

.method protected abstract c()Lcom/google/common/hash/h;
.end method

.method protected abstract e(Ljava/nio/ByteBuffer;)V
.end method

.method protected abstract f(Ljava/nio/ByteBuffer;)V
.end method
