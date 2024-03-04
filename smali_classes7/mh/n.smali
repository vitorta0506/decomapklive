.class public abstract Lmh/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmh/n$b;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/util/List;)Lmh/n;
    .locals 0

    invoke-static {p0}, Lmh/n;->c(Ljava/util/List;)Lmh/n;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lmh/n$b;
    .locals 3

    new-instance v0, Lmh/n$b;

    invoke-static {}, Lmh/n$b;->a()Lmh/n;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmh/n$b;-><init>(Lmh/n;Lmh/n$a;)V

    return-object v0
.end method

.method private static c(Ljava/util/List;)Lmh/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lmh/n;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid size"

    invoke-static {v0, v1}, Llh/b;->c(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Lmh/e;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lmh/e;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
