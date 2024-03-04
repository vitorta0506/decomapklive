.class public Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private d:Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/linecorp/linesdk/ManifestParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/ManifestParser;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/linecorp/linesdk/ManifestParser;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/linecorp/linesdk/ManifestParser;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/linecorp/linesdk/ManifestParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;->a:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p3, p2}, Lcom/linecorp/linesdk/ManifestParser;->parse(Landroid/content/Context;)Lcom/linecorp/linesdk/api/LineEnvConfig;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 6
    new-instance p1, Lcom/linecorp/linesdk/api/LineDefaultEnvConfig;

    invoke-direct {p1}, Lcom/linecorp/linesdk/api/LineDefaultEnvConfig;-><init>()V

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/linecorp/linesdk/api/LineEnvConfig;->getOpenIdDiscoveryDocumentUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;->b:Landroid/net/Uri;

    .line 8
    invoke-virtual {p1}, Lcom/linecorp/linesdk/api/LineEnvConfig;->getApiServerBaseUri()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;->c:Landroid/net/Uri;

    .line 9
    invoke-virtual {p1}, Lcom/linecorp/linesdk/api/LineEnvConfig;->getWebLoginPageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;->d:Landroid/net/Uri;

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "channelId is empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;->b:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic c(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;->c:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic d(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;->d:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic e(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;->e:Z

    return p0
.end method

.method static synthetic f(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;->f:Z

    return p0
.end method


# virtual methods
.method public g()Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;-><init>(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$a;)V

    return-object v0
.end method

.method public h()Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$b;->e:Z

    return-object p0
.end method
