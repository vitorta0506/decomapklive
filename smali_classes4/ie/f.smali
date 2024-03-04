.class public final Lie/f;
.super Lie/h;
.source "SourceFile"


# instance fields
.field private final b:Lcom/snapchat/kit/sdk/f;

.field private final c:Lce/c;

.field private final d:Lcom/google/gson/Gson;


# direct methods
.method constructor <init>(Lcom/snapchat/kit/sdk/f;Lce/c;Ljava/lang/String;Lcom/google/gson/Gson;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lie/h;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lie/f;->b:Lcom/snapchat/kit/sdk/f;

    .line 3
    iput-object p2, p0, Lie/f;->c:Lce/c;

    .line 4
    iput-object p4, p0, Lie/f;->d:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method protected final b(Lokhttp3/Interceptor$Chain;)Lokhttp3/Request$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lie/f;->b:Lcom/snapchat/kit/sdk/f;

    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/f;->k()I

    .line 2
    invoke-virtual {p0}, Lie/h;->a()Lokhttp3/Headers$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lie/f;->b:Lcom/snapchat/kit/sdk/f;

    .line 3
    invoke-virtual {v2}, Lcom/snapchat/kit/sdk/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authorization"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    .line 5
    invoke-super {p0, p1}, Lie/h;->b(Lokhttp3/Interceptor$Chain;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    return-object p1
.end method

.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lie/h;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_5

    .line 4
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lie/f;->d:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v0

    const-class v3, Lcom/snapchat/kit/sdk/core/models/d;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/models/d;
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/models/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/models/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "invalid_token"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 8
    iget-object v0, p0, Lie/f;->b:Lcom/snapchat/kit/sdk/f;

    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/f;->p()I

    move-result v0

    .line 9
    sget-object v1, Lie/f$a;->a:[I

    sub-int/2addr v0, v2

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    iget-object v0, p0, Lie/f;->b:Lcom/snapchat/kit/sdk/f;

    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/f;->r()V

    .line 11
    iget-object v0, p0, Lie/f;->c:Lce/c;

    invoke-virtual {v0}, Lce/c;->i()V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/models/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 13
    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/models/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "force_logout"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lie/f;->b:Lcom/snapchat/kit/sdk/f;

    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/f;->r()V

    .line 15
    iget-object v0, p0, Lie/f;->c:Lce/c;

    invoke-virtual {v0}, Lce/c;->i()V

    :cond_5
    :goto_2
    return-object p1
.end method
