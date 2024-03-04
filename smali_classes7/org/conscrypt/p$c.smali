.class final Lorg/conscrypt/p$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Z

.field final c:Z

.field final d:Z

.field final e:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZZZLjava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/conscrypt/p$c;->a:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lorg/conscrypt/p$c;->b:Z

    .line 4
    iput-boolean p3, p0, Lorg/conscrypt/p$c;->c:Z

    .line 5
    iput-boolean p4, p0, Lorg/conscrypt/p$c;->d:Z

    .line 6
    iput-object p5, p0, Lorg/conscrypt/p$c;->e:Ljava/lang/Throwable;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;ZZLjava/lang/Throwable;)Lorg/conscrypt/p$c;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/conscrypt/p$c;->d(Ljava/lang/String;ZZLjava/lang/Throwable;)Lorg/conscrypt/p$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Ljava/lang/String;ZZ)Lorg/conscrypt/p$c;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/conscrypt/p$c;->e(Ljava/lang/String;ZZ)Lorg/conscrypt/p$c;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;ZZLjava/lang/Throwable;)Lorg/conscrypt/p$c;
    .locals 7

    new-instance v6, Lorg/conscrypt/p$c;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/p$c;-><init>(Ljava/lang/String;ZZZLjava/lang/Throwable;)V

    return-object v6
.end method

.method private static e(Ljava/lang/String;ZZ)Lorg/conscrypt/p$c;
    .locals 7

    new-instance v6, Lorg/conscrypt/p$c;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/p$c;-><init>(Ljava/lang/String;ZZZLjava/lang/Throwable;)V

    return-object v6
.end method


# virtual methods
.method c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/conscrypt/p$c;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/conscrypt/p$c;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/conscrypt/p$c;->d:Z

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lorg/conscrypt/p$c;->e:Ljava/lang/Throwable;

    const-string v3, "Unable to load the library {0} (using helper classloader={1})"

    .line 4
    invoke-static {v3, v0, v1, v2}, Lorg/conscrypt/p;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/p$c;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/conscrypt/p$c;->d:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Successfully loaded library {0}  (using helper classloader={1})"

    .line 7
    invoke-static {v2, v0, v1}, Lorg/conscrypt/p;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
