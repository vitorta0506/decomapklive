.class public Lcom/google/auth/oauth2/r$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/auth/oauth2/r$b;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/auth/oauth2/r$b;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/auth/oauth2/r$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/auth/oauth2/r$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/auth/oauth2/r;
    .locals 11

    new-instance v10, Lcom/google/auth/oauth2/r;

    iget-object v1, p0, Lcom/google/auth/oauth2/r$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/auth/oauth2/r$b;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/auth/oauth2/r$b;->f:Ljava/util/List;

    iget-object v5, p0, Lcom/google/auth/oauth2/r$b;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/auth/oauth2/r$b;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/auth/oauth2/r$b;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/auth/oauth2/r$b;->g:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/auth/oauth2/r;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/auth/oauth2/a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/auth/oauth2/r$a;)V

    return-object v10
.end method

.method public b(Ljava/lang/String;)Lcom/google/auth/oauth2/r$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/r$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/auth/oauth2/r$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/r$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/List;)Lcom/google/auth/oauth2/r$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auth/oauth2/r$b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/auth/oauth2/r$b;->f:Ljava/util/List;

    return-object p0
.end method
