.class public Lcom/airbnb/lottie/model/content/PolystarShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

.field private final c:Li/b;

.field private final d:Li/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Li/b;

.field private final f:Li/b;

.field private final g:Li/b;

.field private final h:Li/b;

.field private final i:Li/b;

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Li/b;Li/m;Li/b;Li/b;Li/b;Li/b;Li/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/content/PolystarShape$Type;",
            "Li/b;",
            "Li/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Li/b;",
            "Li/b;",
            "Li/b;",
            "Li/b;",
            "Li/b;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->b:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 4
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->c:Li/b;

    .line 5
    iput-object p4, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->d:Li/m;

    .line 6
    iput-object p5, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->e:Li/b;

    .line 7
    iput-object p6, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->f:Li/b;

    .line 8
    iput-object p7, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->g:Li/b;

    .line 9
    iput-object p8, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->h:Li/b;

    .line 10
    iput-object p9, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->i:Li/b;

    .line 11
    iput-boolean p10, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;)Le/c;
    .locals 1

    new-instance v0, Le/n;

    invoke-direct {v0, p1, p2, p0}, Le/n;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/PolystarShape;)V

    return-object v0
.end method

.method public b()Li/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->f:Li/b;

    return-object v0
.end method

.method public c()Li/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->h:Li/b;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Li/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->g:Li/b;

    return-object v0
.end method

.method public f()Li/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->i:Li/b;

    return-object v0
.end method

.method public g()Li/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->c:Li/b;

    return-object v0
.end method

.method public h()Li/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->d:Li/m;

    return-object v0
.end method

.method public i()Li/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->e:Li/b;

    return-object v0
.end method

.method public j()Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->b:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->j:Z

    return v0
.end method
