.class Lcom/google/auth/oauth2/OAuth2Credentials$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/auth/oauth2/OAuth2Credentials;->getOrCreateRefreshTask()Lcom/google/auth/oauth2/OAuth2Credentials$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/e0;

.field final synthetic b:Lcom/google/auth/oauth2/OAuth2Credentials;


# direct methods
.method constructor <init>(Lcom/google/auth/oauth2/OAuth2Credentials;Lcom/google/common/util/concurrent/e0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials$b;->b:Lcom/google/auth/oauth2/OAuth2Credentials;

    iput-object p2, p0, Lcom/google/auth/oauth2/OAuth2Credentials$b;->a:Lcom/google/common/util/concurrent/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$b;->b:Lcom/google/auth/oauth2/OAuth2Credentials;

    iget-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials$b;->a:Lcom/google/common/util/concurrent/e0;

    invoke-static {v0, v1}, Lcom/google/auth/oauth2/OAuth2Credentials;->access$300(Lcom/google/auth/oauth2/OAuth2Credentials;Lcom/google/common/util/concurrent/d0;)V

    return-void
.end method
