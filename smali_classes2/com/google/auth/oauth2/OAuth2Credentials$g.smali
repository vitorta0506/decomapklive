.class Lcom/google/auth/oauth2/OAuth2Credentials$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/OAuth2Credentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/x<",
        "Lcom/google/auth/oauth2/OAuth2Credentials$h;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/auth/a;


# direct methods
.method public constructor <init>(Lcom/google/auth/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials$g;->a:Lcom/google/auth/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/auth/oauth2/OAuth2Credentials$h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$g;->a:Lcom/google/auth/a;

    invoke-static {p1}, Lcom/google/auth/oauth2/OAuth2Credentials$h;->b(Lcom/google/auth/oauth2/OAuth2Credentials$h;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/auth/a;->a(Ljava/util/Map;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$g;->a:Lcom/google/auth/a;

    invoke-interface {v0, p1}, Lcom/google/auth/a;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/auth/oauth2/OAuth2Credentials$h;

    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/OAuth2Credentials$g;->a(Lcom/google/auth/oauth2/OAuth2Credentials$h;)V

    return-void
.end method
