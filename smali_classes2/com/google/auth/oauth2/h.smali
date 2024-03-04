.class public final Lcom/google/auth/oauth2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/h$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/auth/oauth2/h$a;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method a()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/auth/oauth2/h;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/auth/oauth2/h$a;

    .line 3
    new-instance v3, Lg5/b;

    invoke-direct {v3}, Lg5/b;-><init>()V

    .line 4
    sget-object v4, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-virtual {v3, v4}, Lg5/b;->h(Lg5/c;)V

    .line 5
    invoke-virtual {v2}, Lcom/google/auth/oauth2/h$a;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "availableResource"

    invoke-virtual {v3, v5, v4}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v2}, Lcom/google/auth/oauth2/h$a;->b()Ljava/util/List;

    move-result-object v4

    const-string v5, "availablePermissions"

    invoke-virtual {v3, v5, v4}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v2}, Lcom/google/auth/oauth2/h$a;->a()Lcom/google/auth/oauth2/h$a$a;

    .line 8
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Lg5/b;

    invoke-direct {v1}, Lg5/b;-><init>()V

    .line 10
    sget-object v2, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-virtual {v1, v2}, Lg5/b;->h(Lg5/c;)V

    const-string v3, "accessBoundaryRules"

    .line 11
    invoke-virtual {v1, v3, v0}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lg5/b;

    invoke-direct {v0}, Lg5/b;-><init>()V

    .line 13
    invoke-virtual {v0, v2}, Lg5/b;->h(Lg5/c;)V

    const-string v2, "accessBoundary"

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v0}, Lg5/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
