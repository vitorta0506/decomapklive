.class Lcom/google/auth/oauth2/ExternalAccountCredentials$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/auth/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/auth/oauth2/ExternalAccountCredentials;->getRequestMetadata(Ljava/net/URI;Ljava/util/concurrent/Executor;Lcom/google/auth/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/auth/a;

.field final synthetic b:Lcom/google/auth/oauth2/ExternalAccountCredentials;


# direct methods
.method constructor <init>(Lcom/google/auth/oauth2/ExternalAccountCredentials;Lcom/google/auth/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$a;->b:Lcom/google/auth/oauth2/ExternalAccountCredentials;

    iput-object p2, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$a;->a:Lcom/google/auth/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$a;->b:Lcom/google/auth/oauth2/ExternalAccountCredentials;

    invoke-static {v0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->access$000(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/auth/oauth2/GoogleCredentials;->addQuotaProjectIdToRequestMetadata(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$a;->a:Lcom/google/auth/a;

    invoke-interface {v0, p1}, Lcom/google/auth/a;->a(Ljava/util/Map;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$a;->a:Lcom/google/auth/a;

    invoke-interface {v0, p1}, Lcom/google/auth/a;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method
