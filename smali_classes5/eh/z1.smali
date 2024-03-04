.class final Leh/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Leh/z1;->a:Ljava/lang/Object;

    return-void
.end method

.method static e(Ljava/lang/Object;)Leh/z1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Leh/z1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "instance"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Leh/z1;

    invoke-direct {v0, p0}, Leh/z1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Leh/z1;->a:Ljava/lang/Object;

    return-object v0
.end method

.method b()I
    .locals 1

    iget v0, p0, Leh/z1;->b:I

    return v0
.end method

.method c()V
    .locals 3

    .line 1
    iget v0, p0, Leh/z1;->b:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "reference reached 0"

    invoke-static {v0, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget v0, p0, Leh/z1;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Leh/z1;->b:I

    return-void
.end method

.method d()V
    .locals 1

    iget v0, p0, Leh/z1;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Leh/z1;->b:I

    return-void
.end method
