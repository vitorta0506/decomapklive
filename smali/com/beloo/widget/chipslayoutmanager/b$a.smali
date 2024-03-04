.class Lcom/beloo/widget/chipslayoutmanager/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beloo/widget/chipslayoutmanager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/beloo/widget/chipslayoutmanager/b;


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/b$a;->c:Lcom/beloo/widget/chipslayoutmanager/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/b$a;->a:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/b$a;->b:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic a(Lcom/beloo/widget/chipslayoutmanager/b$a;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/b$a;->a:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic b(Lcom/beloo/widget/chipslayoutmanager/b$a;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/b$a;->b:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method c()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/b$a;->a:Landroid/util/SparseArray;

    return-object v0
.end method

.method d()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/b$a;->b:Landroid/util/SparseArray;

    return-object v0
.end method

.method e()I
    .locals 2

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/b$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/b$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
