.class final Lkg/o$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field final a:Lkg/j;

.field final b:Lkg/j;

.field c:I

.field d:I

.field e:I

.field f:I

.field private g:Lkg/j;


# direct methods
.method constructor <init>(Lkg/j;ILkg/j;IIILkg/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkg/o$d;->a:Lkg/j;

    sub-int/2addr p2, p5

    .line 3
    iput p2, p0, Lkg/o$d;->c:I

    .line 4
    iput-object p3, p0, Lkg/o$d;->b:Lkg/j;

    sub-int/2addr p4, p5

    .line 5
    iput p4, p0, Lkg/o$d;->d:I

    .line 6
    iput p5, p0, Lkg/o$d;->e:I

    add-int/2addr p5, p6

    .line 7
    iput p5, p0, Lkg/o$d;->f:I

    .line 8
    iput-object p7, p0, Lkg/o$d;->g:Lkg/j;

    return-void
.end method

.method static synthetic a(Lkg/o$d;)Lkg/j;
    .locals 0

    iget-object p0, p0, Lkg/o$d;->g:Lkg/j;

    return-object p0
.end method

.method static synthetic b(Lkg/o$d;Lkg/j;)Lkg/j;
    .locals 0

    iput-object p1, p0, Lkg/o$d;->g:Lkg/j;

    return-object p1
.end method


# virtual methods
.method c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lkg/o$d;->g:Lkg/j;

    .line 2
    iget-object v0, p0, Lkg/o$d;->a:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-void
.end method

.method d(I)I
    .locals 1

    iget v0, p0, Lkg/o$d;->d:I

    add-int/2addr p1, v0

    return p1
.end method

.method e(II)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lkg/o$d;->a:Lkg/j;

    invoke-virtual {p0, p1}, Lkg/o$d;->i(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method f()I
    .locals 2

    iget v0, p0, Lkg/o$d;->f:I

    iget v1, p0, Lkg/o$d;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method g(I)V
    .locals 2

    .line 1
    iget v0, p0, Lkg/o$d;->e:I

    sub-int v0, p1, v0

    .line 2
    iget v1, p0, Lkg/o$d;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lkg/o$d;->f:I

    .line 3
    iget v1, p0, Lkg/o$d;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lkg/o$d;->c:I

    .line 4
    iget v1, p0, Lkg/o$d;->d:I

    sub-int/2addr v1, v0

    iput v1, p0, Lkg/o$d;->d:I

    .line 5
    iput p1, p0, Lkg/o$d;->e:I

    return-void
.end method

.method h()Lkg/j;
    .locals 3

    .line 1
    iget-object v0, p0, Lkg/o$d;->g:Lkg/j;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lkg/o$d;->a:Lkg/j;

    iget v1, p0, Lkg/o$d;->e:I

    invoke-virtual {p0, v1}, Lkg/o$d;->i(I)I

    move-result v1

    invoke-virtual {p0}, Lkg/o$d;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lkg/j;->n2(II)Lkg/j;

    move-result-object v0

    iput-object v0, p0, Lkg/o$d;->g:Lkg/j;

    :cond_0
    return-object v0
.end method

.method i(I)I
    .locals 1

    iget v0, p0, Lkg/o$d;->c:I

    add-int/2addr p1, v0

    return p1
.end method

.method j(Lkg/j;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkg/o$d;->b:Lkg/j;

    iget v1, p0, Lkg/o$d;->e:I

    invoke-virtual {p0, v1}, Lkg/o$d;->d(I)I

    move-result v1

    invoke-virtual {p0}, Lkg/o$d;->f()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lkg/j;->z2(Lkg/j;II)Lkg/j;

    .line 2
    invoke-virtual {p0}, Lkg/o$d;->c()V

    return-void
.end method
