.class Lcom/google/auth/oauth2/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/google/auth/oauth2/g;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/auth/oauth2/e;
    .locals 12

    new-instance v11, Lcom/google/auth/oauth2/e;

    iget-object v1, p0, Lcom/google/auth/oauth2/e$b;->a:Lcom/google/auth/oauth2/g;

    iget-object v2, p0, Lcom/google/auth/oauth2/e$b;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/auth/oauth2/e$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/auth/oauth2/e$b;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/auth/oauth2/e$b;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/auth/oauth2/e$b;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/auth/oauth2/e$b;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/auth/oauth2/e$b;->h:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/auth/oauth2/e$b;->i:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/auth/oauth2/e;-><init>(Lcom/google/auth/oauth2/g;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/auth/oauth2/e$a;)V

    return-object v11
.end method

.method b(Ljava/lang/String;)Lcom/google/auth/oauth2/e$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/e$b;->i:Ljava/lang/String;

    return-object p0
.end method

.method c(Ljava/util/Map;)Lcom/google/auth/oauth2/e$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auth/oauth2/e$b;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/auth/oauth2/e$b;->b:Ljava/util/Map;

    return-object p0
.end method

.method d(Ljava/lang/String;)Lcom/google/auth/oauth2/e$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/e$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method e(Ljava/lang/String;)Lcom/google/auth/oauth2/e$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/e$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method f(Ljava/lang/String;)Lcom/google/auth/oauth2/e$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/e$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method g(Ljava/lang/String;)Lcom/google/auth/oauth2/e$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/e$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method h(Lcom/google/auth/oauth2/g;)Lcom/google/auth/oauth2/e$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/e$b;->a:Lcom/google/auth/oauth2/g;

    return-object p0
.end method

.method i(Ljava/lang/String;)Lcom/google/auth/oauth2/e$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/e$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method j(Ljava/lang/String;)Lcom/google/auth/oauth2/e$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/e$b;->e:Ljava/lang/String;

    return-object p0
.end method
