.class public Lj/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Li/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Li/f;

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Li/m;Li/f;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Li/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Li/f;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj/b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lj/b;->b:Li/m;

    .line 4
    iput-object p3, p0, Lj/b;->c:Li/f;

    .line 5
    iput-boolean p4, p0, Lj/b;->d:Z

    .line 6
    iput-boolean p5, p0, Lj/b;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;)Le/c;
    .locals 1

    new-instance v0, Le/f;

    invoke-direct {v0, p1, p2, p0}, Le/f;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lj/b;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Li/m;
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

    iget-object v0, p0, Lj/b;->b:Li/m;

    return-object v0
.end method

.method public d()Li/f;
    .locals 1

    iget-object v0, p0, Lj/b;->c:Li/f;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lj/b;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lj/b;->d:Z

    return v0
.end method
