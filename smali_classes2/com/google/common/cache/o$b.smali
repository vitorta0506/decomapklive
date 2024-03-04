.class Lcom/google/common/cache/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/w<",
        "Lcom/google/common/cache/n;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/cache/n;
    .locals 2

    new-instance v0, Lcom/google/common/cache/o$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/cache/o$c;-><init>(Lcom/google/common/cache/o$a;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/o$b;->a()Lcom/google/common/cache/n;

    move-result-object v0

    return-object v0
.end method
