.class public Lj/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Li/b;

.field private final c:Li/b;

.field private final d:Li/l;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Li/b;Li/b;Li/l;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj/g;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lj/g;->b:Li/b;

    .line 4
    iput-object p3, p0, Lj/g;->c:Li/b;

    .line 5
    iput-object p4, p0, Lj/g;->d:Li/l;

    .line 6
    iput-boolean p5, p0, Lj/g;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;)Le/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Le/p;

    invoke-direct {v0, p1, p2, p0}, Le/p;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lj/g;)V

    return-object v0
.end method

.method public b()Li/b;
    .locals 1

    iget-object v0, p0, Lj/g;->b:Li/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Li/b;
    .locals 1

    iget-object v0, p0, Lj/g;->c:Li/b;

    return-object v0
.end method

.method public e()Li/l;
    .locals 1

    iget-object v0, p0, Lj/g;->d:Li/l;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lj/g;->e:Z

    return v0
.end method
