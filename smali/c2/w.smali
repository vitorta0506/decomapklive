.class public Lc2/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/m;


# instance fields
.field private final a:Lc2/m;


# direct methods
.method public constructor <init>(Lc2/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc2/w;->a:Lc2/m;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lc2/w;->a:Lc2/m;

    invoke-interface {v0}, Lc2/m;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public d([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc2/w;->a:Lc2/m;

    invoke-interface {v0, p1, p2, p3, p4}, Lc2/m;->d([BIIZ)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lc2/w;->a:Lc2/m;

    invoke-interface {v0}, Lc2/m;->f()V

    return-void
.end method

.method public g([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc2/w;->a:Lc2/m;

    invoke-interface {v0, p1, p2, p3, p4}, Lc2/m;->g([BIIZ)Z

    move-result p1

    return p1
.end method

.method public getPosition()J
    .locals 2

    iget-object v0, p0, Lc2/w;->a:Lc2/m;

    invoke-interface {v0}, Lc2/m;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-object v0, p0, Lc2/w;->a:Lc2/m;

    invoke-interface {v0}, Lc2/m;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public i(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc2/w;->a:Lc2/m;

    invoke-interface {v0, p1}, Lc2/m;->i(I)V

    return-void
.end method

.method public j([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc2/w;->a:Lc2/m;

    invoke-interface {v0, p1, p2, p3}, Lc2/m;->j([BII)I

    move-result p1

    return p1
.end method

.method public k(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc2/w;->a:Lc2/m;

    invoke-interface {v0, p1}, Lc2/m;->k(I)V

    return-void
.end method

.method public l(IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc2/w;->a:Lc2/m;

    invoke-interface {v0, p1, p2}, Lc2/m;->l(IZ)Z

    move-result p1

    return p1
.end method

.method public m([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc2/w;->a:Lc2/m;

    invoke-interface {v0, p1, p2, p3}, Lc2/m;->m([BII)V

    return-void
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc2/w;->a:Lc2/m;

    invoke-interface {v0, p1, p2, p3}, Lc2/m;->read([BII)I

    move-result p1

    return p1
.end method

.method public readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc2/w;->a:Lc2/m;

    invoke-interface {v0, p1, p2, p3}, Lc2/m;->readFully([BII)V

    return-void
.end method

.method public skip(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc2/w;->a:Lc2/m;

    invoke-interface {v0, p1}, Lc2/m;->skip(I)I

    move-result p1

    return p1
.end method
