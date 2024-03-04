.class Lcom/guochao/faceshow/views/c$e;
.super Lmb/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/views/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic n:Lcom/guochao/faceshow/views/c;


# direct methods
.method protected constructor <init>(Lcom/guochao/faceshow/views/c;Landroid/content/Context;Ljava/util/ArrayList;III)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/views/c$e;->n:Lcom/guochao/faceshow/views/c;

    const v2, 0x7f0d0221

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2
    invoke-direct/range {v0 .. v6}, Lmb/b;-><init>(Landroid/content/Context;IIIII)V

    .line 3
    iput-object p3, p0, Lcom/guochao/faceshow/views/c$e;->m:Ljava/util/ArrayList;

    const p1, 0x7f0a0b40

    .line 4
    invoke-virtual {p0, p1}, Lmb/b;->i(I)V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lmb/b;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/c$e;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected e(I)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/views/c$e;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
