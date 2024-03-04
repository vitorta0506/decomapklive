.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/g<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$d;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/guochao/faceshow/aaspring/beans/RecommendUser;

.field d:I

.field e:Z


# direct methods
.method public constructor <init>(ILcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$d;Lcom/guochao/faceshow/aaspring/beans/RecommendUser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;->a:I

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;->b:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;->c:Lcom/guochao/faceshow/aaspring/beans/RecommendUser;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual/range {p0 .. p5}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;->e(Ljava/io/File;Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Ls0/k;Z)Z
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/GlideException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Ls0/k<",
            "Ljava/io/File;",
            ">;Z)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;->c()V

    const/4 p1, 0x0

    return p1
.end method

.method c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;->d:I

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;->a:I

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$d;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;->d()V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;->c:Lcom/guochao/faceshow/aaspring/beans/RecommendUser;

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$d;->m(Lcom/guochao/faceshow/aaspring/beans/RecommendUser;)V

    :cond_1
    return-void
.end method

.method d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;->e:Z

    return-void
.end method

.method public e(Ljava/io/File;Ljava/lang/Object;Ls0/k;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            "Ls0/k<",
            "Ljava/io/File;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$c;->c()V

    const/4 p1, 0x0

    return p1
.end method
