.class public Lwc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwc/e$c;,
        Lwc/e$d;,
        Lwc/e$b;
    }
.end annotation


# static fields
.field private static final f:Lxc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc/c<",
            "Lvc/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lxc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc/c<",
            "Lvc/i;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lxc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc/c<",
            "*>;"
        }
    .end annotation
.end field

.field private static final i:Lxc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc/c<",
            "Lvc/h;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Lxc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc/c<",
            "Lvc/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lxc/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lxc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc/c<",
            "Lvc/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lwc/h;

.field private final e:Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lwc/e$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwc/e$d;-><init>(Lwc/e$a;)V

    sput-object v0, Lwc/e;->f:Lxc/c;

    .line 2
    new-instance v0, Lwc/e$c;

    invoke-direct {v0, v1}, Lwc/e$c;-><init>(Lwc/e$a;)V

    sput-object v0, Lwc/e;->g:Lxc/c;

    .line 3
    new-instance v0, Lwc/f;

    invoke-direct {v0}, Lwc/f;-><init>()V

    sput-object v0, Lwc/e;->h:Lxc/c;

    .line 4
    new-instance v0, Lwc/g;

    invoke-direct {v0}, Lwc/g;-><init>()V

    sput-object v0, Lwc/e;->i:Lxc/c;

    .line 5
    new-instance v0, Lwc/c;

    invoke-direct {v0}, Lwc/c;-><init>()V

    sput-object v0, Lwc/e;->j:Lxc/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lxc/a;

    const-string v1, "5.7.0"

    invoke-direct {v0, p1, v1}, Lxc/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, v0}, Lwc/e;-><init>(Landroid/net/Uri;Landroid/net/Uri;Lxc/a;)V

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Lxc/a;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lxc/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lwc/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lwc/e$b;-><init>(Lwc/e;Lwc/e$a;)V

    iput-object v0, p0, Lwc/e;->c:Lxc/c;

    .line 4
    new-instance v0, Lwc/h;

    invoke-direct {v0, p0}, Lwc/h;-><init>(Lwc/e;)V

    iput-object v0, p0, Lwc/e;->d:Lwc/h;

    .line 5
    iput-object p2, p0, Lwc/e;->a:Landroid/net/Uri;

    .line 6
    iput-object p3, p0, Lwc/e;->b:Lxc/a;

    .line 7
    iput-object p1, p0, Lwc/e;->e:Landroid/net/Uri;

    return-void
.end method

.method static synthetic a(Lwc/e;)Lwc/h;
    .locals 0

    iget-object p0, p0, Lwc/e;->d:Lwc/h;

    return-object p0
.end method


# virtual methods
.method public b()Lqc/c;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqc/c<",
            "Lvc/f;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lwc/e;->c()Lqc/c;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lqc/c;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lqc/c;->d()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lqc/c;->c()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v0

    .line 5
    invoke-static {v1, v0}, Lqc/c;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lqc/c;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lqc/c;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvc/h;

    .line 7
    invoke-virtual {v0}, Lvc/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lwc/e;->b:Lxc/a;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lwc/e;->j:Lxc/c;

    .line 11
    invoke-virtual {v1, v0, v2, v3, v4}, Lxc/a;->b(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lxc/c;)Lqc/c;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lqc/c;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJWKSet failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LineAuthApiClient"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public c()Lqc/c;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqc/c<",
            "Lvc/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwc/e;->e:Landroid/net/Uri;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lyc/f;->e(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lwc/e;->b:Lxc/a;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lwc/e;->i:Lxc/c;

    .line 5
    invoke-virtual {v1, v0, v2, v3, v4}, Lxc/a;->b(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lxc/c;)Lqc/c;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lqc/c;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOpenIdDiscoveryDocument failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LineAuthApiClient"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcom/linecorp/linesdk/internal/pkce/PKCECode;Ljava/lang/String;)Lqc/c;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/linecorp/linesdk/internal/pkce/PKCECode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/linecorp/linesdk/internal/pkce/PKCECode;",
            "Ljava/lang/String;",
            ")",
            "Lqc/c<",
            "Lvc/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwc/e;->a:Landroid/net/Uri;

    const-string v1, "oauth2/v2.1"

    const-string/jumbo v2, "token"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyc/f;->e(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "grant_type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "authorization_code"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "code"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 p2, 0x4

    const-string v2, "redirect_uri"

    aput-object v2, v1, p2

    const/4 p2, 0x5

    aput-object p4, v1, p2

    const/4 p2, 0x6

    const-string p4, "client_id"

    aput-object p4, v1, p2

    const/4 p2, 0x7

    aput-object p1, v1, p2

    const/16 p1, 0x8

    const-string p2, "code_verifier"

    aput-object p2, v1, p1

    .line 2
    invoke-virtual {p3}, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->d()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x9

    aput-object p1, v1, p2

    const/16 p1, 0xa

    const-string p2, "id_token_key_type"

    aput-object p2, v1, p1

    sget-object p1, Lcom/linecorp/linesdk/internal/IdTokenKeyType;->JWK:Lcom/linecorp/linesdk/internal/IdTokenKeyType;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xb

    aput-object p1, v1, p2

    const/16 p1, 0xc

    const-string p2, "client_version"

    aput-object p2, v1, p1

    const/16 p1, 0xd

    const-string p2, "LINE SDK Android v5.7.0"

    aput-object p2, v1, p1

    .line 4
    invoke-static {v1}, Lyc/f;->d([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lwc/e;->b:Lxc/a;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    iget-object p4, p0, Lwc/e;->c:Lxc/c;

    .line 7
    invoke-virtual {p2, v0, p3, p1, p4}, Lxc/a;->k(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lxc/c;)Lqc/c;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Lvc/d;)Lqc/c;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lvc/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lvc/d;",
            ")",
            "Lqc/c<",
            "Lvc/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwc/e;->a:Landroid/net/Uri;

    const-string v1, "oauth2/v2.1"

    const-string/jumbo v2, "token"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyc/f;->e(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "grant_type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "refresh_token"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    .line 2
    invoke-virtual {p2}, Lvc/d;->d()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 p2, 0x4

    const-string v2, "client_id"

    aput-object v2, v1, p2

    const/4 p2, 0x5

    aput-object p1, v1, p2

    .line 3
    invoke-static {v1}, Lyc/f;->d([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lwc/e;->b:Lxc/a;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lwc/e;->g:Lxc/c;

    .line 6
    invoke-virtual {p2, v0, v1, p1, v2}, Lxc/a;->k(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lxc/c;)Lqc/c;

    move-result-object p1

    return-object p1
.end method
