.class public final Lcom/google/api/client/util/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/base/i;


# direct methods
.method private constructor <init>(Lcom/google/common/base/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/api/client/util/o;->a:Lcom/google/common/base/i;

    return-void
.end method

.method public static b(C)Lcom/google/api/client/util/o;
    .locals 1

    new-instance v0, Lcom/google/api/client/util/o;

    invoke-static {p0}, Lcom/google/common/base/i;->g(C)Lcom/google/common/base/i;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/api/client/util/o;-><init>(Lcom/google/common/base/i;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/client/util/o;->a:Lcom/google/common/base/i;

    invoke-virtual {v0, p1}, Lcom/google/common/base/i;->d(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
