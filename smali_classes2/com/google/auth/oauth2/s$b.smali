.class public Lcom/google/auth/oauth2/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/Long;

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


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/auth/oauth2/s$b;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/auth/oauth2/s$b;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/auth/oauth2/s$b;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/auth/oauth2/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/auth/oauth2/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/auth/oauth2/s;
    .locals 9

    new-instance v8, Lcom/google/auth/oauth2/s;

    iget-object v1, p0, Lcom/google/auth/oauth2/s$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/auth/oauth2/s$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/auth/oauth2/s$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/auth/oauth2/s$b;->d:Ljava/lang/Long;

    iget-object v5, p0, Lcom/google/auth/oauth2/s$b;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/auth/oauth2/s$b;->f:Ljava/util/List;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/auth/oauth2/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/google/auth/oauth2/s$a;)V

    return-object v8
.end method

.method public b(J)Lcom/google/auth/oauth2/s$b;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/s$b;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/auth/oauth2/s$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/s$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/List;)Lcom/google/auth/oauth2/s$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auth/oauth2/s$b;"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/auth/oauth2/s$b;->f:Ljava/util/List;

    :cond_0
    return-object p0
.end method
