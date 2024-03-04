.class final Lcom/google/android/gms/internal/recaptcha/x3;
.super Lcom/google/android/gms/internal/recaptcha/i4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/recaptcha/gh;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/i4<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Lcom/google/android/gms/internal/recaptcha/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/gms/internal/recaptcha/z3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/z3<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/gms/internal/recaptcha/zzkj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "Lcom/google/android/gms/internal/recaptcha/b4<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;

.field private h:Lcom/google/android/gms/internal/recaptcha/p4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/p4;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/i4;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/google/android/gms/internal/recaptcha/i4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/internal/recaptcha/i4<",
            "TT;>;"
        }
    .end annotation

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/x3;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/recaptcha/z3;)Lcom/google/android/gms/internal/recaptcha/i4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/z3<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/recaptcha/i4<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/x3;->c:Lcom/google/android/gms/internal/recaptcha/z3;

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/internal/recaptcha/gh;)Lcom/google/android/gms/internal/recaptcha/i4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/internal/recaptcha/i4<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Null schema"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/x3;->b:Lcom/google/android/gms/internal/recaptcha/gh;

    return-object p0
.end method

.method public final d(Z)Lcom/google/android/gms/internal/recaptcha/i4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/internal/recaptcha/i4<",
            "TT;>;"
        }
    .end annotation

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/x3;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final e(Landroid/net/Uri;)Lcom/google/android/gms/internal/recaptcha/i4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/i4<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Null uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/x3;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public final f(Z)Lcom/google/android/gms/internal/recaptcha/i4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/internal/recaptcha/i4<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/x3;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final g()Lcom/google/android/gms/internal/recaptcha/j4;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/j4<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/x3;->d:Lcom/google/android/gms/internal/recaptcha/zzkj;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzo()Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/x3;->d:Lcom/google/android/gms/internal/recaptcha/zzkj;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/x3;->a:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/x3;->b:Lcom/google/android/gms/internal/recaptcha/gh;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/x3;->c:Lcom/google/android/gms/internal/recaptcha/z3;

    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/google/android/gms/internal/recaptcha/x3;->h:Lcom/google/android/gms/internal/recaptcha/p4;

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/x3;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/x3;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/x3;->g:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v12, Lcom/google/android/gms/internal/recaptcha/y3;

    iget-object v5, p0, Lcom/google/android/gms/internal/recaptcha/x3;->d:Lcom/google/android/gms/internal/recaptcha/zzkj;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/x3;->f:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/x3;->g:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/recaptcha/y3;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/recaptcha/gh;Lcom/google/android/gms/internal/recaptcha/z3;Lcom/google/android/gms/internal/recaptcha/zzkj;Lcom/google/android/gms/internal/recaptcha/p4;ZZZLcom/google/android/gms/internal/recaptcha/w3;[B)V

    return-object v12

    .line 6
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/x3;->a:Landroid/net/Uri;

    if-nez v1, :cond_3

    const-string v1, " uri"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/x3;->b:Lcom/google/android/gms/internal/recaptcha/gh;

    if-nez v1, :cond_4

    const-string v1, " schema"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/x3;->c:Lcom/google/android/gms/internal/recaptcha/z3;

    if-nez v1, :cond_5

    const-string v1, " handler"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/x3;->h:Lcom/google/android/gms/internal/recaptcha/p4;

    if-nez v1, :cond_6

    const-string v1, " variantConfig"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/x3;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_7

    const-string v1, " useGeneratedExtensionRegistry"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/x3;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_8

    const-string v1, " updateSequencingBugFix"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/x3;->g:Ljava/lang/Boolean;

    if-nez v1, :cond_9

    const-string v1, " enableTracing"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1c

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Missing required properties:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final h(Lcom/google/android/gms/internal/recaptcha/p4;)Lcom/google/android/gms/internal/recaptcha/i4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/p4;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/i4<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/x3;->h:Lcom/google/android/gms/internal/recaptcha/p4;

    return-object p0
.end method
