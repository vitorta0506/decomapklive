.class public Landroidx/recyclerview/widget/CompatItemTouchHelper;
.super Landroidx/recyclerview/widget/ItemTouchHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    return-void
.end method


# virtual methods
.method public getCallback()Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    return-object v0
.end method
