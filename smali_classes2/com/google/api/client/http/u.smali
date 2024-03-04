.class public abstract Lcom/google/api/client/http/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/api/client/util/d0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/api/client/http/u;->a:J

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b()Lcom/google/api/client/http/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/u;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/google/api/client/http/u;->a:J

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/google/api/client/util/d0;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/u;->d:Lcom/google/api/client/util/d0;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/client/http/u;->b:Ljava/lang/String;

    return-void
.end method

.method public final h(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-wide p1, p0, Lcom/google/api/client/http/u;->a:J

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/client/http/u;->c:Ljava/lang/String;

    return-void
.end method

.method public final j(Lcom/google/api/client/util/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/client/http/u;->d:Lcom/google/api/client/util/d0;

    return-void
.end method

.method public abstract k(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract l(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
