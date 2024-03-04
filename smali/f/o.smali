.class public Lf/o;
.super Lf/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/g<",
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

    invoke-direct {p0, p1}, Lf/g;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method bridge synthetic i(Ln/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf/o;->p(Ln/a;F)Lcom/airbnb/lottie/model/DocumentData;

    move-result-object p1

    return-object p1
.end method

.method p(Ln/a;F)Lcom/airbnb/lottie/model/DocumentData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/a<",
            "Lcom/airbnb/lottie/model/DocumentData;",
            ">;F)",
            "Lcom/airbnb/lottie/model/DocumentData;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    .line 1
    iget-object p2, p1, Ln/a;->c:Ljava/lang/Object;

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p2, Lcom/airbnb/lottie/model/DocumentData;

    return-object p2

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p1, Ln/a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/model/DocumentData;

    return-object p1
.end method
