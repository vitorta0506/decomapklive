.class public Lcom/google/api/client/util/s;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/api/client/util/q;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    new-instance p1, Lcom/google/api/client/util/q;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/api/client/util/q;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    iput-object p1, p0, Lcom/google/api/client/util/s;->a:Lcom/google/api/client/util/q;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/api/client/util/q;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/util/s;->a:Lcom/google/api/client/util/q;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/client/util/s;->a:Lcom/google/api/client/util/q;

    invoke-virtual {v0}, Lcom/google/api/client/util/q;->close()V

    .line 2
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget-object v0, p0, Lcom/google/api/client/util/s;->a:Lcom/google/api/client/util/q;

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/q;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iget-object v0, p0, Lcom/google/api/client/util/s;->a:Lcom/google/api/client/util/q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/api/client/util/q;->write([BII)V

    return-void
.end method
