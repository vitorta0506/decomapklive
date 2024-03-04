.class Lcom/google/auth/oauth2/ServiceAccountCredentials$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/auth/oauth2/ServiceAccountCredentials;->refreshAccessToken()Lcom/google/auth/oauth2/AccessToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/google/auth/oauth2/ServiceAccountCredentials;


# direct methods
.method constructor <init>(Lcom/google/auth/oauth2/ServiceAccountCredentials;)V
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$a;->c:Lcom/google/auth/oauth2/ServiceAccountCredentials;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/client/http/p;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/api/client/http/p;->f()I

    move-result p1

    .line 2
    sget-object v0, Lcom/google/auth/oauth2/n;->i:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
