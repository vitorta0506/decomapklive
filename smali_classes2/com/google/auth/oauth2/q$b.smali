.class public Lcom/google/auth/oauth2/q$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/auth/oauth2/r;

.field private final c:Lcom/google/api/client/http/n;

.field private d:Lcom/google/api/client/http/j;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/auth/oauth2/r;Lcom/google/api/client/http/n;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/auth/oauth2/q$b;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/auth/oauth2/q$b;->b:Lcom/google/auth/oauth2/r;

    .line 5
    iput-object p3, p0, Lcom/google/auth/oauth2/q$b;->c:Lcom/google/api/client/http/n;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/auth/oauth2/r;Lcom/google/api/client/http/n;Lcom/google/auth/oauth2/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/auth/oauth2/q$b;-><init>(Ljava/lang/String;Lcom/google/auth/oauth2/r;Lcom/google/api/client/http/n;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/auth/oauth2/q;
    .locals 8

    new-instance v7, Lcom/google/auth/oauth2/q;

    iget-object v1, p0, Lcom/google/auth/oauth2/q$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/auth/oauth2/q$b;->b:Lcom/google/auth/oauth2/r;

    iget-object v3, p0, Lcom/google/auth/oauth2/q$b;->c:Lcom/google/api/client/http/n;

    iget-object v4, p0, Lcom/google/auth/oauth2/q$b;->d:Lcom/google/api/client/http/j;

    iget-object v5, p0, Lcom/google/auth/oauth2/q$b;->e:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/auth/oauth2/q;-><init>(Ljava/lang/String;Lcom/google/auth/oauth2/r;Lcom/google/api/client/http/n;Lcom/google/api/client/http/j;Ljava/lang/String;Lcom/google/auth/oauth2/q$a;)V

    return-object v7
.end method

.method public b(Ljava/lang/String;)Lcom/google/auth/oauth2/q$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/q$b;->e:Ljava/lang/String;

    return-object p0
.end method
