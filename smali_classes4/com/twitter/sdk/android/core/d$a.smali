.class public Lcom/twitter/sdk/android/core/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwe/d<",
        "Lcom/twitter/sdk/android/core/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    new-instance v2, Lcom/twitter/sdk/android/core/AuthTokenAdapter;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/AuthTokenAdapter;-><init>()V

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/d$a;->a:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/d$a;->b(Ljava/lang/String;)Lcom/twitter/sdk/android/core/d;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/sdk/android/core/d;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/d$a;->a:Lcom/google/gson/Gson;

    const-class v1, Lcom/twitter/sdk/android/core/d;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to deserialize session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Twitter"

    .line 5
    invoke-interface {v0, v1, p1}, Lcom/twitter/sdk/android/core/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/twitter/sdk/android/core/d;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/j;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/d$a;->a:Lcom/google/gson/Gson;

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

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to serialize session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Twitter"

    .line 5
    invoke-interface {v0, v1, p1}, Lcom/twitter/sdk/android/core/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lcom/twitter/sdk/android/core/d;

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/d$a;->c(Lcom/twitter/sdk/android/core/d;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
