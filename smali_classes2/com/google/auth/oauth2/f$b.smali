.class Lcom/google/auth/oauth2/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/auth/oauth2/g;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/auth/oauth2/d;


# direct methods
.method private constructor <init>(Lcom/google/auth/oauth2/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/auth/oauth2/f$b;->a:Lcom/google/auth/oauth2/g;

    .line 4
    iput-object p2, p0, Lcom/google/auth/oauth2/f$b;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/auth/oauth2/f$b;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/google/auth/oauth2/f$b;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/auth/oauth2/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/auth/oauth2/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/auth/oauth2/f$b;-><init>(Lcom/google/auth/oauth2/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()Lcom/google/auth/oauth2/f;
    .locals 10

    new-instance v9, Lcom/google/auth/oauth2/f;

    iget-object v1, p0, Lcom/google/auth/oauth2/f$b;->a:Lcom/google/auth/oauth2/g;

    iget-object v2, p0, Lcom/google/auth/oauth2/f$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/auth/oauth2/f$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/auth/oauth2/f$b;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/auth/oauth2/f$b;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/auth/oauth2/f$b;->f:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/auth/oauth2/f$b;->g:Lcom/google/auth/oauth2/d;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/auth/oauth2/f;-><init>(Lcom/google/auth/oauth2/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/google/auth/oauth2/d;Lcom/google/auth/oauth2/f$a;)V

    return-object v9
.end method

.method b(Ljava/util/Map;)Lcom/google/auth/oauth2/f$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auth/oauth2/f$b;"
        }
    .end annotation

    const-string v0, "date"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "x-amz-date"

    if-eqz v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "One of {date, x-amz-date} can be specified, not both."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/auth/oauth2/d;->a(Ljava/lang/String;)Lcom/google/auth/oauth2/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/f$b;->g:Lcom/google/auth/oauth2/d;

    .line 5
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/auth/oauth2/d;->b(Ljava/lang/String;)Lcom/google/auth/oauth2/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/f$b;->g:Lcom/google/auth/oauth2/d;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :cond_3
    iput-object p1, p0, Lcom/google/auth/oauth2/f$b;->f:Ljava/util/Map;

    return-object p0

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provided date header value is invalid."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
