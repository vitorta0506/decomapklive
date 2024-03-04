.class final Leh/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/Object;
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

    const-string v0, "config"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Leh/w0;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Leh/w0;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Leh/w0;->b:Ljava/lang/Object;

    const-string v0, "errorDetail"

    .line 6
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/w0;->a:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/Object;)Leh/w0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Leh/w0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Leh/w0;

    invoke-direct {v0, p0}, Leh/w0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static b(Ljava/lang/String;)Leh/w0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Leh/w0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Leh/w0;

    invoke-direct {v0, p0}, Leh/w0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
