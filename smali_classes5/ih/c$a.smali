.class final Lih/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lih/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lih/b;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lih/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private b:I


# virtual methods
.method a()Z
    .locals 4

    .line 1
    iget v0, p0, Lih/c$a;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "refCount has to be > 0"

    invoke-static {v0, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget v0, p0, Lih/c$a;->b:I

    sub-int/2addr v0, v2

    iput v0, p0, Lih/c$a;->b:I

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
