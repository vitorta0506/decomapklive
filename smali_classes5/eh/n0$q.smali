.class final Leh/n0$q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "struct"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Leh/n0$q;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Leh/n0$q;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Leh/n0$q;->b:Ljava/lang/Object;

    const-string v0, "errorDetail"

    .line 6
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/n0$q;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Leh/n0$q;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Leh/n0$q;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/String;)Leh/n0$q;
    .locals 0

    invoke-static {p0}, Leh/n0$q;->e(Ljava/lang/String;)Leh/n0$q;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Ljava/lang/Object;)Leh/n0$q;
    .locals 0

    invoke-static {p0}, Leh/n0$q;->f(Ljava/lang/Object;)Leh/n0$q;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Leh/n0$q;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leh/n0$q;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static e(Ljava/lang/String;)Leh/n0$q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Leh/n0$q<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Leh/n0$q;

    invoke-direct {v0, p0}, Leh/n0$q;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static f(Ljava/lang/Object;)Leh/n0$q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Leh/n0$q<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Leh/n0$q;

    invoke-direct {v0, p0}, Leh/n0$q;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leh/n0$q;->a:Ljava/lang/String;

    return-object v0
.end method

.method h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Leh/n0$q;->b:Ljava/lang/Object;

    return-object v0
.end method
