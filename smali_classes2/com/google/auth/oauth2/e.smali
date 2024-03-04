.class Lcom/google/auth/oauth2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/e$b;
    }
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
.method private constructor <init>(Lcom/google/auth/oauth2/g;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auth/oauth2/g;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/auth/oauth2/e;->a:Lcom/google/auth/oauth2/g;

    .line 4
    iput-object p2, p0, Lcom/google/auth/oauth2/e;->b:Ljava/util/Map;

    .line 5
    iput-object p3, p0, Lcom/google/auth/oauth2/e;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/google/auth/oauth2/e;->d:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/google/auth/oauth2/e;->e:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/google/auth/oauth2/e;->f:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/google/auth/oauth2/e;->g:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/google/auth/oauth2/e;->h:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/google/auth/oauth2/e;->i:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/auth/oauth2/g;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/auth/oauth2/e$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/google/auth/oauth2/e;-><init>(Lcom/google/auth/oauth2/g;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/auth/oauth2/e;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/e;->h:Ljava/lang/String;

    return-object v0
.end method
