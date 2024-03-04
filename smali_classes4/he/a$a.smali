.class final Lhe/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhe/a;->b(Ljava/util/List;Lde/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/snap/kit/sdk/model/MetricSampleRate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/a$a;

.field final synthetic b:Lhe/a;


# direct methods
.method constructor <init>(Lhe/a;Lde/a$a;)V
    .locals 0

    iput-object p1, p0, Lhe/a$a;->b:Lhe/a;

    iput-object p2, p0, Lhe/a$a;->a:Lde/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/snap/kit/sdk/model/MetricSampleRate;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lhe/a$a;->a:Lde/a$a;

    invoke-interface {p1}, Lde/a$a;->b()V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lhe/a$a;->a:Lde/a$a;

    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lde/a$a;->a(Ljava/lang/Error;)V

    return-void
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/snap/kit/sdk/model/MetricSampleRate;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/snap/kit/sdk/model/MetricSampleRate;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/snap/kit/sdk/model/MetricSampleRate;

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p1, Lcom/snap/kit/sdk/model/MetricSampleRate;->rate:Ljava/lang/Double;

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lhe/a$a;->b:Lhe/a;

    invoke-static {p2}, Lhe/a;->d(Lhe/a;)Lcom/snapchat/kit/sdk/core/config/f;

    move-result-object p2

    iget-object p1, p1, Lcom/snap/kit/sdk/model/MetricSampleRate;->rate:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/snapchat/kit/sdk/core/config/f;->c(D)V

    .line 5
    :cond_0
    iget-object p1, p0, Lhe/a$a;->a:Lde/a$a;

    invoke-interface {p1}, Lde/a$a;->onSuccess()V

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lhe/a$a;->a:Lde/a$a;

    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lde/a$a;->a(Ljava/lang/Error;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 7
    :catch_0
    iget-object p1, p0, Lhe/a$a;->a:Lde/a$a;

    new-instance p2, Ljava/lang/Error;

    const-string v0, "response unsuccessful"

    invoke-direct {p2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lde/a$a;->a(Ljava/lang/Error;)V

    return-void
.end method
