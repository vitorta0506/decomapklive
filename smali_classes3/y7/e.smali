.class public Ly7/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ly7/e;->a:I

    .line 3
    iput-object p1, p0, Ly7/e;->b:Ljava/lang/String;

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Ly7/e;->f(Ljava/lang/String;I)V

    return-void
.end method

.method public static f(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Ly7/e;

    invoke-direct {v0, p0}, Ly7/e;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 2
    invoke-virtual {v0, p0}, Ly7/e;->g(Z)V

    .line 3
    invoke-virtual {v0, p1}, Ly7/e;->i(I)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly7/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ly7/e;->a:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Ly7/e;->d:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Ly7/e;->c:Z

    return v0
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Ly7/e;->d:Z

    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Ly7/e;->c:Z

    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Ly7/e;->a:I

    return-void
.end method
