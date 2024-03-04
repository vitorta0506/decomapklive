.class public Lcom/google/auth/oauth2/AwsCredentials$c;
.super Lcom/google/auth/oauth2/ExternalAccountCredentials$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/AwsCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/auth/oauth2/AwsCredentials;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;-><init>(Lcom/google/auth/oauth2/ExternalAccountCredentials;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/auth/oauth2/OAuth2Credentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/AwsCredentials$c;->s()Lcom/google/auth/oauth2/AwsCredentials;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/AwsCredentials$c;->s()Lcom/google/auth/oauth2/AwsCredentials;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f()Lcom/google/auth/oauth2/ExternalAccountCredentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/AwsCredentials$c;->s()Lcom/google/auth/oauth2/AwsCredentials;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/google/auth/oauth2/AwsCredentials;
    .locals 1

    new-instance v0, Lcom/google/auth/oauth2/AwsCredentials;

    invoke-direct {v0, p0}, Lcom/google/auth/oauth2/AwsCredentials;-><init>(Lcom/google/auth/oauth2/AwsCredentials$c;)V

    return-object v0
.end method
