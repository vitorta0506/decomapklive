.class final Lie/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lie/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lie/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lie/b;

.field final synthetic b:Lie/j;


# direct methods
.method constructor <init>(Lie/j;Lie/b;)V
    .locals 0

    iput-object p1, p0, Lie/j$a;->b:Lie/j;

    iput-object p2, p0, Lie/j$a;->a:Lie/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Lretrofit2/Call;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lie/j$a;->a:Lie/b;

    invoke-static {p2}, Lie/j;->e(Ljava/lang/Throwable;)Z

    move-result v1

    iget-object v2, p0, Lie/j$a;->b:Lie/j;

    .line 2
    invoke-static {v2, p1, p2}, Lie/j;->a(Lie/j;Lretrofit2/Call;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x198

    .line 3
    invoke-interface {v0, v1, p2, p1}, Lie/b;->a(ZILjava/lang/String;)V

    return-void
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .param p1    # Lretrofit2/Call;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lretrofit2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lie/j$a;->a:Lie/b;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lie/b;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lie/j$a;->a:Lie/b;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v2

    iget-object v3, p0, Lie/j$a;->b:Lie/j;

    .line 4
    invoke-static {v3, p1, p2}, Lie/j;->b(Lie/j;Lretrofit2/Call;Lretrofit2/Response;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-interface {v0, v1, v2, p1}, Lie/b;->a(ZILjava/lang/String;)V

    return-void
.end method
