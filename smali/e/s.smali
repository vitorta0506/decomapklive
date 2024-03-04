.class public Le/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c;
.implements Lf/a$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

.field private final e:Lf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/ShapeTrimPath;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/s;->c:Ljava/util/List;

    .line 3
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/s;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->g()Z

    move-result v0

    iput-boolean v0, p0, Le/s;->b:Z

    .line 5
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->f()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v0

    iput-object v0, p0, Le/s;->d:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 6
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->e()Li/b;

    move-result-object v0

    invoke-virtual {v0}, Li/b;->a()Lf/a;

    move-result-object v0

    iput-object v0, p0, Le/s;->e:Lf/a;

    .line 7
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->b()Li/b;

    move-result-object v1

    invoke-virtual {v1}, Li/b;->a()Lf/a;

    move-result-object v1

    iput-object v1, p0, Le/s;->f:Lf/a;

    .line 8
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->d()Li/b;

    move-result-object p2

    invoke-virtual {p2}, Li/b;->a()Lf/a;

    move-result-object p2

    iput-object p2, p0, Le/s;->g:Lf/a;

    .line 9
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Lf/a;)V

    .line 10
    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/model/layer/a;->i(Lf/a;)V

    .line 11
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lf/a;)V

    .line 12
    invoke-virtual {v0, p0}, Lf/a;->a(Lf/a$b;)V

    .line 13
    invoke-virtual {v1, p0}, Lf/a;->a(Lf/a$b;)V

    .line 14
    invoke-virtual {p2, p0}, Lf/a;->a(Lf/a$b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Le/s;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Le/s;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a$b;

    invoke-interface {v1}, Lf/a$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/c;",
            ">;",
            "Ljava/util/List<",
            "Le/c;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method c(Lf/a$b;)V
    .locals 1

    iget-object v0, p0, Le/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()Lf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/s;->f:Lf/a;

    return-object v0
.end method

.method public f()Lf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/s;->g:Lf/a;

    return-object v0
.end method

.method public h()Lf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/s;->e:Lf/a;

    return-object v0
.end method

.method i()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 1

    iget-object v0, p0, Le/s;->d:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Le/s;->b:Z

    return v0
.end method
