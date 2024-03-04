.class public final synthetic Lcom/chad/library/adapter/base/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic b:Lcom/chad/library/adapter/base/BaseBinderAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/a;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p2, p0, Lcom/chad/library/adapter/base/a;->b:Lcom/chad/library/adapter/base/BaseBinderAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/chad/library/adapter/base/a;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v1, p0, Lcom/chad/library/adapter/base/a;->b:Lcom/chad/library/adapter/base/BaseBinderAdapter;

    invoke-static {v0, v1, p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->h(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Landroid/view/View;)V

    return-void
.end method
