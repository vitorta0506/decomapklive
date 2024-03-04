.class public final Lvc/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvc/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lvc/h$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvc/h$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lvc/h$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvc/h$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lvc/h$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvc/h$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lvc/h$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvc/h$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lvc/h$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lvc/h$b;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lvc/h$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lvc/h$b;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lvc/h$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lvc/h$b;->g:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public h(Ljava/lang/String;)Lvc/h$b;
    .locals 0

    iput-object p1, p0, Lvc/h$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public i()Lvc/h;
    .locals 2

    new-instance v0, Lvc/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvc/h;-><init>(Lvc/h$b;Lvc/h$a;)V

    return-object v0
.end method

.method public j(Ljava/util/List;)Lvc/h$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lvc/h$b;"
        }
    .end annotation

    iput-object p1, p0, Lvc/h$b;->g:Ljava/util/List;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lvc/h$b;
    .locals 0

    iput-object p1, p0, Lvc/h$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lvc/h$b;
    .locals 0

    iput-object p1, p0, Lvc/h$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ljava/util/List;)Lvc/h$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lvc/h$b;"
        }
    .end annotation

    iput-object p1, p0, Lvc/h$b;->e:Ljava/util/List;

    return-object p0
.end method

.method public n(Ljava/util/List;)Lvc/h$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lvc/h$b;"
        }
    .end annotation

    iput-object p1, p0, Lvc/h$b;->f:Ljava/util/List;

    return-object p0
.end method

.method public o(Ljava/lang/String;)Lvc/h$b;
    .locals 0

    iput-object p1, p0, Lvc/h$b;->c:Ljava/lang/String;

    return-object p0
.end method
