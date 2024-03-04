.class public final Lcom/google/api/client/http/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/api/client/http/s;

.field private final b:Lcom/google/api/client/http/o;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/s;Lcom/google/api/client/http/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/api/client/http/n;->a:Lcom/google/api/client/http/s;

    .line 3
    iput-object p2, p0, Lcom/google/api/client/http/n;->b:Lcom/google/api/client/http/o;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/client/http/d;)Lcom/google/api/client/http/m;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/api/client/http/n;->c(Ljava/lang/String;Lcom/google/api/client/http/d;Lcom/google/api/client/http/f;)Lcom/google/api/client/http/m;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/api/client/http/d;Lcom/google/api/client/http/f;)Lcom/google/api/client/http/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "POST"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/api/client/http/n;->c(Ljava/lang/String;Lcom/google/api/client/http/d;Lcom/google/api/client/http/f;)Lcom/google/api/client/http/m;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lcom/google/api/client/http/d;Lcom/google/api/client/http/f;)Lcom/google/api/client/http/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/n;->a:Lcom/google/api/client/http/s;

    invoke-virtual {v0}, Lcom/google/api/client/http/s;->a()Lcom/google/api/client/http/m;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/api/client/http/m;->v(Lcom/google/api/client/http/d;)Lcom/google/api/client/http/m;

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/google/api/client/http/n;->b:Lcom/google/api/client/http/o;

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2, v0}, Lcom/google/api/client/http/o;->b(Lcom/google/api/client/http/m;)V

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/api/client/http/m;->s(Ljava/lang/String;)Lcom/google/api/client/http/m;

    if-eqz p3, :cond_2

    .line 6
    invoke-virtual {v0, p3}, Lcom/google/api/client/http/m;->o(Lcom/google/api/client/http/f;)Lcom/google/api/client/http/m;

    :cond_2
    return-object v0
.end method
