.class public Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;
.super Landroidx/recyclerview/widget/CompatItemTouchHelper;
.source "SourceFile"


# instance fields
.field private a:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;

    invoke-direct {v0}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;-><init>()V

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;-><init>(Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;)V

    return-void
.end method

.method private constructor <init>(Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/CompatItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/CompatItemTouchHelper;->getCallback()Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-result-object p1

    check-cast p1, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->a:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->a:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->a(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->a:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->b(Z)V

    return-void
.end method

.method public setOnItemMoveListener(Lcg/a;)V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->a:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->setOnItemMoveListener(Lcg/a;)V

    return-void
.end method

.method public setOnItemMovementListener(Lcg/b;)V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->a:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->setOnItemMovementListener(Lcg/b;)V

    return-void
.end method

.method public setOnItemStateChangedListener(Lcg/c;)V
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelper;->a:Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/touch/DefaultItemTouchHelperCallback;->setOnItemStateChangedListener(Lcg/c;)V

    return-void
.end method
