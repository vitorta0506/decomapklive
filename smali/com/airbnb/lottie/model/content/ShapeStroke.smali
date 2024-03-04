.class public Lcom/airbnb/lottie/model/content/ShapeStroke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;,
        Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Li/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Li/a;

.field private final e:Li/d;

.field private final f:Li/b;

.field private final g:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

.field private final h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field private final i:F

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Li/b;Ljava/util/List;Li/a;Li/d;Li/b;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FZ)V
    .locals 0
    .param p2    # Li/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Li/b;",
            "Ljava/util/List<",
            "Li/b;",
            ">;",
            "Li/a;",
            "Li/d;",
            "Li/b;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;",
            "FZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->b:Li/b;

    .line 4
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->d:Li/a;

    .line 6
    iput-object p5, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->e:Li/d;

    .line 7
    iput-object p6, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->f:Li/b;

    .line 8
    iput-object p7, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->g:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 9
    iput-object p8, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 10
    iput p9, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->i:F

    .line 11
    iput-boolean p10, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;)Le/c;
    .locals 1

    new-instance v0, Le/r;

    invoke-direct {v0, p1, p2, p0}, Le/r;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/ShapeStroke;)V

    return-object v0
.end method

.method public b()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->g:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    return-object v0
.end method

.method public c()Li/a;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->d:Li/a;

    return-object v0
.end method

.method public d()Li/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->b:Li/b;

    return-object v0
.end method

.method public e()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->c:Ljava/util/List;

    return-object v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->i:F

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Li/d;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->e:Li/d;

    return-object v0
.end method

.method public j()Li/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->f:Li/b;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->j:Z

    return v0
.end method
