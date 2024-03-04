.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/login/fragment/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;

.field public final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/c;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/c;->c:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/c;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/c;->c:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;Landroid/view/View;)V

    return-void
.end method
