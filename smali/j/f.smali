.class public Lj/f;
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

.field private final c:Li/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Li/b;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Li/m;Li/m;Li/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Li/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Li/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Li/b;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj/f;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lj/f;->b:Li/m;

    .line 4
    iput-object p3, p0, Lj/f;->c:Li/m;

    .line 5
    iput-object p4, p0, Lj/f;->d:Li/b;

    .line 6
    iput-boolean p5, p0, Lj/f;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;)Le/c;
    .locals 1

    new-instance v0, Le/o;

    invoke-direct {v0, p1, p2, p0}, Le/o;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lj/f;)V

    return-object v0
.end method

.method public b()Li/b;
    .locals 1

    iget-object v0, p0, Lj/f;->d:Li/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Li/m;
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

    iget-object v0, p0, Lj/f;->b:Li/m;

    return-object v0
.end method

.method public e()Li/m;
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

    iget-object v0, p0, Lj/f;->c:Li/m;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lj/f;->e:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangleShape{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj/f;->b:Li/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj/f;->c:Li/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
