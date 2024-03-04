.class Ld7/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Landroidx/lifecycle/ViewModelStore;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/e$a;->a:Landroidx/lifecycle/ViewModelStore;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    iput-object v0, p0, Ld7/e$a;->a:Landroidx/lifecycle/ViewModelStore;

    .line 3
    :cond_0
    iget-object v0, p0, Ld7/e$a;->a:Landroidx/lifecycle/ViewModelStore;

    return-object v0
.end method
