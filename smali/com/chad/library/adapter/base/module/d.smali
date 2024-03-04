.class public final synthetic Lcom/chad/library/adapter/base/module/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field public final synthetic b:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/d;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-object p2, p0, Lcom/chad/library/adapter/base/module/d;->b:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/d;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/chad/library/adapter/base/module/d;->b:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    invoke-static {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V

    return-void
.end method
