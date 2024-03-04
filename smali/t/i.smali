.class public Lt/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/p;


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lt/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lt/i;->a:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Lt/c;

    invoke-direct {v0}, Lt/c;-><init>()V

    .line 4
    iget-object v1, p0, Lt/i;->a:Landroid/util/SparseArray;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lt/i;->a:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lt/i;->a:Landroid/util/SparseArray;

    new-instance v1, Lt/x;

    invoke-direct {v1}, Lt/x;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lt/i;->a:Landroid/util/SparseArray;

    new-instance v1, Lt/d0;

    invoke-direct {v1}, Lt/d0;-><init>()V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(I)Lt/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lt/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt/o;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lt/i;->a:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt/o;

    :cond_0
    return-object p1
.end method
