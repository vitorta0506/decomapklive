.class Lcom/twitter/sdk/android/core/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwe/d<",
        "Lcom/twitter/sdk/android/core/s;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/Gson;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/s$a;->a:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/s$a;->b(Ljava/lang/String;)Lcom/twitter/sdk/android/core/s;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/sdk/android/core/s;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/s$a;->a:Lcom/google/gson/Gson;

    const-class v1, Lcom/twitter/sdk/android/core/s;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/s;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Twitter"

    invoke-interface {v0, v1, p1}, Lcom/twitter/sdk/android/core/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/twitter/sdk/android/core/s;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/j;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/s$a;->a:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Twitter"

    invoke-interface {v0, v1, p1}, Lcom/twitter/sdk/android/core/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lcom/twitter/sdk/android/core/s;

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/s$a;->c(Lcom/twitter/sdk/android/core/s;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
