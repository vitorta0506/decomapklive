.class public Lcom/twitter/sdk/android/core/identity/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/identity/h$b;,
        Lcom/twitter/sdk/android/core/identity/h$a;
    }
.end annotation


# instance fields
.field final a:Lcom/twitter/sdk/android/core/q;

.field final b:Lcom/twitter/sdk/android/core/identity/b;

.field final c:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/q;->k()Lcom/twitter/sdk/android/core/q;

    move-result-object v0

    invoke-static {}, Lcom/twitter/sdk/android/core/q;->k()Lcom/twitter/sdk/android/core/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/q;->g()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/twitter/sdk/android/core/q;->k()Lcom/twitter/sdk/android/core/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/q;->l()Lcom/twitter/sdk/android/core/k;

    move-result-object v2

    invoke-static {}, Lcom/twitter/sdk/android/core/identity/h$a;->a()Lcom/twitter/sdk/android/core/identity/b;

    move-result-object v3

    .line 3
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/identity/h;-><init>(Lcom/twitter/sdk/android/core/q;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/identity/b;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/q;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/identity/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/q;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Lcom/twitter/sdk/android/core/k<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;",
            "Lcom/twitter/sdk/android/core/identity/b;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/h;->a:Lcom/twitter/sdk/android/core/q;

    .line 6
    iput-object p4, p0, Lcom/twitter/sdk/android/core/identity/h;->b:Lcom/twitter/sdk/android/core/identity/b;

    .line 7
    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/h;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 8
    iput-object p3, p0, Lcom/twitter/sdk/android/core/identity/h;->c:Lcom/twitter/sdk/android/core/k;

    return-void
.end method

.method private b(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/h$b;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Using OAuth"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/h;->b:Lcom/twitter/sdk/android/core/identity/b;

    new-instance v1, Lcom/twitter/sdk/android/core/identity/d;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/h;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 3
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->c()I

    move-result v3

    invoke-direct {v1, v2, p2, v3}, Lcom/twitter/sdk/android/core/identity/d;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/b;I)V

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/twitter/sdk/android/core/identity/b;->a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/a;)Z

    move-result p1

    return p1
.end method

.method private c(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/h$b;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/twitter/sdk/android/core/identity/g;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Using SSO"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/h;->b:Lcom/twitter/sdk/android/core/identity/b;

    new-instance v1, Lcom/twitter/sdk/android/core/identity/g;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/h;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 4
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->c()I

    move-result v3

    invoke-direct {v1, v2, p2, v3}, Lcom/twitter/sdk/android/core/identity/g;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/b;I)V

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/twitter/sdk/android/core/identity/b;->a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/a;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private f(Landroid/app/Activity;Lcom/twitter/sdk/android/core/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/core/identity/h$b;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/h;->c:Lcom/twitter/sdk/android/core/k;

    invoke-direct {v0, v1, p2}, Lcom/twitter/sdk/android/core/identity/h$b;-><init>(Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/b;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/core/identity/h;->c(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/h$b;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/core/identity/h;->b(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/h$b;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/twitter/sdk/android/core/TwitterAuthException;

    const-string p2, "Authorize failed."

    invoke-direct {p1, p2}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/identity/h$b;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "Twitter"

    const-string v1, "Cannot authorize, activity is finishing."

    .line 3
    invoke-interface {p1, v0, v1, p2}, Lcom/twitter/sdk/android/core/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/identity/h;->f(Landroid/app/Activity;Lcom/twitter/sdk/android/core/b;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Activity must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/h;->b:Lcom/twitter/sdk/android/core/identity/b;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/b;->b()V

    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/h;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->c()I

    move-result v0

    return v0
.end method

.method public g(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Twitter"

    invoke-interface {v0, v2, v1}, Lcom/twitter/sdk/android/core/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/h;->b:Lcom/twitter/sdk/android/core/identity/b;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "Authorize not in progress"

    invoke-interface {p1, v2, p3, p2}, Lcom/twitter/sdk/android/core/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/h;->b:Lcom/twitter/sdk/android/core/identity/b;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/b;->c()Lcom/twitter/sdk/android/core/identity/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/a;->d(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/twitter/sdk/android/core/identity/h;->b:Lcom/twitter/sdk/android/core/identity/b;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/identity/b;->b()V

    :cond_1
    :goto_0
    return-void
.end method
