.class public final synthetic Lcom/chad/library/adapter/base/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic b:Lcom/chad/library/adapter/base/BaseBinderAdapter;

.field public final synthetic c:Lcom/chad/library/adapter/base/binder/BaseItemBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/d;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p2, p0, Lcom/chad/library/adapter/base/d;->b:Lcom/chad/library/adapter/base/BaseBinderAdapter;

    iput-object p3, p0, Lcom/chad/library/adapter/base/d;->c:Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/chad/library/adapter/base/d;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v1, p0, Lcom/chad/library/adapter/base/d;->b:Lcom/chad/library/adapter/base/BaseBinderAdapter;

    iget-object v2, p0, Lcom/chad/library/adapter/base/d;->c:Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    invoke-static {v0, v1, v2, p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
