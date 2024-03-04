.class public Lvc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lpc/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lvc/c;->b()Lpc/a;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lvc/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lpc/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lpc/a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lpc/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lvc/a;->a:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "com.linecorp.linesdk.accesstoken."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lvc/a;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lvc/a;->c:Lpc/a;

    return-void
.end method

.method private b(Ljava/lang/String;)J
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    .line 1
    :cond_0
    iget-object v2, p0, Lvc/a;->c:Lpc/a;

    iget-object v3, p0, Lvc/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lpc/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lvc/a;->c:Lpc/a;

    iget-object v1, p0, Lvc/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lpc/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(J)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lvc/a;->c:Lpc/a;

    iget-object v1, p0, Lvc/a;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lpc/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lvc/a;->c:Lpc/a;

    iget-object v1, p0, Lvc/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lpc/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lvc/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lvc/a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public f()Lvc/d;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lvc/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lvc/a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    const-string v1, "accessToken"

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lvc/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "expiresIn"

    .line 4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lvc/a;->b(Ljava/lang/String;)J

    move-result-wide v5

    const-string v1, "issuedClientTime"

    .line 5
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lvc/a;->b(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Lcom/linecorp/android/security/encryption/EncryptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v9, -0x1

    cmp-long v1, v5, v9

    if-eqz v1, :cond_1

    cmp-long v1, v7, v9

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "refreshToken"

    .line 7
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lvc/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 8
    invoke-static {v0, v1}, Lyc/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 9
    new-instance v0, Lvc/d;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lvc/d;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {p0}, Lvc/a;->a()V

    .line 11
    throw v0
.end method

.method public g(Lvc/d;)V
    .locals 3
    .param p1    # Lvc/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lvc/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lvc/a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lvc/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lvc/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "accessToken"

    .line 4
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lvc/d;->b()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lvc/a;->d(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expiresIn"

    .line 6
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lvc/d;->c()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lvc/a;->d(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "issuedClientTime"

    .line 8
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lvc/d;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lvc/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "refreshToken"

    .line 10
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
