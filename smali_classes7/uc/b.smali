.class public final synthetic Luc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;

.field public final synthetic b:Lcom/linecorp/linesdk/dialog/internal/TargetUser;

.field public final synthetic c:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;Lcom/linecorp/linesdk/dialog/internal/TargetUser;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luc/b;->a:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;

    iput-object p2, p0, Luc/b;->b:Lcom/linecorp/linesdk/dialog/internal/TargetUser;

    iput-object p3, p0, Luc/b;->c:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Luc/b;->a:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;

    iget-object v1, p0, Luc/b;->b:Lcom/linecorp/linesdk/dialog/internal/TargetUser;

    iget-object v2, p0, Luc/b;->c:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;

    invoke-static {v0, v1, v2, p1}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->c(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;Lcom/linecorp/linesdk/dialog/internal/TargetUser;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;Landroid/view/View;)V

    return-void
.end method
