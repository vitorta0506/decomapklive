.class final Lcom/snapchat/kit/sdk/core/config/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/config/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/snapchat/kit/sdk/core/config/e<",
        "Lcom/snapchat/kit/sdk/core/config/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/kit/sdk/core/config/f;


# direct methods
.method constructor <init>(Lcom/snapchat/kit/sdk/core/config/f;)V
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/config/f$c;->a:Lcom/snapchat/kit/sdk/core/config/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/snapchat/kit/sdk/core/config/e<",
            "Lcom/snapchat/kit/sdk/core/config/c;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/snapchat/kit/sdk/core/config/f$c;->a:Lcom/snapchat/kit/sdk/core/config/f;

    invoke-static {p1}, Lcom/snapchat/kit/sdk/core/config/f;->e(Lcom/snapchat/kit/sdk/core/config/f;)V

    return-void
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/snapchat/kit/sdk/core/config/e<",
            "Lcom/snapchat/kit/sdk/core/config/c;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/snapchat/kit/sdk/core/config/e<",
            "Lcom/snapchat/kit/sdk/core/config/c;",
            ">;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/snapchat/kit/sdk/core/config/f$c;->a:Lcom/snapchat/kit/sdk/core/config/f;

    invoke-static {p1}, Lcom/snapchat/kit/sdk/core/config/f;->e(Lcom/snapchat/kit/sdk/core/config/f;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/snapchat/kit/sdk/core/config/f$c;->a:Lcom/snapchat/kit/sdk/core/config/f;

    invoke-static {p1}, Lcom/snapchat/kit/sdk/core/config/f;->e(Lcom/snapchat/kit/sdk/core/config/f;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/snapchat/kit/sdk/core/config/e;

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/snapchat/kit/sdk/core/config/f$c;->a:Lcom/snapchat/kit/sdk/core/config/f;

    invoke-static {p1}, Lcom/snapchat/kit/sdk/core/config/f;->e(Lcom/snapchat/kit/sdk/core/config/f;)V

    return-void

    .line 6
    :cond_2
    invoke-static {p1}, Lcom/snapchat/kit/sdk/core/config/f;->a(Lcom/snapchat/kit/sdk/core/config/e;)Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/snapchat/kit/sdk/core/config/f$c;->a:Lcom/snapchat/kit/sdk/core/config/f;

    invoke-static {p1}, Lcom/snapchat/kit/sdk/core/config/f;->e(Lcom/snapchat/kit/sdk/core/config/f;)V

    return-void

    .line 8
    :cond_3
    iget-object p2, p0, Lcom/snapchat/kit/sdk/core/config/f$c;->a:Lcom/snapchat/kit/sdk/core/config/f;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/snapchat/kit/sdk/core/config/f;->f(Lcom/snapchat/kit/sdk/core/config/f;D)V

    return-void
.end method
