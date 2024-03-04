.class final Lde/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/p;->b(Ljava/util/List;Lde/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/a$a;

.field final synthetic b:Lde/p;


# direct methods
.method constructor <init>(Lde/p;Lde/a$a;)V
    .locals 0

    iput-object p1, p0, Lde/p$a;->b:Lde/p;

    iput-object p2, p0, Lde/p$a;->a:Lde/a$a;

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
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lde/p$a;->a:Lde/a$a;

    invoke-interface {p1}, Lde/a$a;->b()V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lde/p$a;->a:Lde/a$a;

    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lde/a$a;->a(Ljava/lang/Error;)V

    return-void
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lde/p$a;->a:Lde/a$a;

    invoke-interface {p1}, Lde/a$a;->onSuccess()V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object p1, p0, Lde/p$a;->a:Lde/a$a;

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

    .line 4
    :catch_0
    iget-object p1, p0, Lde/p$a;->a:Lde/a$a;

    new-instance p2, Ljava/lang/Error;

    const-string v0, "response unsuccessful"

    invoke-direct {p2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lde/a$a;->a(Ljava/lang/Error;)V

    return-void
.end method
