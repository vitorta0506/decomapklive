.class public Lad/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lad/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Lad/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lad/h$b;->a:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lad/h$b;->b:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lad/h$b;->c:Z

    const-string v0, "PRETTY_LOGGER"

    .line 6
    iput-object v0, p0, Lad/h$b;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lad/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lad/h$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lad/h;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lad/h$b;->d:Lad/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lad/e;

    invoke-direct {v0}, Lad/e;-><init>()V

    iput-object v0, p0, Lad/h$b;->d:Lad/d;

    .line 3
    :cond_0
    new-instance v0, Lad/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lad/h;-><init>(Lad/h$b;Lad/h$a;)V

    return-object v0
.end method

.method public b(I)Lad/h$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lad/h$b;->a:I

    return-object p0
.end method

.method public c(I)Lad/h$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lad/h$b;->b:I

    return-object p0
.end method

.method public d(Z)Lad/h$b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lad/h$b;->c:Z

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lad/h$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lad/h$b;->e:Ljava/lang/String;

    return-object p0
.end method
