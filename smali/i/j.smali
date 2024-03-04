.class public Li/j;
.super Li/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/n<",
        "Lcom/airbnb/lottie/model/DocumentData;",
        "Lcom/airbnb/lottie/model/DocumentData;",
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
            "Lcom/airbnb/lottie/model/DocumentData;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Li/n;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lf/a;
    .locals 1

    invoke-virtual {p0}, Li/j;->d()Lf/o;

    move-result-object v0

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

.method public d()Lf/o;
    .locals 2

    new-instance v0, Lf/o;

    iget-object v1, p0, Li/n;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lf/o;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Li/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
