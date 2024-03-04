.class public abstract Lcom/google/api/client/http/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/f;


# instance fields
.field private a:Lcom/google/api/client/http/l;

.field private b:J


# direct methods
.method protected constructor <init>(Lcom/google/api/client/http/l;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/api/client/http/a;->b:J

    .line 4
    iput-object p1, p0, Lcom/google/api/client/http/a;->a:Lcom/google/api/client/http/l;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lcom/google/api/client/http/l;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/l;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/api/client/http/a;-><init>(Lcom/google/api/client/http/l;)V

    return-void
.end method

.method public static d(Lcom/google/api/client/http/f;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/api/client/http/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/google/api/client/util/n;->a(Lcom/google/api/client/util/d0;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/api/client/http/a;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/http/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/http/a;->b:J

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/http/a;->b:J

    return-wide v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/api/client/http/a;->d(Lcom/google/api/client/http/f;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final e()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/a;->a:Lcom/google/api/client/http/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/api/client/http/l;->d()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/a;->a:Lcom/google/api/client/http/l;

    .line 2
    invoke-virtual {v0}, Lcom/google/api/client/http/l;->d()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    :goto_1
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/http/a;->a:Lcom/google/api/client/http/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/api/client/http/l;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
