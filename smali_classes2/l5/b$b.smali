.class final Ll5/b$b;
.super Ll5/l$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Boolean;

.field private d:Lcom/google/auth/oauth2/GoogleCredentials;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ll5/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ll5/l;
    .locals 7

    .line 1
    iget-object v1, p0, Ll5/b$b;->a:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v2, p0, Ll5/b$b;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v0, p0, Ll5/b$b;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v6, Ll5/b;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Ll5/b$b;->d:Lcom/google/auth/oauth2/GoogleCredentials;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ll5/b;-><init>(Ljava/util/List;Ljava/util/List;ZLcom/google/auth/oauth2/GoogleCredentials;Ll5/b$a;)V

    return-object v6

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-object v1, p0, Ll5/b$b;->a:Ljava/util/List;

    if-nez v1, :cond_2

    const-string v1, " scopesToApply"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_2
    iget-object v1, p0, Ll5/b$b;->b:Ljava/util/List;

    if-nez v1, :cond_3

    const-string v1, " jwtEnabledScopes"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_3
    iget-object v1, p0, Ll5/b$b;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    const-string v1, " useJwtAccessWithScope"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll5/b$b;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"jwtEnabledScopes\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll5/b$b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"scopesToApply\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ll5/b$b;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"useJwtAccessWithScope\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Ljava/util/List;)Ll5/l$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ll5/l$a;"
        }
    .end annotation

    const-string v0, "Null jwtEnabledScopes"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ll5/b$b;->b:Ljava/util/List;

    return-object p0
.end method

.method public g(Ljava/util/List;)Ll5/l$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ll5/l$a;"
        }
    .end annotation

    const-string v0, "Null scopesToApply"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ll5/b$b;->a:Ljava/util/List;

    return-object p0
.end method

.method public h(Z)Ll5/l$a;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Ll5/b$b;->c:Ljava/lang/Boolean;

    return-object p0
.end method
