.class public Lcom/google/auth/oauth2/CloudShellCredentials$b;
.super Lcom/google/auth/oauth2/GoogleCredentials$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/CloudShellCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private d:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials$a;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/google/auth/oauth2/CloudShellCredentials;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials$a;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/auth/oauth2/CloudShellCredentials;->access$000(Lcom/google/auth/oauth2/CloudShellCredentials;)I

    move-result p1

    iput p1, p0, Lcom/google/auth/oauth2/CloudShellCredentials$b;->d:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/auth/oauth2/OAuth2Credentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/CloudShellCredentials$b;->f()Lcom/google/auth/oauth2/CloudShellCredentials;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/CloudShellCredentials$b;->f()Lcom/google/auth/oauth2/CloudShellCredentials;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/auth/oauth2/CloudShellCredentials;
    .locals 3

    new-instance v0, Lcom/google/auth/oauth2/CloudShellCredentials;

    iget v1, p0, Lcom/google/auth/oauth2/CloudShellCredentials$b;->d:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/auth/oauth2/CloudShellCredentials;-><init>(ILcom/google/auth/oauth2/CloudShellCredentials$a;)V

    return-object v0
.end method

.method public g(I)Lcom/google/auth/oauth2/CloudShellCredentials$b;
    .locals 0

    iput p1, p0, Lcom/google/auth/oauth2/CloudShellCredentials$b;->d:I

    return-object p0
.end method
