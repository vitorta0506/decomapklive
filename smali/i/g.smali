.class public Li/g;
.super Li/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/n<",
        "Ln/d;",
        "Ln/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln/a<",
            "Ln/d;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Li/n;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Lf/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/a<",
            "Ln/d;",
            "Ln/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lf/l;

    iget-object v1, p0, Li/n;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lf/l;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic b()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Li/n;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Z
    .locals 1

    invoke-super {p0}, Li/n;->c()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Li/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
