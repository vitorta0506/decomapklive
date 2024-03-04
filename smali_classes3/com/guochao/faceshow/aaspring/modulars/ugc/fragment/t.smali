.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;

.field public final synthetic b:Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/t;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/t;->b:Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/t;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/t;->b:Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcAndShortVideoFragment;Lcom/guochao/faceshow/databinding/FragmentUgcAndShortVideoBinding;Landroid/view/View;)V

    return-void
.end method
