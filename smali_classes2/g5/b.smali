.class public Lg5/b;
.super Lcom/google/api/client/util/GenericData;
.source "SourceFile"


# instance fields
.field private c:Lg5/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/api/client/util/GenericData;
    .locals 1

    invoke-virtual {p0}, Lg5/b;->f()Lg5/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lg5/b;->f()Lg5/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lg5/b;->g(Ljava/lang/String;Ljava/lang/Object;)Lg5/b;

    move-result-object p1

    return-object p1
.end method

.method public f()Lg5/b;
    .locals 1

    invoke-super {p0}, Lcom/google/api/client/util/GenericData;->a()Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lg5/b;

    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/Object;)Lg5/b;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    move-result-object p1

    check-cast p1, Lg5/b;

    return-object p1
.end method

.method public final h(Lg5/c;)V
    .locals 0

    iput-object p1, p0, Lg5/b;->c:Lg5/c;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg5/b;->c:Lg5/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lg5/c;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/google/api/client/util/GenericData;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg5/b;->c:Lg5/c;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0, p0}, Lg5/c;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/google/api/client/util/f0;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/google/api/client/util/GenericData;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
