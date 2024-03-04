.class public Lz/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/SparseArray;)Lz/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)",
            "Lz/b;"
        }
    .end annotation

    new-instance v0, Lz/a;

    invoke-direct {v0, p1}, Lz/a;-><init>(Landroid/util/SparseArray;)V

    return-object v0
.end method
