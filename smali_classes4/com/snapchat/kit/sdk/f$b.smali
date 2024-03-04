.class final Lcom/snapchat/kit/sdk/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/kit/sdk/f;->f(Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/kit/sdk/f;


# direct methods
.method constructor <init>(Lcom/snapchat/kit/sdk/f;)V
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/f$b;->a:Lcom/snapchat/kit/sdk/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    new-instance p1, Lcom/snapchat/kit/sdk/f$b$a;

    invoke-direct {p1, p0}, Lcom/snapchat/kit/sdk/f$b$a;-><init>(Lcom/snapchat/kit/sdk/f$b;)V

    invoke-static {p1}, Lcom/snapchat/kit/sdk/f;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/snapchat/kit/sdk/f$b;->a:Lcom/snapchat/kit/sdk/f;

    invoke-static {p1}, Lcom/snapchat/kit/sdk/f;->q(Lcom/snapchat/kit/sdk/f;)Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object p2

    const-class v0, Lcom/snapchat/kit/sdk/core/models/AuthToken;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/snapchat/kit/sdk/core/models/AuthToken;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->setLastUpdated(J)V

    .line 4
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->isComplete()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/snapchat/kit/sdk/f$b;->a:Lcom/snapchat/kit/sdk/f;

    invoke-static {p2}, Lcom/snapchat/kit/sdk/f;->s(Lcom/snapchat/kit/sdk/f;)Lcom/snapchat/kit/sdk/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/snapchat/kit/sdk/c;->a(Lcom/snapchat/kit/sdk/core/models/AuthToken;)V

    .line 6
    iget-object p1, p0, Lcom/snapchat/kit/sdk/f$b;->a:Lcom/snapchat/kit/sdk/f;

    invoke-static {p1}, Lcom/snapchat/kit/sdk/f;->u(Lcom/snapchat/kit/sdk/f;)Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;

    .line 7
    iget-object p1, p0, Lcom/snapchat/kit/sdk/f$b;->a:Lcom/snapchat/kit/sdk/f;

    invoke-static {p1}, Lcom/snapchat/kit/sdk/f;->a(Lcom/snapchat/kit/sdk/f;)Lcom/snapchat/kit/sdk/a/a;

    move-result-object p1

    sget-object p2, Lcom/snapchat/kit/sdk/a/a$a;->GRANT:Lcom/snapchat/kit/sdk/a/a$a;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/snapchat/kit/sdk/a/a;->b(Lcom/snapchat/kit/sdk/a/a$a;Z)V

    .line 8
    new-instance p1, Lcom/snapchat/kit/sdk/f$b$b;

    invoke-direct {p1, p0}, Lcom/snapchat/kit/sdk/f$b$b;-><init>(Lcom/snapchat/kit/sdk/f$b;)V

    invoke-static {p1}, Lcom/snapchat/kit/sdk/f;->j(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Lcom/snapchat/kit/sdk/f$b$c;

    invoke-direct {p1, p0}, Lcom/snapchat/kit/sdk/f$b$c;-><init>(Lcom/snapchat/kit/sdk/f$b;)V

    invoke-static {p1}, Lcom/snapchat/kit/sdk/f;->j(Ljava/lang/Runnable;)V

    return-void
.end method
