.class public Lcom/twitter/sdk/android/core/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twitter/sdk/android/core/internal/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/sdk/android/core/internal/h<",
        "Lcom/twitter/sdk/android/core/s;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/internal/k$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/core/internal/k$a;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/k$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/internal/k;-><init>(Lcom/twitter/sdk/android/core/internal/k$a;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/internal/k$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/k;->a:Lcom/twitter/sdk/android/core/internal/k$a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/sdk/android/core/j;)V
    .locals 0

    check-cast p1, Lcom/twitter/sdk/android/core/s;

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/k;->b(Lcom/twitter/sdk/android/core/s;)V

    return-void
.end method

.method public b(Lcom/twitter/sdk/android/core/s;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/k;->a:Lcom/twitter/sdk/android/core/internal/k$a;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/internal/k$a;->a(Lcom/twitter/sdk/android/core/s;)Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object p1

    .line 2
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1, v1}, Lcom/twitter/sdk/android/core/services/AccountService;->verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
