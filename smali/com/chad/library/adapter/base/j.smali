.class public final synthetic Lcom/chad/library/adapter/base/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic b:Lcom/chad/library/adapter/base/BaseQuickAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/j;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p2, p0, Lcom/chad/library/adapter/base/j;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/chad/library/adapter/base/j;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v1, p0, Lcom/chad/library/adapter/base/j;->b:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-static {v0, v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->d(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;)V

    return-void
.end method
