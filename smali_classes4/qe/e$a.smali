.class Lqe/e$a;
.super Lokio/ForwardingSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqe/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lqe/e;


# direct methods
.method public constructor <init>(Lqe/e;Lokio/Source;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqe/e$a;->a:Lqe/e;

    .line 2
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqe/e$a;->a:Lqe/e;

    invoke-static {v0}, Lqe/e;->a(Lqe/e;)Lqe/o;

    move-result-object v0

    iget-object v1, p0, Lqe/e$a;->a:Lqe/e;

    invoke-virtual {v0, v1}, Lqe/o;->r(Lcom/squareup/okhttp/internal/http/HttpStream;)V

    .line 2
    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    return-void
.end method
